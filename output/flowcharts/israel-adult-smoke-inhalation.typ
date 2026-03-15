// First Aid Protocol Flowchart — Smoke / Tear Gas Inhalation (Adult, Israel)
// Generated from protocol IL-ADULT-SMOKE-INHALATION-001
// Source: Magen David Adom (MDA)
// Font: IBM Plex Sans with IBM Plex Sans Hebrew fallback

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

// === DOCUMENT HEADER ===

#align(center)[
  #text(size: 22pt, weight: "bold")[Smoke / Tear Gas Inhalation — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-SMOKE-INHALATION-001]
]

#v(8pt)

// Primary emergency number
#emergency-box("101", [MDA (#heb[מד״א])])

#v(4pt)

// All emergency numbers strip
#all-emergency-numbers()

#v(6pt)

// When to apply
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt, fill: rgb("#5b21b6"))[When to apply:]
  #v(4pt)
  #text(size: 10pt)[Person has inhaled smoke, fumes, or tear gas. Signs include: coughing, wheezing, difficulty breathing, hoarse voice, soot around mouth or nose, singed facial hair, burns to face or mouth, confusion or altered consciousness, eye irritation and tearing (tear gas).]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#ecfdf5"),
  stroke: 1pt + rgb("#059669"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt, fill: rgb("#065f46"))[Summary:]
  #v(4pt)
  #text(size: 10pt)[Ensure scene safety, remove the person to fresh air, call 101, position upright for easier breathing, monitor for respiratory distress, perform CPR if needed, assess for burns, and keep warm. For tear gas: remove from exposure, flush eyes with water for 15 minutes, decontaminate skin and clothing.]
]

#v(4pt)

// Additional emergency note
#rect(
  fill: rgb("#fef9c3"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #set text(size: 10pt)
  #align(center)[
    #strong[Also call Fire and Rescue (#heb[כיבוי אש]):] 102 — if fire is ongoing
  ]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety.",
  detail: "Do NOT re-enter a smoke-filled area to rescue someone unless you are trained and equipped (firefighter with breathing apparatus). If indoors, stay low where air is cleaner (smoke rises). Ensure the area is safe before approaching.",
  warning: "Never re-enter a burning or smoke-filled structure without proper protective equipment. Wait for Fire and Rescue (102).")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Determine the type of exposure.")

#v(4pt)

// Decision point for Step 2
#decision-box("Is this smoke inhalation (fire, wildfire, fumes) or tear gas exposure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[For smoke inhalation: proceed to Step 3 (move to fresh air and call 101 immediately).],
  no-branch[For tear gas exposure: proceed to Step 9 (tear gas protocol).],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// === SMOKE INHALATION BRANCH ===

#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 6pt,
)[
  #align(center)[#text(weight: "bold", size: 12pt, fill: rgb("#dc2626"))[SMOKE INHALATION BRANCH (Steps 3--8)]]
]

#v(4pt)

// Step 3
#step-box(3, "Move the person to fresh air immediately.",
  detail: "Remove the person from the smoke-filled environment. Move them to an area with clean, fresh air.")

#v(4pt)

// Decision point for Step 3
#decision-box("Can you safely move the person out of the smoke-filled area?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Remove them immediately to fresh air. Proceed to Step 4.],
  no-branch[Wait for Fire and Rescue (102) or MDA (101). Do not risk your own safety.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4
#step-box(4, "Call MDA at 101.",
  detail: "Report the location, number of casualties, and whether the fire is still active. Also call Fire and Rescue at 102 if fire is ongoing. Every second counts in smoke inhalation.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5
#step-box(5, "Position the patient for easier breathing.")

#v(4pt)

// Decision point for Step 5
#decision-box("Is the person conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Sit them in an upright position -- this helps with easier breathing.],
  no-branch[If unconscious but breathing, place in the recovery position (on their side). If unconscious and not breathing, lay flat for CPR (proceed to Step 7).],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "Monitor breathing and look for warning signs.",
  detail: "Watch for signs of respiratory distress: coughing, wheezing, difficulty breathing, hoarse voice. Look for soot around mouth/nose, singed facial hair, or burns to the face/mouth.",
  warning: "Symptoms may worsen over hours as airway swelling develops. A person who appears stable may deteriorate.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7
#step-box(7, "Begin CPR if the person stops breathing.",
  detail: "If the person stops breathing, begin CPR immediately (if trained). Use standard 30:2 compression-to-ventilation ratio. Continue until the person starts breathing or MDA arrives.")

#v(4pt)

// Decision point for Step 7
#decision-box("Is the person breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. Maintain upright position (if conscious) or recovery position (if unconscious).],
  no-branch[Begin CPR immediately with 30:2 compression-to-ventilation ratio. Continue until breathing resumes or MDA arrives.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8
#step-box(8, "Check for burns and keep the person warm.",
  detail: "Check for burns, especially to the face, neck, and hands. Cool burns with clean water. Do not remove clothing stuck to burns. Cover with clean, non-adherent dressing. Cover the person with a blanket -- smoke inhalation patients may become hypothermic.")

#v(8pt)

// === TEAR GAS BRANCH ===

#rect(
  fill: rgb("#fef9c3"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 6pt,
)[
  #align(center)[#text(weight: "bold", size: 12pt, fill: rgb("#92400e"))[TEAR GAS BRANCH (Steps 9--12)]]
]

#v(4pt)

// Step 9
#step-box(9, "Tear gas exposure: Remove from exposure area.",
  detail: "Move the person away from the tear gas source to fresh air. Move upwind if possible. Effects are normally self-limiting once exposure ends.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 10
#step-box(10, "Tear gas exposure: Flush eyes with water.",
  detail: "Flush eyes with large amounts of clean, tepid water for at least 15 minutes. Water or saline are the safest options. Do NOT rub the eyes -- this worsens the irritation.",
  warning: "Do NOT use milk or other substances to flush eyes due to infection risk. Use only clean water or saline.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 11
#step-box(11, "Tear gas exposure: Decontaminate skin and clothing.",
  detail: "Remove contaminated clothing. Wash affected skin with soap and water. Blow the nose to clear chemical residue from nasal passages.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 12
#step-box(12, "Tear gas exposure: Monitor for deterioration.",
  detail: "Symptoms should begin to subside once exposure is eliminated. If symptoms do not improve or continue to worsen after 30 minutes in fresh air, call MDA at 101.")

#v(4pt)

// Decision point for Step 12
#decision-box("Are symptoms improving after removal from tear gas exposure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. Seek medical attention if the person has pre-existing respiratory conditions (asthma, COPD), is a child, elderly, or pregnant.],
  no-branch[Call MDA at 101 immediately. Seek medical attention for: persistent breathing difficulty, chest pain, severe eye pain, or vomiting.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT re-enter a smoke-filled or burning structure without proper firefighting equipment and training.",
  "DO NOT rub eyes after tear gas exposure -- this worsens irritation and spreads the chemical.",
  "DO NOT use milk or other substances to flush eyes -- use only clean water or saline due to infection risk.",
  "DO NOT remove clothing stuck to burns.",
  "DO NOT assume a smoke inhalation patient is stable -- symptoms may worsen over hours as airway swelling develops.",
  "DO NOT leave a smoke inhalation patient alone -- continuous monitoring is required.",
  "DO NOT ignore soot around the mouth/nose or singed facial hair -- these are indicators of potentially serious airway injury requiring hospital evaluation.",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Phone to call 101 (MDA) and 102 (Fire and Rescue)",
  "Clean water for eye flushing (tear gas) and burn cooling",
  "Clean cloth or non-adherent dressings for burns",
  "Blanket for warmth",
  "Soap for skin decontamination (tear gas)",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — MDA First Aid Guidelines - Smoke and Tear Gas Inhalation \
  Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
