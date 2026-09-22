---
name: image-gen-codex
description: |
  AI image generation for Codex sessions. Use when the user wants to generate or create an image / picture / still. Generate with Codex's built-in image_gen tool, then register the result into the ChatCut project with push_asset.
user-invocable: true
---

# Image Gen (Codex)

Generate images with Codex's **built-in `image_gen` tool**, then register the file into the ChatCut project. Do NOT use ChatCut's `submit_image` tool unless `image_gen` is unavailable (see Fallback).

This skill is for agents that have a built-in `image_gen` tool. If you do not have one, ignore this skill and use the `image-gen` skill (`submit_image`) instead.

## Workflow

1. **Generate** with the built-in `image_gen` tool. Save the output into the current workspace directory with a short descriptive filename (e.g. `cat-on-beach.png`).
2. **Register** the file as a project asset with the ChatCut `push_asset` tool, passing the local file path. This makes the image appear in the project library and usable on the timeline.
3. **Report** the created asset name/id to the user. If the user asked to place it on the timeline, continue with the normal timeline tools.

## Aspect Ratio & Composition

- Default to matching the project composition. Read the project settings first (`read_project`) — a 16:9 project wants a 16:9 image, a 9:16 project wants 9:16.
- If the user's request implies a different framing (poster, thumbnail, avatar), ask before generating.

## Reference Images

When the user wants to edit or blend existing project assets:

1. Download the source asset bytes to a local file in the workspace first (use the asset tools to resolve a URL, or ask the user for the file).
2. Pass the local file(s) to `image_gen` as reference input.
3. Register the result with `push_asset` as usual.

If resolving asset bytes locally is not possible, fall back to `submit_image` with `referenceAssetIds` — the backend resolves project assets server-side.

## Fallback: submit_image

Use ChatCut's `submit_image` only when:

- The built-in `image_gen` tool is not available in this session (e.g. API-key auth without image access), or
- The generation needs backend-side reference resolution you cannot do locally.

`submit_image` creates a backend generation job that costs ChatCut credits and requires user confirmation; after submitting, track it with `track_progress`. Tell the user you are switching to ChatCut's image generation and why.

## Rules

- Never leave a generated image as a loose local file — always `push_asset` it into the project, otherwise the user cannot see or use it.
- Give every registered asset a short descriptive name.
- Before generating, briefly tell the user what you are about to generate.
- Do not silently regenerate on failure; report the error and ask.
