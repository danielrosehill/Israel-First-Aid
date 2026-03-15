// First Aid Protocol Flowchart — Recovery Position / Unconscious Breathing Casualty — Adult — Israel
// Generated from: IL-ADULT-RECOVERY-POSITION-001
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES → ] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO → ] #content
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

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ #sym.arrow.b]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[RECOVERY POSITION / UNCONSCIOUS CASUALTY]
  #v(2pt)
  #text(size: 14pt, weight: "bold")[Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
]

#v(6pt)

// Emergency number (primary)
#emergency-box("101", [MDA (#heb[מד״א])])

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#dc2626"))[CALL 101 IF: ]
  #text(size: 10pt)[As soon as the person is confirmed unresponsive but breathing -- call MDA at 101 before or immediately after placing in recovery position.]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#5b21b6"))[SUMMARY: ]
  #text(size: 10pt)[Place an unconscious but breathing person in the recovery position to maintain an open airway and prevent aspiration. Use when the person is unresponsive but breathing, with no suspected spinal injury and no need for CPR.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, [Check responsiveness: call out "Are you OK?" (Ata beseder?) and tap or gently shake the shoulders.],
  detail: "Pinch the shoulders if needed to assess response.",
)

#v(2pt)

#decision-box("Does the person respond?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[The person is conscious. Assess their condition and provide appropriate first aid. Do not place in recovery position.],
  no-branch[The person is unresponsive. Proceed to Step 2.],
)

#arrow-down()

// Step 2
#step-box(2, "Check the airway: open the person's mouth and look inside. Tilt the body to the side and use a gripping motion to clear any visible obstructions (food, dentures, vomit).",
)

#arrow-down()

// Step 3
#step-box(3, "Check breathing: look for chest movement, listen for breathing sounds, and feel for breath on your cheek. Take no more than 10 seconds.",
)

#v(2pt)

#decision-box("Is the person breathing?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 4 -- prepare to place in recovery position.],
  no-branch[Begin CPR immediately. Do NOT place in recovery position.],
)

#arrow-down()

// Step 4
#step-box(4, "Call MDA at 101. Report an unconscious but breathing casualty.",
)

#v(2pt)

#decision-box("Is there a suspected spinal injury (fall from height, road accident, blow to head/neck, diving accident, or person complains of neck/back pain)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT move the person unless they are in immediate danger (fire, drowning). Support the head and neck in line with the body if movement is absolutely necessary.],
  no-branch[Proceed to Step 5 to place in recovery position.],
)

#arrow-down()

// Steps 5-11: Physical positioning steps
#rect(
  fill: rgb("#f0fdf4"),
  stroke: 2pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 12pt, weight: "bold", fill: rgb("#16a34a"))[PLACING IN RECOVERY POSITION:]
]

#v(2pt)

// Step 5
#step-box(5, "Kneel beside the person who is lying on their back.",
)

#arrow-down()

// Step 6
#step-box(6, "Extend the arm nearest to you at a right angle to the body, palm facing up.",
)

#arrow-down()

// Step 7
#step-box(7, "Take the far arm and fold it across the chest so the back of the hand rests against the cheek closest to you. Hold it in place.",
)

#arrow-down()

// Step 8
#step-box(8, "Bend the far knee up to a right angle using your free hand.",
)

#arrow-down()

// Step 9
#step-box(9, "Roll the person toward you by pulling on the bent knee. They should roll smoothly onto their side.",
)

#arrow-down()

// Step 10
#step-box(10, "Adjust the top leg so both the hip and knee are bent at right angles, stabilising the position.",
)

#arrow-down()

// Step 11
#step-box(11, "Tilt the head back slightly to keep the airway open. Adjust the hand under the cheek to maintain the head tilt.",
  detail: "The person should now be lying on their side with the higher shoulder angled toward the ground, knees bent for stability, and airway open to allow drainage.",
)

#arrow-down()

// Step 12
#step-box(12, "Monitor the person continuously until MDA arrives.",
  detail: "Check breathing regularly. Monitor for vomiting -- the position should allow natural drainage, but clear the mouth if needed. Keep the person warm with a blanket.",
)

#v(2pt)

#decision-box("Has the person stopped breathing?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Roll them onto their back and begin CPR immediately.],
  no-branch[Continue monitoring. If in recovery position for more than 30 minutes, turn to the opposite side to prevent pressure injuries.],
)

#v(8pt)

// DO NOT list
#do-not-box((
  "Do NOT place in recovery position if the person is not breathing -- begin CPR instead.",
  "Do NOT move a person with suspected spinal injury unless they are in immediate danger.",
  "Do NOT leave the person unattended -- monitor breathing continuously.",
  "Do NOT place the person on their back if they are unconscious and breathing -- risk of airway obstruction and aspiration.",
  "Do NOT forget to call 101 -- an unconscious person always requires professional medical evaluation.",
))

#v(6pt)

// Equipment
#equipment-box((
  "Blanket (to keep the person warm)",
  "Phone to call MDA at 101",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA Emergency Medicine Manual 2024; MDA BLS Guide 2016 \
  Protocol ID: IL-ADULT-RECOVERY-POSITION-001 · Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
