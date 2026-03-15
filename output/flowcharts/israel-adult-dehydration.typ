// First Aid Protocol Flowchart — Dehydration and Heat-Related Illness — Adult — Israel
// Generated from: IL-ADULT-DEHYDRATION-001
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
  #text(size: 22pt, weight: "bold")[DEHYDRATION AND HEAT-RELATED ILLNESS]
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
  #text(size: 10pt)[Heat stroke (body temp >40 degrees C, sweating stopped, confusion, loss of consciousness, seizures) -- dehydration not improving after 30 min of rest and rehydration -- vomiting prevents oral rehydration -- signs of shock.]
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
  #text(size: 10pt)[First aid for dehydration through gradual rehydration with small sips, cooling, and rest. Escalates to emergency treatment for heat stroke. Key distinction: dehydration involves continued sweating; heat stroke involves ABSENT sweating with high body temperature.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Assess the severity of the condition.",
)

#v(2pt)

#decision-box("Does the person show signs of heat stroke (body temp >40 degrees C, hot/dry/red skin with NO sweating, confusion, loss of consciousness)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[This is a medical emergency. Go to Step 8 (heat stroke protocol).],
  no-branch[Proceed to Step 2 for dehydration management.],
)

#arrow-down()

// === DEHYDRATION PATHWAY ===

#rect(
  fill: rgb("#f0fdf4"),
  stroke: 2pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #align(center)[#text(size: 12pt, weight: "bold", fill: rgb("#16a34a"))[DEHYDRATION PATHWAY]]
]

#v(2pt)

// Step 2
#step-box(2, "Stop all physical activity. Ensure complete rest.",
)

#arrow-down()

// Step 3
#step-box(3, "Move the person to a shaded, cool place -- air-conditioned room if available.",
)

#arrow-down()

// Step 4
#step-box(4, "Remove excess clothing and loosen tight garments.",
)

#arrow-down()

// Step 5
#step-box(5, "Rehydrate gradually with small sips of water or ORS (Oral Rehydration Solution).",
  detail: "ORS is preferred over plain water for moderate dehydration. Use a straw for small sips if needed. ORS can be prepared at home: 1 litre of clean water + 6 teaspoons sugar + 0.5 teaspoon salt. Commercial ORS (Electrolit, Hydralite) available at Israeli pharmacies.",
  warning: "Do NOT drink rapidly -- rapid fluid replacement can worsen symptoms due to electrolyte imbalance and may increase nausea and vomiting.",
)

#arrow-down()

// Step 6
#step-box(6, "Cool the body with wet cloths, a fan, or cool (not cold) water spray.",
)

#arrow-down()

// Step 7
#step-box(7, "Monitor the person's condition.",
)

#v(2pt)

#decision-box("Have symptoms improved after 30 minutes of rest and rehydration?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue gradual rehydration and rest. Monitor for relapse.],
  no-branch[Call MDA at 101. The person may need intravenous fluids.],
)

#arrow-down()

// === HEAT STROKE PATHWAY ===

#rect(
  fill: rgb("#fef2f2"),
  stroke: 2pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #align(center)[#text(size: 12pt, weight: "bold", fill: rgb("#dc2626"))[HEAT STROKE EMERGENCY PATHWAY]]
]

#v(2pt)

// Step 8
#step-box(8, "HEAT STROKE EMERGENCY: Call MDA at 101 immediately.",
  warning: "Heat stroke is a life-threatening emergency. Body temperature regulation has failed and internal organs are being damaged.",
)

#arrow-down()

// Step 9
#step-box(9, "Move the person to a shaded, ventilated, or air-conditioned location. Remove excess clothing.",
)

#arrow-down()

// Step 10
#step-box(10, "Cool the body rapidly using ice, wet towels, fans, and cold water on the torso.",
  detail: "Active cooling must continue until MDA arrives.",
)

#arrow-down()

// Step 11
#step-box(11, "Assess consciousness.",
  warning: "Do NOT wet the head -- risk of choking if consciousness is altered.",
)

#v(2pt)

#decision-box("Is the person conscious?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Offer small sips of water only.],
  no-branch[Lay on back, elevate legs. If breathing, place in recovery position. Do NOT give fluids.],
)

#arrow-down()

// Step 12
#step-box(12, "Continue active cooling and monitoring until MDA arrives.",
)

#v(8pt)

// DO NOT list
#do-not-box((
  "Do NOT give large quantities of water quickly -- rapid fluid replacement disrupts electrolyte balance.",
  "Do NOT give sugary drinks, coffee, or alcohol.",
  "Do NOT wet the head of a heat stroke patient -- choking risk if consciousness is altered.",
  "Do NOT ignore the key distinction: dehydration involves continued sweating; heat stroke involves ABSENT sweating with high body temperature.",
  "Do NOT delay calling 101 for heat stroke -- it is a medical emergency requiring hospital treatment.",
  "Do NOT give fluids to an unconscious person.",
))

#v(6pt)

// Equipment
#equipment-box((
  "Water or ORS (Oral Rehydration Solution)",
  "Fan or method of creating air flow",
  "Wet cloths or towels for cooling",
  "Ice packs (for heat stroke)",
  "Straw (for controlled sipping)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA Training Department Manual -- Dehydration and Heat-Related Illness First Aid \
  Protocol ID: IL-ADULT-DEHYDRATION-001 · Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
