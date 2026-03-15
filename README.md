# First Aid Protocols — Israel & USA

A personal reference collection of first aid protocols structured as machine-readable JSON, with sources from Israeli and American first aid authorities.

## Disclaimer

**This is a personal project only.** The protocols collected here are for personal reference and educational purposes. They are not a substitute for professional medical training or advice. First aid guidelines change over time — always verify against the latest official sources before relying on any protocol. In an emergency, call your local emergency number immediately.

- **Israel**: Call **101** (Magen David Adom) or **112**
- **USA**: Call **911**

## Structure

```
protocols/
├── adults/
│   ├── israel/       # Adult protocols per Israeli guidelines
│   └── usa/          # Adult protocols per US guidelines
└── children/
    ├── israel/       # Pediatric protocols per Israeli guidelines
    └── usa/          # Pediatric protocols per US guidelines

reference/
├── israel/           # Source documents and reference material (MDA, etc.)
└── usa/              # Source documents and reference material (AHA, ARC, etc.)

schemas/
└── protocol-schema.json   # JSON Schema for all protocol files

output/
└── flowcharts/       # Generated flowchart/decision-tree documents (TIPST)
```

## Protocol Format

All protocols are stored as JSON files conforming to `schemas/protocol-schema.json`. Each protocol records:

- **Source authority** and document reference
- **Import metadata**: date imported, who imported it, last verification date
- **Structured steps** with decision points, warnings, and do-not lists
- **Age group** (adult / child) and **country** (Israel / USA)

## Authorities

| Country | Primary Authority | Notes |
|---------|------------------|-------|
| Israel  | Magen David Adom (MDA) | Israel's national emergency medical service |
| USA     | American Heart Association (AHA) / American Red Cross (ARC) | Consensus guidelines for first aid, CPR, and emergency cardiovascular care |

## Workflow

1. **Research** — Gather protocols from official sources into `reference/`
2. **Structure** — Convert protocols to JSON per the schema into `protocols/`
3. **Generate** — Use TIPST to produce flowchart decision-making documents in `output/`

## Protocols Change

First aid guidelines are periodically updated. Each protocol file includes the source publication date and the date it was imported. Always check `import_metadata.last_verified_date` to understand how current a protocol is.
