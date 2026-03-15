---
description: Generate a Typst flowchart document from a structured JSON protocol
user_invocable: true
---

Generate a Typst flowchart decision-making document for: $ARGUMENTS

Use the flowchart-generator agent to read the JSON protocol and produce a clear, printable decision-tree flowchart document in Typst format. Output goes to `output/flowcharts/`. Update PROTOCOLS.md tracker status to `F`.

If no specific protocol is mentioned, generate flowcharts for all protocols that don't yet have corresponding output files.
