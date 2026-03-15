# First Aid Protocols — Israel & USA

A personal reference collection of first aid protocols structured as machine-readable JSON, with sources from Israeli and American first aid authorities.

## Disclaimer

**This repository is prepared for personal use only. No warranty is expressed or implied.**

The protocols, checklists, and flowcharts collected here are for personal reference and educational purposes. They are **not a substitute for professional medical training or advice**. The author makes no representations about the accuracy, completeness, or suitability of this information for any purpose. First aid guidelines change over time — always verify against the latest official sources before relying on any protocol.

**In an emergency, call your local emergency number immediately:**

| Service | Israel | USA |
|---------|--------|-----|
| Ambulance / EMS | **101** (Magen David Adom) | **911** |
| Police | 100 | 911 |
| Fire | 102 | 911 |
| United Hatzalah | 1221 | — |
| Poison Center | 04-7771900 (Rambam, 24/7) | 1-800-222-1222 |
| Home Front Command | 104 | — |

## What's Here

### Protocols (JSON)
Structured first aid protocols conforming to `schemas/protocol-schema.json`, covering 27 categories for both adults and children.

### Flowcharts (Typst + PDF)
Decision-making flowchart documents generated from the JSON protocols, designed for A4 printing and readability under stress.

### Checklists
- **Shopping lists** — What to buy for a home first aid kit (adult-only and family versions, Israel-specific with local brand names and retailers)
- **Stock check checklist** — Periodic inspection and replenishment guide (check at Pesach and Rosh Hashana)

### Reference Material
Source documents and research notes from MDA, United Hatzalah, Israeli Ministry of Health, AHA, and ARC.

## Structure

```
protocols/
├── adult/
│   ├── israel/       # Adult protocols per Israeli guidelines
│   └── usa/          # Adult protocols per US guidelines (reference only)
└── child/
    ├── israel/       # Pediatric protocols per Israeli guidelines
    └── usa/          # Pediatric protocols per US guidelines (reference only)

reference/
├── israel/           # Source documents and reference material (MDA, Hatzalah, etc.)
└── usa/              # Source documents and reference material (AHA, ARC, etc.)

schemas/
└── protocol-schema.json   # JSON Schema for all protocol files

output/
├── flowcharts/       # Generated flowchart documents (Typst source)
├── pdf/              # Compiled PDFs
└── checklists/       # Shopping lists and stock check checklists

templates/
└── flowchart-template.typ  # Typst template for flowchart generation

planning/
└── ...               # Project planning and requirements docs
```

## Protocol Format

All protocols are stored as JSON files conforming to `schemas/protocol-schema.json`. Each protocol records:

- **Unique ID** (e.g., `IL-ADULT-CPR-001`)
- **Source authority** and document reference
- **Import metadata**: date imported, who imported it, last verification date
- **Structured steps** with decision points, warnings, and do-not lists
- **Age group** (adult / child) and **country** (Israel / USA)

## Authorities

| Country | Primary Authority | Notes |
|---------|------------------|-------|
| Israel  | Magen David Adom (MDA) | Israel's national emergency medical service. MDA is the authoritative default; United Hatzalah protocols are incorporated where they add detail. |
| USA     | American Heart Association (AHA) / American Red Cross (ARC) | Consensus guidelines for first aid, CPR, and emergency cardiovascular care |

## Workflow

1. **Research** — Gather protocols from official sources into `reference/`
2. **Structure** — Convert protocols to JSON per the schema into `protocols/`
3. **Generate** — Produce flowchart decision-making documents (Typst) in `output/flowcharts/`
4. **Compile** — Generate printable PDFs in `output/pdf/`

## Protocols Change

First aid guidelines are periodically updated. Each protocol file includes the source publication date and the date it was imported. Always check `import_metadata.last_verified_date` to understand how current a protocol is.

## License & Liability

This is a personal project. The materials are provided "as is" without warranty of any kind. The author is not a medical professional and accepts no liability for any consequences arising from use of these materials. Always seek professional medical advice and training.
