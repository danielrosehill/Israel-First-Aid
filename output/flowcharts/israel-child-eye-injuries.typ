// First Aid Protocol Flowchart — Eye Injuries — Child — Israel
// Generated from: IL-CHILD-EYE-INJURIES-001
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

// === PAGE 1: ASSESSMENT & CHEMICAL BURNS ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[EYE INJURIES — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 for any penetrating eye injury, chemical burn to the eye, significant blunt trauma with vision changes, or any eye injury where the child is in severe distress. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Assess the type of eye injury.",
  detail: "Determine if the injury is from a chemical substance, foreign object, penetrating object, blunt trauma, or thermal/UV burn. The treatment approach differs significantly based on the type of injury."
)

#arrow-down()

#decision-box("Is this a chemical burn to the eye?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed immediately to Step 2 (chemical burn irrigation). Time is critical -- begin irrigation within seconds.],
  no-branch[Proceed to Step 3 to assess for other injury types.],
)

#arrow-down()

#step-box(2, "For chemical burns: irrigate the eye immediately with clean flowing water for 15 to 30 minutes.",
  detail: "Tilt the child's head so water runs from the inner corner of the affected eye outward, away from the unaffected eye. Use sterile water if available, otherwise tap water. Hold eyelids open during irrigation. For young children who resist, two adults may be needed -- one to hold the child securely, one to irrigate. Continue irrigation for a full 15-30 minutes even if the child protests. After irrigation, transport urgently to hospital.",
  warning: "Do NOT delay irrigation to call emergency services. Begin irrigation immediately and have someone else call 101. Identify the chemical substance and bring the container or its MSDS to hospital if possible."
)

#arrow-down()

#step-box(3, "For foreign objects: determine if the object is embedded or superficial.",
  detail: "Ask the child (if old enough) what happened. Look for visible objects on the surface of the eye or under the eyelid."
)

#arrow-down()

#decision-box("Is the foreign object embedded in the eye or visibly penetrating the surface?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT attempt removal. Cover both eyes with sterile dressings without applying pressure. Transport to hospital immediately. Proceed to Step 4.],
  no-branch[Attempt gentle flushing with clean lukewarm water for approximately 15 minutes to dislodge the object. Even after successful removal, seek ophthalmological evaluation.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: PENETRATING, BLUNT TRAUMA, TRANSPORT ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[EYE INJURIES — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Penetrating Injuries, Blunt Trauma & Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(4, "For penetrating eye injuries: protect the eye without pressure.",
  detail: "Do NOT apply any pressure to the eye. Do NOT apply bandages. Place a rigid shield (such as a paper cup or plastic eye shield) over the injured eye without the shield touching the eye. Position the child supine (lying on back) for transport. Cover the uninjured eye as well to reduce sympathetic eye movement.",
  warning: "Do NOT apply pressure or bandage to a penetrating eye injury -- this worsens the wound and can cause further damage. Do NOT attempt to remove any embedded object."
)

#arrow-down()

#step-box(5, "For blunt trauma: apply a cold compress gently.",
  detail: "Apply a cold compress (ice wrapped in cloth) gently over the closed eyelid for 10-15 minutes. Do not press firmly. Monitor for vision changes, increasing pain, or swelling. Seek medical evaluation."
)

#arrow-down()

#decision-box("Does the child report vision changes, double vision, or severe pain?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 immediately. This may indicate internal eye bleeding or retinal damage requiring urgent hospital evaluation.],
  no-branch[Continue cold compress and seek routine ophthalmological evaluation within 24 hours.],
)

#arrow-down()

#step-box(6, "Calm and reassure the child throughout treatment.",
  detail: "Approach calmly. Explain procedures honestly using age-appropriate language. Allow the child to sit with a parent during assessment when possible. Children may not report vision changes accurately -- observe behaviour for signs of visual difficulty (bumping into objects, squinting, covering one eye).",
  warning: "Do NOT rub the affected eye. Instruct the child not to rub their eye."
)

#arrow-down()

#step-box(7, "Transport to hospital with on-call ophthalmologist.",
  detail: "All significant eye injuries in children require hospital evaluation. For penetrating injuries, transport supine. Bring the chemical container or its MSDS if applicable. Note the time of injury and substances involved for medical staff."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Rub the injured eye -- worsens damage from foreign objects and chemical burns.",
  "Apply pressure or bandages to a penetrating eye injury.",
  "Attempt to remove an embedded object from the eye.",
  "Delay irrigation for chemical burns -- begin immediately.",
  "Use any eye drops or ointments without medical direction.",
  "Allow the child to rub or touch the injured eye.",
  "Apply antiseptic or alcohol to the eye.",
))

#v(6pt)

#equipment-box((
  "Clean water source (tap water or sterile water for irrigation)",
  "Rigid eye shield or paper cup",
  "Sterile gauze or clean cloth",
  "Cold compress or ice wrapped in cloth",
  "Phone (to call 101)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-EYE-INJURIES-001
]
