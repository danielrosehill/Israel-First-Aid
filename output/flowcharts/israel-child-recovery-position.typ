// First Aid Protocol Flowchart — Recovery Position — Child — Israel
// Generated from: IL-CHILD-RECOVERY-POSITION-001
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

// === PAGE 1: ASSESSMENT & AGE BRANCHING ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[RECOVERY POSITION — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child (including Infants)]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[Unconscious, Breathing Casualty]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 for any unconscious child. Place the child in the recovery position while waiting for emergency services. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Confirm the child is unconscious but breathing normally.",
  detail: "Check responsiveness by speaking loudly and tapping the child's shoulders. Check for normal breathing by looking for chest rise and fall, listening for breath sounds, and feeling for air on your cheek for up to 10 seconds."
)

#arrow-down()

#decision-box("Is the child breathing normally?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed with the recovery position. Call 101 or have someone else call.],
  no-branch[If the child is not breathing or only gasping, begin CPR immediately. Do NOT place in recovery position.],
)

#arrow-down()

#step-box(2, "Check for suspected spinal injury.",
  detail: "Assess the mechanism of injury. Spinal injury should be suspected if the child fell from a height, was in a vehicle collision, has head or neck trauma, or complains of neck/back pain."
)

#arrow-down()

#decision-box("Is spinal injury suspected?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT move the child into recovery position. Stabilise the head and spine in the position found. Maintain airway using jaw thrust manoeuvre without tilting the head. Wait for emergency services.],
  no-branch[Proceed with the recovery position appropriate for the child's age.],
)

#arrow-down()

#step-box(3, "Determine the appropriate recovery position technique based on age.",
  detail: "For children aged 1 to 8 years: use the standard lateral recovery position (same as for adults, performed more gently). For infants under 1 year: use the cradle/arm position."
)

#arrow-down()

#decision-box("Is the child under 1 year of age (infant)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use the infant recovery position: hold the infant face-down on your forearm with the head lower than the body, supporting the head and jaw with one hand. Proceed to Step 7 (next page).],
  no-branch[Use the standard lateral recovery position for children aged 1-8 years. Proceed to Step 4 (next page).],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2016-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: TECHNIQUES & MONITORING ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[RECOVERY POSITION — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Positioning Techniques & Monitoring]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(4, "For children aged 1-8: kneel beside the child and position the near arm.",
  detail: "Kneel beside the child. Place the arm nearest to you at a right angle to the body, with the elbow bent and the palm facing upward."
)

#arrow-down()

#step-box(5, "Bring the far arm across the chest and roll the child towards you.",
  detail: "Take the child's far arm and bring it across the chest. Hold the back of their hand against the cheek nearest to you. With your other hand, bend the child's far knee. Roll the child towards you by pulling on the bent knee. Perform this movement gently -- children require less force than adults."
)

#arrow-down()

#step-box(6, "Adjust the position and ensure airway patency.",
  detail: "Adjust the upper leg so that the hip and knee are both at right angles. Tilt the head back gently to keep the airway open. Children have proportionally larger heads -- position carefully to avoid neck flexion which can obstruct the airway. The child should be stable on their side with the mouth angled downward to allow drainage.",
  warning: "Children have proportionally larger heads than adults. Ensure the head position does not flex the neck forward, as this can obstruct the airway."
)

#arrow-down()

#step-box(7, "For infants under 1 year: use the cradle/arm recovery position.",
  detail: "Pick up the infant and hold face-down along your forearm, with the head supported by your hand and the head lower than the body. This allows gravity-assisted drainage of fluids from the airway. Support the jaw with your fingers. Do NOT use the standard lateral recovery position for small infants.",
  warning: "Do NOT place infants in the standard lateral (side-lying) recovery position. Use the forearm cradle position only."
)

#arrow-down()

#step-box(8, "Monitor breathing continuously until emergency services arrive.",
  detail: "Check breathing regularly (every minute). Ensure the airway remains open. Cover the child with a blanket to prevent hypothermia while in the recovery position. Be prepared to begin CPR if breathing stops."
)

#arrow-down()

#decision-box("Has the child stopped breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Roll the child onto their back and begin CPR immediately.],
  no-branch[Continue monitoring in the recovery position. Maintain body warmth and airway patency.],
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Use the recovery position if the child is not breathing -- begin CPR instead.",
  "Use the recovery position if spinal injury is suspected -- stabilise the spine.",
  "Place infants under 1 year in the standard lateral recovery position -- use the forearm cradle position.",
  "Leave the child unattended in the recovery position -- monitor breathing continuously.",
  "Allow the child's head to flex forward (especially in children with larger heads) -- this can obstruct the airway.",
  "Forget to cover the child to prevent hypothermia.",
))

#v(6pt)

#equipment-box((
  "Blanket or coat (to prevent hypothermia)",
  "Phone (to call 101)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2016-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-RECOVERY-POSITION-001
]
