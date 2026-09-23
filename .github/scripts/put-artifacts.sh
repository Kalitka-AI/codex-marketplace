#!/usr/bin/env bash
# Release artifacts into the bucket the clients download from; prints each address.
# Overwrites on purpose: a rerun of finalize puts the same bytes again.
#
#   .github/scripts/put-artifacts.sh <bucket> <prefix> <public url> <file>...
set -euo pipefail

bucket=${1:?usage: put-artifacts.sh <bucket> <prefix> <public url> <file>...}
prefix=${2:?usage: put-artifacts.sh <bucket> <prefix> <public url> <file>...}
base=${3:?usage: put-artifacts.sh <bucket> <prefix> <public url> <file>...}
shift 3
[ $# -gt 0 ] || { echo "put-artifacts.sh: no files given" >&2; exit 1; }

sha_of() {
  if command -v sha256sum >/dev/null 2>&1; then sha256sum "$1" | cut -d' ' -f1
  else shasum -a 256 "$1" | cut -d' ' -f1; fi
}

for f in "$@"; do
  name=$(basename "$f")
  sha=$(sha_of "$f")
  aws s3 cp "$f" "s3://$bucket/$prefix/$name" --only-show-errors \
    --content-type application/zip --checksum-algorithm SHA256 --metadata "sha256=$sha"
  echo "${base%/}/$prefix/$name"
done
