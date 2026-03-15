// First Aid Protocol Flowchart — Drowning (Near-Drowning) — Adult — Israel
// Generated from: IL-ADULT-DROWNING-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

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
  #text(size: 22pt, weight: "bold")[DROWNING (NEAR-DROWNING)]
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

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#5b21b6"))[SUMMARY: ]
  #text(size: 10pt)[Rescue from water, assess breathing, perform CPR (ABC sequence preferred for trained rescuers), and transport to hospital -- even if the person recovers.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure your own safety before attempting any rescue.",
  detail: "Assess the scene. Do not enter the water unless you are a trained swimmer or lifeguard. Use reaching aids (pole, rope, flotation device) if possible. Alert a lifeguard if one is present.",
  warning: "Untrained rescuers who enter the water frequently become drowning victims themselves.",
)

#v(2pt)

#decision-box("Are you a trained swimmer or lifeguard?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[You may enter the water to perform a rescue, using appropriate technique and flotation aids.],
  no-branch[Do NOT enter the water. Use reaching aids (pole, rope, flotation device), throw a buoyant object, or call for a trained rescuer. Wait for the person to be brought to shore.],
)

#arrow-down()

// Step 2
#step-box(2, "Call 101 (MDA) immediately.",
  detail: "Keep the dispatcher on speakerphone. Provide your exact location (beach name, pool address, GPS coordinates if possible). If another person is present, send them to locate the nearest AED. AEDs are commonly found at lifeguard stations, first aid rooms, and public facilities with 500+ occupants in Israel.",
)

#arrow-down()

// Step 3
#step-box(3, "Remove the person from the water as quickly as possible.",
  detail: "Extract the drowning person from the water. Move them to a dry area away from the water's edge. Do not endanger yourself in the process.",
)

#arrow-down()

// Step 4
#step-box(4, "Check responsiveness and breathing.",
  detail: "Call to the person and tap their shoulder. Observe the chest: is it rising and falling? Listen for breath sounds. Look for signs of life.",
)

#v(2pt)

#decision-box("Is the person responsive and breathing normally?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in recovery position (on their side). Monitor breathing continuously until MDA arrives. Keep warm -- remove wet clothing, cover with dry blankets. Go to Step 8.],
  no-branch[The person needs immediate CPR. Proceed to Step 5.],
)

#arrow-down()

// Step 5
#step-box(5, "Position the person on their back on a firm, flat surface away from the water.",
  detail: "Ensure the surface is dry. This is essential for effective chest compressions and safe AED use.",
)

#arrow-down()

// Step 6
#step-box(6, "Begin CPR.",
  detail: "Drowning is a hypoxic (oxygen-deprivation) emergency, making rescue breaths especially important. The recommended CPR sequence for drowning differs from standard cardiac arrest.",
)

#v(2pt)

#decision-box("Are you trained in full CPR with rescue breaths?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use the ABC approach (Airway, Breathing, Compressions): open the airway, give 2 rescue breaths, then begin chest compressions. Continue at 30:2 ratio. Compress at 100/min.],
  no-branch[Perform hands-only CPR (chest compressions only) at 100 compressions per minute. Use "Stayin' Alive" by the Bee Gees as a tempo guide. Continue without stopping until MDA arrives.],
)

#arrow-down()

// Step 7
#step-box(7, "Use an AED if one is available.",
  detail: "Dry the patient's chest thoroughly and ensure they are on a dry surface before applying AED pads. Follow the AED's voice prompts. Continue CPR between AED analysis/shock cycles as directed by the device.",
  warning: "Using an AED on a wet patient or wet surface risks electrical injury to the patient and rescuer. Always dry the chest and move to a dry area first.",
)

#arrow-down()

// Step 8
#step-box(8, "Continue CPR or monitoring until MDA paramedics arrive.",
  detail: "Do not stop CPR unless the person begins breathing on their own or professional medical help takes over. If the person regains consciousness, place them in the recovery position and monitor continuously.",
)

#arrow-down()

// Step 9
#step-box(9, "Ensure hospital transport regardless of apparent recovery.",
  detail: "Even if the person regains consciousness and appears stable, mandatory hospital transport is required. Dangerous electrolyte imbalances can develop after drowning. Secondary drowning (delayed pulmonary edema) can cause symptoms 1-24 hours after the incident.",
  warning: "Do NOT allow the person to refuse treatment or walk away. A person who appears recovered can deteriorate rapidly hours later due to secondary drowning or electrolyte toxicity.",
)

#v(8pt)

// DO NOT list
#do-not-box((
  "DO NOT enter the water to rescue someone unless you are a trained swimmer or lifeguard -- untrained rescuers frequently become drowning victims.",
  "DO NOT attempt to remove water from the victim's lungs. MDA states this is impossible, dangerous, and a waste of critical time.",
  "DO NOT perform the Heimlich maneuver, turn the person upside down, or use any other method to 'drain' water from the lungs.",
  "DO NOT use an AED on a wet patient or on a wet surface -- dry the chest and move to a dry area first.",
  "DO NOT allow a near-drowning victim to refuse hospital transport, even if they appear fully recovered.",
  "DO NOT stop CPR until the person is breathing on their own or professional medical help takes over.",
  "DO NOT delay calling 101 -- call immediately, even before attempting rescue if you are alone.",
))

#v(6pt)

// Equipment
#equipment-box((
  "AED (defibrillator) -- commonly available at lifeguard stations and public facilities in Israel",
  "Reaching aids (pole, rope, flotation device) for water rescue",
  "Dry blankets or clothing to keep the victim warm after extraction",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA 101 Public First Aid Guidance Series; corroborated by MDA ALS Manual April 2024 \
  Protocol ID: IL-ADULT-DROWNING-001 · Imported: 2026-03-15 · Last verified: 2026-03-15 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
