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

### 7. Paper Size
- Standardise on **A4** (210 x 297 mm) for all output
- All margins, layout, and font sizing should be optimised for A4 printing

## V2 Approach — Decided

**Hybrid: Typst for typesetting + fletcher for diagrams.**

Typst handles page layout, headers/footers, fonts, and page breaks. The `fletcher` package (preview/fletcher:0.5.7) provides proper arrow-connected flowchart diagrams with nodes and labelled edges (YES/NO). This keeps everything in one toolchain — no external rendering pipeline needed.

Tested and confirmed working with IBM Plex Sans + IBM Plex Sans Hebrew on this system.

## Alternative Tools (Evaluated, Not Selected)

- **Mermaid**: Good for simple flowcharts but poor multi-page support and limited styling
- **Graphviz/dot**: Mature but rigid layout, no page-level control
- **LaTeX + TikZ**: Powerful but heavy toolchain, slower compilation
- **draw.io**: Manual, not programmatic
- **Python + graphviz**: Extra dependency, harder to maintain

Key criteria met by Typst + fletcher:
- Multi-page output with proper page breaks
- Colour coding (red warnings, blue decisions, green outcomes)
- Print-quality A4 PDF
- Programmatically driven from JSON protocol files (via subagents)
- Hebrew text support (IBM Plex Sans Hebrew)
- Single toolchain, fast compilation

## Version History

| Version | Date | Notes |
|---------|------|-------|
| V1 | 2026-03-15 | Initial generation. Linear layout with side-by-side YES/NO boxes. Noto Sans (batch 1) then IBM Plex Sans (batch 2+). No page numbering, no version tracking. |
| V2 | 2026-03-16 | Typst + fletcher. Proper arrows, page numbering, action highlighting, A4 standardised, metadata in footer, RTL fix. |
