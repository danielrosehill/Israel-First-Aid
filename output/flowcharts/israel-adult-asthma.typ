// First Aid Protocol Flowchart — Asthma Attack — Adult — Israel
// Generated from: IL-ADULT-ASTHMA-001
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
  #text(size: 22pt, weight: "bold")[ASTHMA ATTACK]
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
  #text(size: 10pt)[Symptoms do not improve within minutes of inhaler use -- person cannot speak in full sentences -- lips or fingertips turn blue -- person loses consciousness -- no inhaler is available.]
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
  #text(size: 10pt)[First aid for an asthma attack: position upright, administer rescue inhaler, and call 101 if symptoms do not improve. Signs: shortness of breath, wheezing, persistent coughing, chest tightness, difficulty speaking, or visible breathing effort.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Help the person sit upright or lean slightly forward.",
  detail: "This position makes breathing easier by reducing pressure on the airways. Do NOT lay them down.",
  warning: "Do not lay the person down -- this worsens breathing difficulty during an asthma attack.",
)

#arrow-down()

// Step 2
#step-box(2, "Reassure and calm the person. Stay with them -- do not leave them alone.",
  detail: "Speak calmly. Anxiety worsens bronchospasm and can escalate the attack.",
)

#arrow-down()

// Step 3
#step-box(3, "Check if the person has a rescue inhaler (Ventolin / mashaf).",
)

#v(2pt)

#decision-box("Does the person have their own rescue inhaler available?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Provide the inhaler immediately. Go to Step 4.],
  no-branch[Call MDA at 101 immediately. Continue to monitor and reassure while waiting for help.],
)

#arrow-down()

// Step 4
#step-box(4, "Administer the rescue inhaler: 2--4 puffs initially.",
  detail: "If the person cannot operate the inhaler themselves, operate it for them. Use a spacer device (merkhav) if available -- it significantly improves drug delivery.",
)

#arrow-down()

// Step 5
#step-box(5, "Wait several minutes and assess the effect of the inhaler.",
)

#v(2pt)

#decision-box("Has breathing improved after the initial dose?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue to monitor the person. Allow time to recover. If symptoms return, repeat 2--4 puffs.],
  no-branch[Repeat 2--4 puffs. If still no improvement, go to Step 6.],
)

#arrow-down()

// Step 6
#step-box(6, "Call MDA at 101 if symptoms do not improve after repeated inhaler use.",
)

#v(2pt)

#decision-box("Are any of the following present: cannot speak in full sentences, blue lips or fingertips, loss of consciousness, silent chest?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[This is a life-threatening emergency. Call 101 immediately if not already done. Stay with the person and keep them upright.],
  no-branch[Continue monitoring. Seek medical evaluation even if symptoms partially improve.],
)

#arrow-down()

// Step 7
#step-box(7, "Monitor continuously until emergency services arrive.",
  detail: "Watch for worsening signs: skin colour changes (cyanosis), increased breathing effort, decreased responsiveness, silent chest (no wheezing despite obvious distress -- indicates minimal air movement).",
)

#arrow-down()

// Step 8
#step-box(8, "If the person loses consciousness and stops breathing, begin CPR.",
)

#v(2pt)

#decision-box("Has the person lost consciousness and stopped breathing?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Begin CPR immediately. Ensure 101 has been called.],
  no-branch[Continue to keep them upright and monitor until help arrives.],
)

#v(8pt)

// DO NOT list
#do-not-box((
  "Do NOT lay the person down -- the upright position is essential for breathing.",
  "Do NOT leave the person alone during an attack.",
  "Do NOT administer controller medications (inhaled corticosteroids) for acute relief -- these do not provide immediate effect.",
  "Do NOT delay calling 101 if no inhaler is available.",
  "Do NOT ignore a 'silent chest' -- absence of wheezing during obvious distress indicates a life-threatening emergency with minimal air movement.",
))

#v(6pt)

// Equipment
#equipment-box((
  "Rescue inhaler (Ventolin / Salbutamol)",
  "Spacer device (merkhav) if available",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA ALS Protocol Manual 2022; Israeli Asthma Association \
  Protocol ID: IL-ADULT-ASTHMA-001 · Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
