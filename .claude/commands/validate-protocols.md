---
description: Validate all protocol JSON files against the schema
user_invocable: true
---

Validate all protocol JSON files in `protocols/` against `schemas/protocol-schema.json`.

Check that:
1. All JSON files are well-formed
2. Required fields are present (id, title, country, age_group, source, import_metadata, protocol)
3. IDs follow the format `{CC}-{AGE}-{CATEGORY}-{NNN}`
4. Source metadata is complete
5. Import metadata includes dates and importer
6. Steps are numbered sequentially

Report any validation errors and suggest fixes.
