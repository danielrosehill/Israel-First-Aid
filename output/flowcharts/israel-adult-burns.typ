// First Aid Protocol Flowchart — Burns (Adult) — Israel
// Generated from: protocols/adult/israel/burns.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "BURNS FIRST AID PROTOCOL (ADULT)"
#let protocol-category = "burns"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-01-01"
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES →] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO →] #content
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
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ V]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

// Emergency number — prominent
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 10pt)[Call 101 immediately for:] #text(size: 9pt)[extensive burns with severe pain; white/grey/black discolouration; multiple blisters; burns on face, mouth, tongue, hands, feet, genitals, or groin; burns larger than the casualty's palm; chemical or electrical burns; inhalation injuries; high-risk patients (pregnant, elderly, chemotherapy).]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#7c3aed"))[When to apply:] #text(size: 9pt)[When an adult has sustained a burn from heat, chemicals, electricity, or radiation. Signs include redness, swelling, blisters, white/grey/black discolouration of skin, or pain at the injury site.]
]

#v(6pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety and remove the casualty from the heat source.",
  detail: "Make sure the scene is safe for the rescuer before approaching. Remove the casualty from the source of the burn (fire, hot liquid, chemical, electrical source)."
)

#arrow-down()

// Step 2
#step-box(2, "Assess the burn severity.",
  detail: "First-degree: red, slightly swollen, painful, no blisters. Second-degree: severe pain, redness, fluid-filled blisters. Third-degree: brown-white, grey, yellowish, or black tissue, stiff and dry, reduced or absent pain due to nerve destruction."
)

#v(4pt)

#decision-box("Is the burn severe? (Third-degree, covers more than the palm, affects face/hands/feet/genitals, or is chemical/electrical/inhalation)")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA) immediately, then continue first aid steps while waiting for emergency services.],
  no-branch[Continue first aid steps. Monitor for worsening and seek medical evaluation if concerned.],
)

#arrow-down()

// Step 3
#step-box(3, "Cool the burn under cool (not cold) running water for at least 10 minutes.",
  detail: "Begin cooling as soon as possible. Use cool or lukewarm water. Continue for 10 to 20 minutes or until pain subsides.",
  warning: "Do NOT apply ice or ice-cold water. Extreme cold can cause additional tissue and blood vessel damage."
)

#arrow-down()

// Step 4
#step-box(4, "Remove rings, bracelets, watches, and loose clothing from the affected area.",
  detail: "Do this before swelling begins to prevent circulation problems."
)

#v(4pt)

#decision-box("Is clothing stuck to the burn?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Cut around the stuck clothing. Do NOT pull it off.],
  no-branch[Gently remove the clothing from the burn area.],
)

#arrow-down()

// Step 5
#step-box(5, "Cover the burn loosely with cling film (food wrap), a clean plastic bag, or a clean non-fluffy dressing.",
  detail: "Do not wrap tightly. The covering protects the wound from contamination while allowing for swelling.",
  warning: "Do NOT apply toothpaste, ground coffee, raw egg, yogurt, butter, fat-based creams, or any home remedies. These trap heat and increase infection risk."
)

#arrow-down()

// Step 6
#step-box(6, "Position the patient lying down to reduce shock damage.",
  detail: "Keep the patient warm to prevent hypothermia, especially with large burns."
)

#arrow-down()

// Step 7
#step-box(7, "Assess for chemical burn.")

#v(4pt)

#decision-box("Was the burn caused by a chemical substance?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Remove contaminated clothing carefully (protect yourself). Rinse with massive amount of cool running water for at least 15--20 minutes. If in eyes, flush for at least 15 minutes. Do NOT attempt chemical neutralisation. Call 101.],
  no-branch[Proceed to assess for electrical burn.],
)

#arrow-down()

// Step 8
#step-box(8, "Assess for electrical burn.")

#v(4pt)

#decision-box("Was the burn caused by electricity?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Ensure power source is disconnected before approaching. Call 101 immediately. Be prepared to perform CPR if patient becomes unresponsive. Electrical burns may cause internal injuries not visible on the surface.],
  no-branch[Continue monitoring the patient until emergency services arrive or the patient receives medical evaluation.],
)

#arrow-down()

// Step 9
#step-box(9, "Monitor for complications while waiting for emergency services.",
  detail: "Watch for signs of infection (redness, warmth, pus, fever), respiratory issues (if inhalation injury suspected), and signs of hypovolemic shock. For mild first-degree burns, ibuprofen or paracetamol may be used for pain relief."
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT apply ice or ice-cold water to the burn -- extreme cold causes additional tissue and blood vessel damage.",
  "Do NOT apply toothpaste, ground coffee, raw egg, yogurt, butter, or other home remedies -- these trap heat and increase infection risk.",
  "Do NOT rupture or pop blisters -- the fluid inside protects the underlying tissue during healing.",
  "Do NOT use fat-based creams or ointments on fresh burns.",
  "Do NOT remove clothing that is stuck to the burn -- cut around it instead.",
  "Do NOT attempt chemical neutralisation on chemical burns (do not apply acid to a base burn or vice versa).",
  "Do NOT approach an electrical burn casualty until the power source is confirmed disconnected.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#f0f9ff"),
  stroke: 1pt + rgb("#3b82f6"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 11pt, weight: "bold", fill: rgb("#3b82f6"))[Equipment needed:]
  #v(4pt)
  #text(size: 9pt)[
    - Cool running water source \
    - Cling film (food wrap) or clean plastic bag \
    - Clean non-fluffy dressings or bandages \
    - Scissors (to cut clothing around stuck areas) \
    - Blanket (to keep patient warm and prevent hypothermia)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · Protocol ID: IL-ADULT-BURNS-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
