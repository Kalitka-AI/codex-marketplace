---
name: generate-image
description: Generate or edit a raster image with Nano Banana (Google Gemini image model). Use ONLY when the user explicitly asks for Nano Banana, Gemini or Google image generation, or invokes this skill; for every other image request use the built-in image_gen tool.
---

# Nano Banana: generate image

Draws and edits images with Nano Banana through the `generate_image` tool.

## When to use

- The user names Nano Banana, Gemini or Google as the image model, or invokes this skill.
- Anything else about images goes to the built-in `image_gen` tool. Never switch between the two on your own: if one fails, say so and ask.

## How to call

1. If `generate_image` is not among your tools yet, find it: `tool_search` with the query `nano-banana generate_image`.
2. Call `generate_image`:
   - `prompt` — what to draw, or how to change the given images. Write it in detail, as for any image model.
   - `images` — absolute paths of local images to edit or to use as references. Omit it to draw a new picture.
   - `out_path` — absolute path for the result. Omit it for a preview.
3. One call draws one picture. For several variants make several calls.

## Where the file goes

- The tool answers with the path it saved to. The file extension follows the real format (usually JPEG), so it may differ from the one you asked for — always use the returned path.
- Without `out_path` the file lands under `$CODEX_HOME/generated_images/nano-banana/`. If the project needs the picture, pass `out_path` inside the workspace or copy the file there; never leave a project asset only under `$CODEX_HOME`.
- Do not overwrite an existing asset unless the user asked for a replacement; pick a sibling name such as `hero-v2.jpg`.
- Show the result inline with a Markdown image that points to the returned path.

## Editing

Pass the image to change in `images` and describe the change in `prompt`. To keep editing, pass the previous result. Masks are not supported; describe the region in words.

## Errors

The tool reports failures as text. If it says the model is not allowed, the user's plan has no Nano Banana — tell them, do not retry. A timeout or a server error may be retried once.
