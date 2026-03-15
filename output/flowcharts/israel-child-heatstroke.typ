// First Aid Protocol Flowchart — Heatstroke and Heat Exhaustion in Children (Israel)
// Generated from: protocols/child/israel/heatstroke.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "HEATSTROKE & HEAT EXHAUSTION IN CHILDREN"
#let protocol-category = "heatstroke"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2024-04-01"
#let last-verified = "2026-03-15"

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
      CALL #number (#service) — CALL IMMEDIATELY IF IN DOUBT
    ]
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
      #text(fill: rgb("#dc2626"))[X] #item \
    ]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#9ca3af"))[ID: IL-CHILD-HEATSTROKE-001]
]

#v(8pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// When to apply
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[When to apply:] When a child shows signs of heat-related illness: intense thirst, headache, profuse sweating, pale clammy skin, nausea, vomiting, dizziness, muscle cramps, floppiness or unusual sleepiness (young children), or more severe signs such as hot dry red skin, confusion, seizures, or loss of consciousness.
]

#v(6pt)

// === STEP 1 ===
#step-box(1, "Assess the child's condition to determine severity.",
  detail: "Check for key signs: Is the child sweating (heat exhaustion) or is the skin hot, dry, and red (heat stroke)? Is the child conscious and responsive? Children aged 0-4 are at highest risk. Young children may become floppy or unusually sleepy rather than showing typical adult symptoms."
)

#v(4pt)

#decision-box("Does the child have hot, dry, red skin, body temperature above 40 C, confusion, seizures, or loss of consciousness?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[HEAT STROKE -- life-threatening emergency. Call MDA 101 immediately and begin aggressive cooling. Follow all steps in parallel.],
  no-branch[Likely heat exhaustion. Move to shade and begin cooling. Call 101 if no improvement within 30 minutes.],
)

#arrow-down()

// === STEP 2 ===
#step-box(2, "Call MDA at 101 or use the My MDA app.",
  detail: "For heat stroke, call immediately. For heat exhaustion, call if the child does not improve within 30 minutes of cooling. Follow dispatcher instructions until the ambulance arrives."
)

#v(4pt)

#decision-box("Is the child showing signs of heat stroke (hot dry skin, temperature above 40 C, altered consciousness, seizures)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 immediately. Do not delay -- heat stroke can cause organ damage and death within minutes to hours.],
  no-branch[Begin cooling measures. Monitor the child and call 101 if no improvement within 30 minutes.],
)

#arrow-down()

// === STEP 3 ===
#step-box(3, "Move the child to a cool environment immediately.",
  detail: "Remove the child from the heat source. Move to shade, an air-conditioned room, or the coolest available location. If the child was found in a vehicle, remove them from the vehicle immediately."
)

#arrow-down()

// === STEP 4 ===
#step-box(4, "Remove excess and tight clothing.",
  detail: "Remove clothing to allow heat to dissipate from the body. Leave only minimal loose clothing."
)

#arrow-down()

// === STEP 5 ===
#step-box(5, "Begin active cooling.",
  detail: "Pour or spray tepid to cool water (not ice-cold) over the child's body. Fan the child to promote evaporative cooling. Place ice packs or cold wet cloths in the armpits and groin areas, where major blood vessels are close to the skin surface. If available, direct air conditioning or a fan toward the child.",
  warning: "Do not use ice-cold water immersion for young children without medical supervision."
)

#arrow-down()

// === STEP 6 ===
#step-box(6, "Assess the child's level of consciousness.",
  detail: "Determine whether the child is conscious and able to swallow safely."
)

#v(4pt)

#decision-box("Is the child conscious, alert, and able to swallow without vomiting?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Offer small, frequent sips of cool water or oral rehydration solution (ORS). Proceed to Step 7.],
  no-branch[Do NOT give any fluids. If unconscious but breathing, place in recovery position to maintain the airway. Proceed to Step 8.],
)

#arrow-down()

// === STEP 7 ===
#step-box(7, "Provide oral rehydration (conscious children only).",
  detail: "Give small, frequent sips of cool water or oral rehydration solution. Do not force fluids. Stop if the child begins vomiting.",
  warning: "Do NOT force fluids if the child is vomiting or has altered consciousness. A vomiting child should not drink due to risk of aspiration."
)

#arrow-down()

// === STEP 8 ===
#step-box(8, "Maintain the airway.",
  detail: "If the child is unconscious, ensure the airway is open. Place the child in the recovery position if unconscious but breathing. Continue to monitor breathing."
)

#v(4pt)

#decision-box("Is the child breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain the recovery position, continue cooling, and wait for MDA.],
  no-branch[Begin CPR according to paediatric protocol (see IL-CHILD-CPR protocol) and continue until MDA arrives.],
)

#arrow-down()

// === STEP 9 ===
#step-box(9, "Continue cooling and monitoring until MDA arrives.",
  detail: "Do not stop cooling efforts. Continue fanning and applying cool water. Monitor the child's consciousness, breathing, and skin colour. Note the time cooling began to report to the paramedics."
)

#arrow-down()

// === STEP 10 ===
#step-box(10, "If the child was found in a vehicle, note the circumstances.",
  detail: "Temperatures inside a locked car in Israeli summer can reach 70 C. If a child is found locked in a vehicle, break the window if necessary to extract the child. Report to MDA that the child was found in a vehicle, including estimated time of exposure if known.",
  warning: "A child left in a vehicle in Israeli summer conditions is a critical emergency. Every minute counts."
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT give fever-reducing medications (antipyretics) such as acetaminophen (Acamol), ibuprofen (Nurofen), or naproxen. These drugs do not reduce heat stroke temperature and may cause harm.",
  "Do NOT use ice-cold water immersion for young children without medical supervision.",
  "Do NOT force fluids if the child is vomiting or has altered consciousness.",
  "Do NOT leave the child unattended at any point.",
  "Do NOT give fluids to an unconscious child.",
  "Do NOT delay calling 101 if heat stroke is suspected.",
  "Do NOT leave a child unattended in a vehicle, even for a moment, even with windows open or air conditioning running.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#f9fafb"),
  stroke: 1pt + rgb("#d1d5db"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Equipment needed:]
  #v(4pt)
  - Cool water (for pouring or spraying over the body)
  - Fan or means of fanning
  - Ice packs or cold wet cloths
  - Oral rehydration solution (ORS) or cool drinking water
  - Thermometer (if available)
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  Document: MDA Heat Stroke, Dehydration, and Children in Vehicles Guidelines; MDA Summer Emergency Guidelines; MDA ALS Manual 2024 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
