// First Aid Protocol Flowchart -- Poisoning (Child) -- Israel
// Generated from: IL-CHILD-POISONING-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "POISONING -- FIRST AID (CHILD)"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let poison-center = "04-7771900"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-01-01"
#let last-verified = "2026-03-15"

// === HEBREW HELPER ===
#let heb(content) = {
  text(font: "IBM Plex Sans Hebrew", dir: rtl)[#content]
}

// === STYLES ===
#let emergency-box(number, service) = {
  rect(
    fill: rgb("#dc2626"),
    radius: 8pt,
    width: 100%,
    inset: 12pt,
  )[
    #set text(fill: white, weight: "bold", size: 18pt)
    #align(center)[
      CALL #number (#service) -- CALL IMMEDIATELY IF IN DOUBT
    ]
  ]
}

#let all-emergency-numbers() = {
  rect(
    fill: rgb("#fef2f2"),
    stroke: 1pt + rgb("#dc2626"),
    radius: 6pt,
    width: 100%,
    inset: 8pt,
  )[
    #set text(size: 10pt)
    #grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), gutter: 8pt,
      [#strong[MDA (#heb[מד״א]):] 101],
      [#strong[Police (#heb[משטרה]):] 100],
      [#strong[Fire (#heb[כיבוי]):] 102],
      [#strong[Hatzalah (#heb[הצלה]):] 1221],
      [#strong[Poison Center:] 04-7771900],
    )
  ]
}

#let step-box(number, instruction, detail: none, warning: none) = {
  rect(
    fill: rgb("#f0f9ff"),
    stroke: 1pt + rgb("#3b82f6"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt)
    #strong[Step #number:] #instruction
    #if detail != none [
      #v(4pt)
      #text(size: 9pt, fill: rgb("#6b7280"))[#detail]
    ]
    #if warning != none [
      #v(4pt)
      #rect(fill: rgb("#fef2f2"), stroke: 1pt + rgb("#dc2626"), radius: 4pt, inset: 6pt)[
        #text(fill: rgb("#dc2626"), weight: "bold", size: 10pt)[WARNING: #warning]
      ]
    ]
  ]
}

#let decision-box(condition) = {
  rect(
    fill: rgb("#eff6ff"),
    stroke: 2pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 12pt, weight: "bold", fill: rgb("#1e40af"))
    #align(center)[#condition]
  ]
}

#let yes-branch(content) = {
  rect(
    fill: rgb("#f0fdf4"),
    stroke: 1pt + rgb("#16a34a"),
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: rgb("#16a34a"), weight: "bold")[YES ->] #content
  ]
}

#let no-branch(content) = {
  rect(
    fill: rgb("#fff7ed"),
    stroke: 1pt + rgb("#ea580c"),
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: rgb("#ea580c"), weight: "bold")[NO ->] #content
  ]
}

#let do-not-box(items) = {
  rect(
    fill: rgb("#fef2f2"),
    stroke: 2pt + rgb("#dc2626"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ V]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country -- #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[ID: IL-CHILD-POISONING-001]
]

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to call
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[Call 101 immediately if:]
  #v(4pt)
  #text(size: 9.5pt)[
    Child is unconscious or losing consciousness; difficulty breathing or respiratory distress; burns visible in or around the mouth; seizures or convulsions; severe vomiting; cyanosis (blue skin colouration); known ingestion of a highly toxic substance (drain cleaner, large quantity of medications).
  ]
  #v(4pt)
  #text(weight: "bold", size: 9.5pt)[For non-symptomatic cases:] #text(size: 9.5pt)[Call the Israel Poison Information Center at *04-7771900* (24/7) for guidance.]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Summary:] First aid for poisoning in children, covering ingestion, inhalation, skin contact, and eye exposure. Core principle: never induce vomiting, preserve the substance container, and call for professional guidance immediately.
]

#v(6pt)

// === STEPS ===

// Step 1
#step-box(1, "Ensure scene safety.",
  detail: "Ensure your own safety before approaching. For inhalation poisoning, do not enter a confined space filled with toxic fumes without protection. If hazardous gases, smoke, or flammable materials are suspected, contact the fire department at 102.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 2
#step-box(2, "Assess the child's consciousness, breathing, and airway.")

#v(4pt)
#decision-box("Is the child unconscious or not breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Begin CPR immediately and call 101 (MDA).* Follow the pediatric CPR protocol (IL-CHILD-CPR-001).],
  no-branch[Proceed to Step 3.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 3
#step-box(3, "Determine the route of poisoning exposure.",
  detail: "Identify whether exposure was through ingestion (most common in children), inhalation, skin contact, or eye contact. This determines which treatment path to follow.")

#v(4pt)
#decision-box("Was the substance ingested (swallowed)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 4 (Ingestion protocol).],
  no-branch[Proceed to Step 9 for inhalation, Step 10 for skin contact, or Step 11 for eye contact.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 4
#step-box(4, "Identify the substance and preserve evidence.",
  detail: "Look for the container, packaging, or remnants of the substance. If substance is still in the child's mouth, attempt to remove it manually by wiping out with a cloth. Collect and preserve the container, packaging, remaining substance, and any vomit for medical teams. Note the estimated amount ingested and the time of ingestion if possible.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 5 -- CRITICAL WARNING
#step-box(5, "Do NOT induce vomiting.",
  detail: "Previous guidelines recommended inducing vomiting, but current Israeli medical protocol explicitly prohibits it. The substance passing back through the oesophagus causes additional chemical burns (for caustic agents), there is risk of aspiration (inhaling vomit into the lungs), and research shows uncontrolled vomiting removes only a partial amount of poison and is ineffective.",
  warning: "This is the most critical rule. Do NOT induce vomiting regardless of the substance ingested. Do NOT use finger insertion, soapy water, or salt water to trigger vomiting.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 6
#step-box(6, "Determine if the substance is caustic (acid or base).",
  detail: "Caustic substances include drain cleaners (acids), toilet bowl cleaners (acids), oven cleaners (bases/alkalis), bleach (economica), degreasers, and limescale removers.")

#v(4pt)
#decision-box("Is the ingested substance a caustic agent (acid, base, bleach, or similar corrosive cleaning product)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If the child is conscious and breathing normally: give water or milk to dilute. Toddlers: ~60 ml (1/4 cup). Older children: ~120 ml (1/2 cup). Adolescents: ~240 ml (1 cup). Proceed to Step 7.],
  no-branch[Do NOT give food or liquids unless specifically instructed by the Poison Center. Proceed to Step 7.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 7
#step-box(7, "Call for help based on symptoms.")

#v(4pt)
#decision-box("Are symptoms present? (altered consciousness, breathing difficulty, mouth burns, vomiting, abdominal pain, seizures, cyanosis)")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Call 101 (MDA) immediately.* Describe the substance, estimated quantity, time of ingestion, and child's current condition.],
  no-branch[Call the Israel Poison Information Center at *04-7771900* for guidance on whether hospital evaluation is needed. Follow their instructions.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 8
#step-box(8, "Prepare for transport to hospital.",
  detail: "All poisoning cases require hospital assessment, even if symptoms seem mild. Some toxic substances (e.g., paracetamol) cause no noticeable signs initially but cause severe organ damage (liver, kidneys) that appears later. Always bring the substance container and packaging to the hospital.",
  warning: "Do not wait for symptoms before seeking professional guidance. Delayed toxicity is common with many household substances and medications.")

#v(6pt)

// === ALTERNATIVE EXPOSURE ROUTES ===
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 2pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#7c3aed"), weight: "bold", size: 13pt)[ALTERNATIVE EXPOSURE ROUTES]
]

#v(4pt)

// Step 9
#step-box(9, "Inhalation poisoning: move the child to fresh air.",
  detail: "Move the child to a well-ventilated area or fresh air immediately. If the child is not breathing, begin CPR. Call 101 (MDA). Contact the fire department at 102 if hazardous gases or flammable materials are suspected. For carbon monoxide exposure: signs include headaches, weakness, dizziness, nausea, vomiting, possible loss of consciousness, and facial redness. For organophosphate (pesticide) exposure: signs include excessive secretions, pinpoint pupils, muscle contractions, and breathing difficulty.",
  warning: "Never enter a confined space with toxic fumes without proper protection. Never mix bleach-based cleaners with other cleaning products (especially acids) -- this releases toxic chlorine gas causing severe lung irritation and can trigger asthma attacks.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 10
#step-box(10, "Skin contact: remove contaminated clothing and flush with water.",
  detail: "Remove contaminated clothing carefully. Flush the affected skin area with large amounts of running water for 15-20 minutes. Do not apply creams, ointments, or other substances. Seek medical evaluation.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 11
#step-box(11, "Eye contact: flush with running water for at least 15-20 minutes.",
  detail: "Flush the eye(s) with large amounts of running water at room temperature for at least 15-20 minutes. Gently lift the eyelids to ensure thorough flushing. Do not rub the eyes. Seek immediate medical evaluation.")

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT induce vomiting -- regardless of the substance ingested. This is outdated practice and causes additional harm (oesophageal burns from caustic agents, aspiration risk, ineffective removal).",
  "Do NOT give activated charcoal at home unless specifically instructed by the Poison Center or a physician.",
  "Do NOT give food to the poisoned child. Water or milk for dilution purposes only, and only for caustic substances when the child is conscious.",
  "Do NOT attempt home remedies (raw eggs, olive oil, etc.).",
  "Do NOT wait for symptoms before calling for guidance -- some toxic substances cause no noticeable signs initially but cause severe organ damage (liver, kidneys) later.",
  "Do NOT discard the container or packaging -- always bring it to the hospital for identification by medical teams.",
  "Do NOT mix cleaning products -- especially bleach with acids, which releases toxic chlorine gas.",
  "Do NOT enter a toxic fume environment without proper protection.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#92400e"), weight: "bold", size: 11pt)[Equipment Needed:]
  #v(4pt)
  #text(size: 10pt)[
    - Cloth (to wipe substance from child's mouth if present)\
    - Water or milk (for dilution of caustic substances only, age-appropriate amounts)\
    - Running water source (for skin and eye decontamination, 15-20 minutes flushing)\
    - Container or bag (to preserve substance packaging and any vomit for medical teams)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
