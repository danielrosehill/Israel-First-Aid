# Project Objectives & Context

## Purpose

A personal, structured collection of first aid protocols — primarily Israeli, with international protocols included for comparison. This is **not medical advice**; it is a personal reference project.

## Core Principles

- **Israel-first**: Israeli sources (MDA, Hatzalah) are the primary authority. Content should be localised to the Israeli context (climate, fauna, emergency numbers, available equipment).
- **Unified per country**: Where multiple authorities exist (e.g., MDA and Hatzalah for Israel, AHA and ARC for the USA), synthesise into **one unified set of recommendations per country** — not separate conflicting protocol sets.
- **International comparison**: US protocols (AHA/ARC) are included mainly as a comparison point. A third international source (e.g., UK RCUK/St John Ambulance, or Australian ARCBS) may be added if it provides meaningful additional perspective.
- **Full provenance**: Every protocol must record its sources, import date, and verification status.

## Israeli Authorities

- **Magen David Adom (MDA)** — Israel's national EMS and blood service; primary first aid authority
- **United Hatzalah** — Volunteer rapid-response EMS; protocols generally align with MDA but may differ on certain procedures
- When MDA and Hatzalah differ, note the difference but default to MDA as the authoritative source

## Israel-Specific Considerations

Protocols should account for conditions and hazards specific to Israel:
- **Climate**: Extreme heat (Negev, Jordan Valley), desert exposure, Mediterranean humidity
- **Fauna**: Scorpion stings (especially *Leiurus quinquestriatus* — yellow/deathstalker), spider bites (*Loxosceles rufescens* — Mediterranean recluse), snakebites (*Vipera palaestinae* — Palestine viper)
- **Security**: Mass casualty scenarios, blast injuries, tourniquet use are part of civilian first aid training
- **Geography**: Remote desert hiking, Dead Sea exposure, altitude changes (Golan/Hermon)
- **Infrastructure**: Availability of MDA ambulances, Hatzalah ambucycles, terem/urgent care centres

## Phased Delivery

### Phase 1 — Typst / Printable PDFs (current)
- Structure all protocols as JSON conforming to `schemas/protocol-schema.json`
- Generate decision-flowchart documents using **Typst** for each protocol
- Output: printable PDF reference sheets with clear decision-making logic
- Location: `output/flowcharts/`

### Phase 2 — Reference App (future, separate repo)
- Build a digital reference application from the same structured JSON data
- State-machine rendering of decision trees for interactive use
- This will live in a **separate repository** — this repo remains the data/content source

## Protocol Coverage Goals

### Core (standard first aid curriculum)
1. CPR (Cardiopulmonary Resuscitation)
2. Choking (Airway Obstruction)
3. Severe Bleeding / Hemorrhage Control
4. Shock
5. Burns (thermal, chemical, electrical)
6. Electrocution
7. Allergic Reaction / Anaphylaxis
8. Fractures / Sprains
9. Seizures
10. Heart Attack / Chest Pain
11. Stroke
12. Drowning
13. Poisoning

### Environmental / Climate
14. Heatstroke / Heat Exhaustion
15. Hypothermia / Cold Exposure
16. Dehydration (desert/heat context)

### Envenomation (Israel-specific fauna)
17. Snakebite (especially Palestine viper)
18. Scorpion Stings (especially deathstalker)
19. Spider Bites (Mediterranean recluse)

### Additional Israel-relevant
20. Diabetic Emergencies (hypoglycemia/hyperglycemia)
21. Eye Injuries
22. Head / Spinal Injury
23. Recovery Position / Unconscious Casualty
24. Asthma Attack
25. Blast / Shrapnel Injuries
26. Tourniquet Application (civilian context)
27. Smoke / Tear Gas Inhalation
