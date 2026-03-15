// First Aid Protocol Flowchart — Severe Bleeding (Child) — Israel
// Generated from: IL-CHILD-SEVERE-BLEEDING-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SEVERE BLEEDING (HEMORRHAGE CONTROL) — CHILD"
#let protocol-category = "severe_bleeding"
#let country = "Israel"
#let age-group = "Child (approx. 1-12 years)"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-03-15"
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
      CALL #number (#service) — CALL IMMEDIATELY
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
    #set text(size: 10pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
  ]
}

// === PAGE 1: INITIAL ASSESSMENT AND DIRECT PRESSURE ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#9ca3af"))[Protocol ID: IL-CHILD-SEVERE-BLEEDING-001]
]

#v(6pt)

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
  #text(weight: "bold", size: 11pt)[When to apply:] Severe or uncontrolled external bleeding in a child (approx. 1--12 years). Signs: rapid spurting or steady flow of blood, pooling blood, blood-soaked clothing, or a severed/partially severed limb. Children have significantly smaller blood volumes (a 3-year-old has only ~1,200 mL total) -- what appears moderate in an adult may be life-threatening in a child.
]

#v(6pt)

// Step 1
#step-box(1, "Ensure scene safety and wear disposable gloves if available.",
  detail: "Do not approach until the scene is safe. If a parent or caregiver is present, involve them immediately -- they can help keep the child calm and assist with treatment."
)

#arrow-down()

// Step 2
#step-box(2, "Call 101 (Magen David Adom) immediately.",
  detail: "Provide location, number of casualties, nature of injuries. Emphasise the patient is a child -- give approximate age and weight if known. If alone and bleeding is immediately life-threatening, begin hemorrhage control first and call as soon as possible."
)

#arrow-down()

// Step 3
#step-box(3, "Calm the child using age-appropriate communication.",
  detail: "Speak softly using simple language. Involve the parent/caregiver. Explain what you are doing simply. Acknowledge fear and pain. Shield the child from the sight of blood if possible."
)

#arrow-down()

// Step 4 -- Decision point: embedded object
#step-box(4, "Check for embedded or impaled objects in the wound.")

#v(4pt)
#decision-box("Is there an embedded or impaled object in the wound?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT remove the object. Stabilise it with padding around it. Apply pressure around the object, not on it. Gently restrain child's hands if they try to pull at it. Skip to Step 10 (monitor for shock).],
  no-branch[Proceed to Step 5 (direct pressure).],
)

#arrow-down()

// Step 5
#step-box(5, "Apply strong, direct pressure to the source of bleeding.",
  detail: "Press firmly directly on the wound with gloved hand or sterile gauze. Maintain continuous firm pressure without lifting to check -- this allows clot formation. On a small child, one adult hand may cover the entire wound."
)

#arrow-down()

// Step 6 -- Decision point: bleeding controlled?
#step-box(6, "If dressing soaks through, add layers on top -- do NOT remove the original dressing.")

#v(4pt)
#decision-box("Has direct pressure controlled the bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain pressure. Elevate the limb above heart level if possible (Step 7). Go to Step 10 (monitor for shock).],
  no-branch[Proceed to Step 8 (Israeli bandage / pressure dressing).],
)

#v(1fr)

// Footer page 1
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) -- Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency. Page 1 of 3
]

// === PAGE 2: ESCALATING INTERVENTIONS ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 11pt, fill: rgb("#6b7280"))[Escalating Interventions — Page 2 of 3]
]

#v(4pt)
#emergency-box(emergency-number, emergency-service)
#v(6pt)

// Step 7
#step-box(7, "If possible, elevate the injured limb above heart level.",
  detail: "Elevation is an adjunct to direct pressure, not a replacement. It reduces blood flow to the injured area."
)

#arrow-down()

// Step 8 -- Israeli bandage
#step-box(8, "Apply an Israeli Emergency Bandage (pressure dressing).",
  detail: "1) Apply white sterile pad directly over the wound. 2) Wrap elastic bandage around the area, passing through the pressure bar. 3) Reverse direction and continue wrapping for circumferential pressure. 4) Secure using the built-in closure bar. On smaller children, the elastic wrap may need to be folded or doubled.",
  warning: "The elastic component can more easily occlude arteries in smaller limbs. Verify distal pulse after application -- check for warmth, colour, and pulse below the bandage. If pulse is absent, loosen slightly and re-secure."
)

#v(4pt)
#decision-box("Has the Israeli bandage controlled the bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain dressing in place. Go to Step 10 (monitor for shock).],
  no-branch[Assess wound location. Limb: go to Step 9b (tourniquet). Junctional area (groin, neck, axilla, shoulder): go to Step 9a (wound packing).],
)

#arrow-down()

// Step 9 -- Decision: limb vs junctional
#step-box(9, "Escalate hemorrhage control based on wound location.")

#v(4pt)
#decision-box("Is the wound on a limb (arm or leg)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Assess child's age and limb size, then apply a tourniquet (Step 9b / Step 11).],
  no-branch[Apply wound packing for junctional wounds (Step 9a / Step 10a).],
)

#arrow-down()

// Step 9a / Step 10 in JSON -- wound packing
#step-box("9a", "Wound packing for junctional areas (groin, neck, axilla, shoulder).",
  detail: "1) Insert hemostatic or plain gauze finger-by-finger into the wound. 2) Fill internally in a sunburst pattern to create internal pressure against the bleeding vessel. 3) Apply the attached dressing with direct pressure for 1-2 minutes. 4) Tighten bandage straps to maintain pressure. Use smaller amounts of gauze proportional to the child's wound size.",
  warning: "Do NOT use wound packing for penetrating stab wounds. Do NOT enlarge wound openings to facilitate packing."
)

#arrow-down()

// Step 9b / Step 11 in JSON -- tourniquet
#step-box("9b", "Apply a tourniquet for uncontrolled limb bleeding.",
  detail: "1) Place the tourniquet 5-10 cm above the source of bleeding (proximal, toward the heart). 2) Tighten the windlass until bleeding completely stops. 3) Secure the windlass in place. 4) Record the time of application in 4-digit format (e.g., 'TQ 1430').",
  warning: "A tourniquet will cause significant pain. A frightened child in pain will likely scream and struggle -- this is expected. Do NOT loosen the tourniquet because the child is in distress. Enlist a caregiver to comfort the child. Do NOT remove or loosen unless instructed by a paramedic or physician."
)

#v(4pt)
#decision-box("Is the child aged 2 or older with a limb circumference of at least 13 cm?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply a CAT Gen 7 tourniquet. Ages 6+ with limb circumference 16 cm+: both upper and lower extremity application is reliable. Ages 2-5: upper extremity has 100% success rate; lower extremity 94.5%.],
  no-branch[For infants/very small children under 2: no evidence for manufactured tourniquets. Use sustained direct pressure as primary method. Consider improvised narrow pressure devices only under medical direction.],
)

#v(1fr)

// Footer page 2
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) -- Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency. Page 2 of 3
]

// === PAGE 3: SHOCK MONITORING, DO-NOT LIST, EQUIPMENT ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 11pt, fill: rgb("#6b7280"))[Shock Monitoring and Warnings — Page 3 of 3]
]

#v(4pt)
#emergency-box(emergency-number, emergency-service)
#v(6pt)

// Step 10 / Step 12 in JSON -- monitor for shock
#step-box(10, "Monitor the child for signs of hypovolemic shock.",
  detail: "Children enter hypovolemic shock faster than adults. Tachycardia (rapid heart rate) is the earliest and most reliable sign. Also watch for: pale, cool, clammy, or mottled skin; bluish discolouration around lips and fingernails; fast shallow breathing; weakness, lethargy, or confusion. Hypotension is a LATE sign in children -- do not wait for it.",
  warning: "Children compensate longer then decompensate rapidly. Do NOT wait for low blood pressure to suspect shock."
)

#v(4pt)
#decision-box("Is the child showing signs of shock? (tachycardia, pale/cool/mottled skin, confusion, rapid breathing)")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Keep the child lying down. If conscious, elevate legs above the head. If unconscious, place in recovery position. Cover with a blanket even in warm weather. Moisten lips with water but do NOT give food or drink. Urgently update the 101 dispatcher on deterioration.],
  no-branch[Continue monitoring closely. Maintain hemorrhage control. Keep the child warm, calm, and reassured until MDA arrives. Reassess frequently -- children can decompensate suddenly.],
)

#v(10pt)

// Do Not list
#do-not-box((
  "Do not remove an embedded or impaled object from the wound.",
  "Do not lift or remove a blood-soaked dressing to check the wound -- add layers on top.",
  "Do not remove or loosen a tourniquet once applied unless instructed by a paramedic or physician.",
  "Do not loosen a tourniquet because the child is screaming or in distress -- pain is expected.",
  "Do not give food or drink to a child with severe bleeding or suspected shock.",
  "Do not use wound packing for penetrating stab wounds.",
  "Do not enlarge wound openings to facilitate wound packing.",
  "Do not assume a rapid pulse (tachycardia) is caused only by anxiety, fear, or pain -- suspect significant blood loss.",
  "Do not wait for hypotension to suspect shock in a child -- hypotension is a late, pre-arrest sign.",
  "Do not delay calling 101 for severe or uncontrolled bleeding in a child.",
  "Do not apply a tourniquet directly over a joint -- place it 5-10 cm above the wound on the limb.",
  "Do not attempt to use a manufactured tourniquet on a child under 2 years old -- use sustained direct pressure.",
  "Do not lie to the child about pain -- if something will hurt, say so honestly in age-appropriate language.",
))

#v(10pt)

// Equipment needed
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 12pt, fill: rgb("#7c3aed"))[Equipment Needed:]
  #v(4pt)
  #set text(size: 10pt)
  - Disposable gloves
  - Sterile gauze or clean cloth
  - Israeli Emergency Bandage (pressure dressing)
  - Tourniquet (CAT Gen 7 -- evidence-supported for children aged 2+ with limb circumference 13 cm+)
  - Wound packing material (hemostatic gauze preferred)
  - Blanket or coat (for shock management and warmth)
  - Comfort item for the child (toy, stuffed animal) if available
]

#v(1fr)

// Footer page 3
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) -- Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency. Page 3 of 3
]
