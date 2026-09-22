#!/usr/bin/env bash
# Registers the artifacts, already in the bucket, with the draft release of one
# component on the site. The bytes stay where they are: the site gets the key, the
# sha256 and the size of each file, and a `.sig` as the text of the signature.
#
#   .github/scripts/register-on-site.sh <component> <prefix> <version> <file>...
#
# Needs HOST, SSH_USER, DIR and the key in ~/.ssh/site. Prints what the site answered;
# the last line, __REGISTER_DONE__, proves the remote part ran to the end.
set -euo pipefail

component=${1:?usage: register-on-site.sh <component> <prefix> <version> <file>...}
prefix=${2:?usage: register-on-site.sh <component> <prefix> <version> <file>...}
version=${3:?usage: register-on-site.sh <component> <prefix> <version> <file>...}
shift 3
[ $# -gt 0 ] || { echo "register-on-site.sh: no files given" >&2; exit 1; }

# One call for everything, `--replace` on it: a component has one draft, and a version
# left in it from an earlier release would publish together with this one under the
# older number. A signature in the same call joins the artifact it is named after.
args=(--replace --version "$version")
for f in "$@"; do
  name=$(basename "$f")
  case "$name" in
    *.sig) args+=(--signature "$name" "$(cat "$f")") ;;
    *)     args+=(--remote "$prefix/$name" "$(sha256sum "$f" | cut -d' ' -f1)" "$(wc -c < "$f" | tr -d " ")") ;;
  esac
done

# The remote part arrives on stdin, its arguments quoted by bash for bash: a signature
# spans several lines, and the login shell of the server never sees it. `compose exec`
# needs `-T` and `< /dev/null`, or it eats the rest of the script and the run stops
# while still reporting success.
{
  printf 'set -- '
  printf '%q ' "${args[@]}"
  echo
  cat <<'REMOTE'
set -euo pipefail
cd "$DIR"
docker compose exec -T backend uv run --no-sync python manage.py \
  add_release_files --component "$COMPONENT" "$@" < /dev/null
echo __REGISTER_DONE__
REMOTE
} | ssh -i ~/.ssh/site -o BatchMode=yes "$SSH_USER@$HOST" "COMPONENT='$component' DIR='$DIR' bash -s"
