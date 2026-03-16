# First Aid Protocols Repository

## Project Overview

Personal collection of first aid protocols from Israel (Magen David Adom) and the USA (AHA/ARC), stored as structured JSON with full provenance metadata. Protocols are divided into adult and child categories.

## Key Rules

- **All protocols must conform to `schemas/protocol-schema.json`** — validate before committing.
- **Always record import metadata** — `imported_date`, `imported_by`, `last_verified_date`, and source details. Never omit provenance.
- **Protocols go in `protocols/{age_group}/{country}/`** — file naming: `{category}.json` (e.g., `choking.json`, `cardiac-arrest.json`).
- **Source/reference material goes in `reference/{country}/`** — raw documents, PDFs, links, notes used to build the JSON protocols.
- **ID format**: `{CC}-{AGE}-{CATEGORY}-{NNN}` — e.g., `IL-ADULT-CHOKING-001`, `US-CHILD-BURNS-001`. CC = IL or US, AGE = ADULT or CHILD.
- **Emergency numbers**: Israel = 101 (MDA), USA = 911.
- **This is a personal project** — always maintain the disclaimer that this is not medical advice.


## Output Organisation

```
output/
  flowcharts/
    adult/
      typst/    ← Typst source files
      pdf/      ← compiled individual PDFs
    child/
      typst/
      pdf/
    combined/   ← combined/book PDFs (all-adult, all-child, everything)
  checklists/   ← shopping lists, stock-check checklists
```

## Authorities

- **Israel**: Magen David Adom (MDA) and United Hatzalah — unified into one set of recommendations per country (MDA as authoritative default)
- **USA**: American Heart Association (AHA) and American Red Cross (ARC) — consensus first aid and CPR guidelines

## Workflow

1. Gather source material into `reference/`
2. Structure protocols as JSON in `protocols/`
3. Generate flowchart Typst sources into `output/flowcharts/{age_group}/typst/`, compile PDFs into `output/flowcharts/{age_group}/pdf/`


## Incrementing Releases

## Output Generation

Use **Typst** to generate flowchart decision-making documents from the structured JSON protocols. Typst sources go in `output/flowcharts/{age_group}/typst/`, compiled PDFs in `output/flowcharts/{age_group}/pdf/`, and combined books in `output/flowcharts/combined/`.

## Flowchart Design Directions

All flowchart design instructions are maintained in **`STYLE_GUIDE.md`** — refer to that file for the complete, authoritative style guide. Key principles:

- Action-positive framing: flowchart boxes say what TO DO, not what not to do.
- Warnings/rationale go only on the separate Reference Notes page.
- Header uses distinct colours per segment (patient type / condition / scenario) for quick scanning.
- See `STYLE_GUIDE.md` for full details on layout, colours, icons, labels, and page structure.
