---
description: Convert reference material into a structured JSON protocol file
user_invocable: true
---

Build a structured JSON protocol from reference material for: $ARGUMENTS

Use the protocol-builder agent to read reference material from `reference/` and create a JSON protocol file conforming to `schemas/protocol-schema.json`. The file should be saved to the correct path under `protocols/`.

If no specific country or age group is mentioned, build protocols for all available reference material on the given topic.
