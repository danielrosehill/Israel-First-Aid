// First Aid Protocol Flowchart — Smoke / Tear Gas Inhalation — Child — Israel
// Generated from: IL-CHILD-SMOKE-INHALATION-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-16

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

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
      CALL #number (#service) — CALL IMMEDIATELY IF IN DOUBT
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
    #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 8pt,
      [#strong[MDA (#heb[מד״א]):] 101],
      [#strong[Police (#heb[משטרה]):] 100],
      [#strong[Fire (#heb[כיבוי]):] 102],
      [#strong[Hatzalah (#heb[הצלה]):] 1221],
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
      #rect(fill: rgb("#fef2f2"), stroke: 1pt + rgb("#dc2626"), radius: 4pt, inset: 6pt, width: 100%)[
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
    #text(fill: rgb("#16a34a"), weight: "bold", size: 11pt)[YES:] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold", size: 11pt)[NO:] #content
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[#sym.arrow.b]
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
    #set text(size: 10pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

#let equipment-box(items) = {
  rect(
    fill: rgb("#fefce8"),
    stroke: 1pt + rgb("#ca8a04"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 10pt)
    #text(fill: rgb("#92400e"), weight: "bold", size: 11pt)[Equipment needed:]
    #v(4pt)
    #for item in items [
      — #item \
    ]
  ]
}

// === PAGE 1: RESCUE, POSITIONING & OXYGEN ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[SMOKE / TEAR GAS INHALATION — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 immediately for any child with smoke or toxic inhalation exposure. Also call Fire Department at 102 if the fire is ongoing. Children should be assessed even with light smoke exposure due to their vulnerability. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Ensure your own safety first.",
  detail: "Use protective equipment if available. Do NOT re-enter a burning building or hazardous area to rescue the child. Maintain distance from the exposure source. If the area is filled with smoke or gas, wait for Fire Department (102) rescue teams with breathing apparatus.",
  warning: "Do NOT enter a hazardous environment without proper protective equipment. More rescuers die from inhalation than from any other fire-related cause."
)

#arrow-down()

#step-box(2, "Remove the child from the exposure source to fresh air immediately.",
  detail: "Move the child as far from the smoke, gas, or fumes as possible. Move to an open, well-ventilated area. If indoors, move outdoors. Remove any contaminated clothing. If tear gas exposure, move upwind from the gas source.",
  warning: "Heavier gases (including some combustion byproducts) concentrate at ground level where children breathe. Move the child to higher ground or a ventilated area."
)

#arrow-down()

#step-box(3, "Call 101 (MDA) and 102 (Fire Department).",
  detail: "Report the type of exposure (smoke, tear gas, chemical fumes), the child's age and condition, and whether the exposure was in an enclosed space. Enclosed space exposure is more dangerous due to higher gas concentrations."
)

#arrow-down()

#step-box(4, "Position the child upright to ease breathing.",
  detail: "Seat the child in a comfortable upright position. This position maximises lung expansion and eases breathing effort. If the child is unconscious but breathing, place in the recovery position."
)

#arrow-down()

#decision-box("Is the child conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Seat the child upright. Calm and reassure them. Proceed to Step 5.],
  no-branch[If breathing: place in recovery position (see recovery position protocol). If not breathing: begin CPR immediately.],
)

#arrow-down()

#step-box(5, "Administer high-concentration oxygen if available.",
  detail: "If supplemental oxygen is available, administer at maximum concentration via face mask. This is critical for carbon monoxide poisoning (CO displaces oxygen from haemoglobin) and cyanide exposure. High-flow oxygen is the primary field treatment for inhalation injuries."
)

#arrow-down()

#decision-box("Is supplemental oxygen available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Administer high-concentration oxygen via face mask. Continue until handover to emergency services.],
  no-branch[Ensure the child is in the freshest air possible. Keep them calm to reduce oxygen demand. Monitor breathing closely.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: STRIDOR, POISONING, TEAR GAS & MONITORING ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[SMOKE / TEAR GAS INHALATION — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Stridor, Poisoning Signs, Tear Gas & Monitoring]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(6, "Assess for stridor and airway compromise.",
  detail: "Listen for stridor (high-pitched noisy breathing) which indicates upper airway swelling. In children, stridor is common between ages 3 months to 5 years and indicates significant airway compromise. Stridor after smoke exposure is urgent and indicates potential thermal airway injury. Croup-like symptoms (barking cough, stridor) after smoke exposure require urgent attention.",
  warning: "Stridor in a child after inhalation injury is a danger sign -- the airway may swell further and close. This child needs advanced airway management from emergency services."
)

#arrow-down()

#decision-box("Does the child have stridor or severe breathing difficulty?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[This is urgent. Keep the child calm and upright. Do not examine the throat. Ensure 101 has been called. Cool mist humidifier if available. Be prepared for CPR if airway closes.],
  no-branch[Continue monitoring. Watch for delayed onset of respiratory distress which can develop hours after exposure.],
)

#arrow-down()

#step-box(7, "Monitor for signs of specific poisoning.",
  detail: "Carbon monoxide (CO): pink/reddish lips, headache, confusion, dizziness -- from incomplete combustion in enclosed spaces. Cyanide: altered consciousness, seizures -- from burning plastics, foam, paints. Both are colourless. Note any chemical containers or materials that were burning to report to emergency services.",
  warning: "Symptoms of inhalation injury can be delayed by hours. A child who appears well immediately after exposure may deteriorate later. All exposed children should be evaluated at hospital."
)

#arrow-down()

#step-box(8, "For tear gas exposure: irrigate eyes and exposed skin.",
  detail: "If tear gas (CS/OC) exposure: irrigate the child's eyes with clean flowing water for 15 minutes. Wash exposed skin with soap and water. Remove contaminated clothing. Move upwind from the gas source. Fresh air is the primary treatment.",
  warning: "Do NOT rub the eyes after tear gas exposure -- this worsens irritation. In enclosed spaces, tear gas concentration can become dangerous rather than merely irritating."
)

#arrow-down()

#step-box(9, "Prevent hypothermia and monitor continuously until emergency services arrive.",
  detail: "Cover the child with a blanket -- children lose heat rapidly. Monitor breathing continuously. Be prepared to perform CPR if breathing stops. Note the duration of exposure and any substances involved for medical staff. Ensure adequate hydration if the child is alert and able to swallow."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Re-enter a burning building or hazardous area -- wait for Fire Department rescue teams.",
  "Ignore light smoke exposure in a child -- children should be assessed even with mild exposure.",
  "Assume a well-appearing child is uninjured -- respiratory deterioration can be delayed by hours.",
  "Rub the eyes after tear gas exposure -- this worsens irritation.",
  "Give food or drink to a child with stridor or significant breathing difficulty -- aspiration risk.",
  "Examine the throat of a child with stridor -- this can worsen airway swelling.",
  "Leave the child unattended -- monitor breathing continuously.",
  "Position a child with breathing difficulty lying flat -- keep upright.",
))

#v(6pt)

#equipment-box((
  "Supplemental oxygen and face mask (if available -- typically first responder equipment)",
  "Clean water (for eye irrigation after tear gas)",
  "Blanket (to prevent hypothermia)",
  "Cool mist humidifier (if available, for stridor management)",
  "Phone (to call 101 and 102)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-SMOKE-INHALATION-001
]
