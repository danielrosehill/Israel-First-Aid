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

## Authorities

- **Israel**: Magen David Adom (MDA) and United Hatzalah — unified into one set of recommendations per country (MDA as authoritative default)
- **USA**: American Heart Association (AHA) and American Red Cross (ARC) — consensus first aid and CPR guidelines

## Workflow

1. Gather source material into `reference/`
2. Structure protocols as JSON in `protocols/`
3. Generate flowchart documents using Typst into `output/flowcharts/`

## Output Generation

Use **Typst** to generate flowchart decision-making documents from the structured JSON protocols. Output goes in `output/flowcharts/`.
