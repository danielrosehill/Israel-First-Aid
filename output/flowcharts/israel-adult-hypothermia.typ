// First Aid Protocol Flowchart — Hypothermia / Cold Exposure — Adult — Israel
// Generated from: IL-ADULT-HYPOTHERMIA-001
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
  #text(size: 22pt, weight: "bold")[HYPOTHERMIA / COLD EXPOSURE]
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
  #text(size: 10pt)[Immediately upon recognising hypothermia -- call MDA at 101 as the first step.]
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
  #text(size: 10pt)[First aid for hypothermia (body temperature below 35 degrees C) through gradual rewarming, starting with the torso. Signs: shivering, confusion, pale/cold skin, fatigue, slurred speech, muscle rigidity, or loss of consciousness after cold exposure.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Call MDA immediately -- dial 101.",
  detail: "Hypothermia can deteriorate rapidly. Request ambulance assistance immediately.",
)

#arrow-down()

// Step 2
#step-box(2, "Move the person to a warm, dry shelter.",
  detail: "Protect from wind, rain, and further cold exposure. If outdoors, shield from the elements as best as possible.",
)

#arrow-down()

// Step 3
#step-box(3, "Remove wet clothing promptly and replace with dry layers.",
  detail: "Wet clothing accelerates heat loss. Replace with dry, lightweight layered clothing that allows some movement, as movement generates heat.",
)

#arrow-down()

// Step 4
#step-box(4, "Cover the person with blankets and layers, including the head.",
  detail: "Significant heat is lost through the head. Wrap thoroughly in blankets.",
)

#arrow-down()

// Step 5
#step-box(5, "Warm the room to approximately 22 degrees C (72 degrees F) if indoors.",
  detail: "A warm ambient environment supports gradual rewarming.",
)

#arrow-down()

// Step 6
#step-box(6, "Assess whether the person is conscious.",
)

#v(2pt)

#decision-box("Is the person conscious and able to swallow?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Provide warm (NOT hot) beverages. Avoid alcohol and caffeine.],
  no-branch[Do not give any fluids. Monitor breathing closely and be prepared to begin CPR.],
)

#arrow-down()

// Step 7
#step-box(7, "Apply heat packs to the chest, abdomen, and back ONLY.",
  detail: "Use a cloth barrier between heat packs and skin -- never place directly on bare skin. Warm the torso FIRST, not the hands and feet.",
  warning: "Warming extremities first can cause cold blood to rush to the heart, potentially triggering cardiac arrest (afterdrop phenomenon).",
)

#arrow-down()

// Step 8
#step-box(8, "Monitor breathing continuously.",
)

#v(2pt)

#decision-box("Has the person stopped breathing?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Begin CPR immediately.],
  no-branch[Continue monitoring and gradual rewarming until MDA arrives.],
)

#arrow-down()

// Step 9
#step-box(9, "Continue gradual rewarming until emergency services arrive.",
  detail: "Rewarming must be gradual. Rapid rewarming can cause dangerous cardiac arrhythmias.",
)

#v(8pt)

// DO NOT list
#do-not-box((
  "Do NOT rub extremities -- friction can cause tissue damage and cardiac complications.",
  "Do NOT use direct intense heat (hot water baths, heating pads directly on skin) -- rapid rewarming can cause dangerous cardiac arrhythmias.",
  "Do NOT give alcohol -- it dilates blood vessels and accelerates heat loss.",
  "Do NOT give caffeine -- it worsens hypothermia.",
  "Do NOT warm extremities first -- cold blood rushing to the heart can trigger cardiac arrest (afterdrop).",
  "Do NOT apply vigorous external rewarming.",
))

#v(6pt)

// Equipment
#equipment-box((
  "Blankets or thermal blankets (space blankets)",
  "Dry clothing",
  "Heat packs with cloth barrier",
  "Warm (not hot) beverages (for conscious patients only)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA Emergency Medicine Manual 2024 \
  Protocol ID: IL-ADULT-HYPOTHERMIA-001 · Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
