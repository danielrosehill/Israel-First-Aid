# Flowchart V2 Requirements

Feedback on V1 flowcharts and requirements for the next iteration.

## V1 Archive

Sample V1 PDFs saved in `output/pdf/v1-archive/` for version comparison.

## Feedback on V1

### 1. Missing Metadata in Footer
- Each protocol needs a **unique ID** (already in JSON, e.g. `IL-ADULT-CPR-001`)
- **Generation date** — when the PDF was produced
- **Version number** — e.g. `v1.0`, `v2.0`
- All three must appear in the footer of every page

### 2. Page Numbering and Navigation Headers
- **Page number and page count** clearly indicated: e.g. `Pg 1/3`
- **Yellow background** on the page number element in both header and footer for high visibility
- **Header must include**:
  - Age group: `ADULT` or `CHILD` (prominent, large text)
  - Subject: e.g. `CPR`, `CHOKING`, `BURNS`
  - Combined format: `ADULT — CPR` or `CHILD — CHOKING`
- Purpose: visual landmarks for quick identification when scrambling through pages under stress

### 3. Page Break Control
- V1 sometimes breaks pages **mid-section** (e.g. a step box split across pages)
- Steps, decision boxes, and their YES/NO branches must be kept together on the same page
- DO NOT list and equipment list should not be split across pages
- Use `#block(breakable: false)` or equivalent to keep logical units together

### 4. Action Word Highlighting
- **Action verbs** in step instructions should be visually emphasised (bold, colour, or uppercase)
- Examples: **CALL** 101, **APPLY** direct pressure, **CHECK** breathing, **REMOVE** from water
- Makes scanning under stress faster — the eye catches the action immediately

### 5. Decision Flowchart Arrows
- V1 uses side-by-side YES/NO boxes — functional but not a true flowchart
- V2 should use **actual arrows** with YES/NO labels indicating the path
- Diamond-shaped decision nodes (or at minimum, visually distinct decision boxes)
- Arrows connecting decisions to the next step in the flow
- Research needed: Typst packages (`fletcher`, `cetz`, `diagraph`) or alternative tools (Mermaid, Graphviz, draw.io, LaTeX TikZ) for proper medical decision flowcharts

### 6. Hebrew RTL/LTR Text Mixing
- When Hebrew text (RTL) appears inline with English (LTR), layout sometimes breaks
- Need proper bidirectional text handling
- Consider using `#set text(dir: ltr)` as document default with explicit RTL spans
- Test with mixed content like: `MDA (מד״א) — Call 101`

## Tool Exploration for V2

Not limited to Typst. Consider:
- **Typst + fletcher**: Native Typst package for diagrams with nodes/edges
- **Typst + cetz**: General drawing library (TikZ-like)
- **Mermaid**: Markdown-based flowcharts, renders to SVG/PNG
- **Graphviz/dot**: Mature graph layout engine
- **LaTeX + TikZ**: Gold standard for academic/medical flowcharts
- **draw.io / diagrams.net**: Visual editor, exports to SVG/PDF
- **Python + matplotlib/graphviz**: Programmatic generation from JSON

Key criteria:
- Must support multi-page output for long protocols
- Must handle colour coding (red warnings, blue decisions, green outcomes)
- Must produce print-quality A4 PDF
- Ideally can be driven programmatically from our JSON protocol files
- Hebrew text support is a requirement

## Version History

| Version | Date | Notes |
|---------|------|-------|
| V1 | 2026-03-15 | Initial generation. Linear layout with side-by-side YES/NO boxes. Noto Sans (batch 1) then IBM Plex Sans (batch 2+). No page numbering, no version tracking. |
| V2 | TBD | Addressing all feedback above. |
