// First Aid Protocol Flowchart — Snakebite (Adult, Israel)
// Generated from protocol IL-ADULT-SNAKEBITE-001
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
  #text(size: 22pt, weight: "bold")[Snakebite — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-SNAKEBITE-001]
]

#v(8pt)

// Primary emergency number
#emergency-box("101", [MDA (#heb[מד״א])])

#v(4pt)

// All emergency numbers strip
#all-emergency-numbers()

#v(4pt)

// Poison Information Center
#rect(
  fill: rgb("#fef9c3"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #set text(size: 10pt)
  #align(center)[
    #strong[Israel Poison Information Center (24/7):] 04-7771900 — Rambam Health Care Campus, Haifa
  ]
]

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
  #text(size: 10pt)[Person has been bitten or suspected bitten by a snake. Signs include: puncture marks on skin, pain and swelling at bite site, redness or bruising around the wound. May progress to nausea, vomiting, abdominal pain, tachycardia, hypotension, difficulty breathing, or altered consciousness.]
]

#v(6pt)

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
  #text(size: 10pt)[Immobilise the victim and bitten limb, call 101 immediately, clean wound with soap and water only, monitor for systemic reaction, and transport to hospital for evaluation and possible antivenom.]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Call MDA immediately at 101.",
  detail: "MDA dispatch will provide real-time telephone guidance until paramedics arrive. Remain calm when calling -- do not create panic, as stress increases the victim's heart rate and accelerates venom spread.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Keep the victim calm and completely still.",
  detail: "Reassure the victim and reduce their stress and anxiety. Have them lie down. Immobility and a low heart rate are critical to slowing the spread of venom through the body. Panic increases heart rate and accelerates venom circulation.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 3
#step-box(3, "Position and immobilise the bitten limb.",
  detail: "Position the bitten limb below heart level. The limb should not move at all. Immobilise (splint) the affected limb against the body to prevent any movement.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4
#step-box(4, "Remove constrictive items from the bite area.",
  detail: "Remove jewellery, watches, rings, and tight clothing from the bitten area and the entire affected limb. The bite area will swell, and constrictive items can cause additional tissue damage.",
  warning: "Swelling can progress rapidly. Remove all constrictive items as early as possible.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5
#step-box(5, "Clean the bite wound with soap and water only.",
  detail: "Gently wash the bite area with soap and water. Do NOT use alcohol-based disinfectants or any other cleaning agents.",
  warning: "Do NOT use alcohol-based disinfectants on the bite wound.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "Attempt to identify the snake if it can be done safely.",
  detail: "If possible, photograph the snake from at least 2 metres away while remaining safe. If the snake is dead, keep it to show medical staff. Identification helps determine whether antivenom is needed and which type.",
  warning: "Do NOT attempt to catch or kill the snake. All snakes in Israel are protected under the Wildlife Protection Law. Approaching a snake risks additional bites.")

#v(4pt)

// Decision point for Step 6
#decision-box("Can the snake be safely photographed from at least 2 metres away?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Take a clear photograph of the snake and share it with arriving paramedics. Note the snake's colour, pattern, and approximate size.],
  no-branch[Do not approach the snake. Note any details you observed (colour, size, head shape) and report them to paramedics.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7
#step-box(7, "Monitor the victim for signs of systemic reaction or anaphylaxis.",
  detail: "Continuously watch for: difficulty breathing or swallowing, swelling spreading beyond the bite area, rash or itching, abdominal pain, nausea, vomiting, changes in consciousness, drop in blood pressure, rapid heart rate.")

#v(4pt)

// Decision point for Step 7
#decision-box("Is the victim showing signs of severe systemic reaction (difficulty breathing, altered consciousness, severe swelling, hypotension)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Report symptoms immediately to MDA dispatch on the phone. Prepare to manage airway if victim loses consciousness. If the victim stops breathing, begin CPR. Keep the victim lying down with legs elevated if blood pressure drops.],
  no-branch[Continue monitoring while keeping the victim calm and still. Await paramedic arrival.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8
#step-box(8, "Wait for MDA paramedics and prepare for hospital transport.",
  detail: "The victim must be transported to a hospital for evaluation and possible antivenom administration. Antivenom is available for Daboia palaestinae and Echis coloratus bites (polyvalent equine-derived antiserum manufactured by Kamada Ltd.). Note: there is no antivenom available for Atractaspis engaddensis (Israeli mole viper) bites.")

#v(4pt)

// Decision point for Step 8
#decision-box("Is the victim in a remote location where MDA response will be significantly delayed?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If safe transport is available, begin moving the victim to the nearest hospital while keeping them immobile and the bitten limb below heart level. Maintain phone contact with MDA dispatch for guidance.],
  no-branch[Wait for MDA paramedics to arrive. Do not move the victim unnecessarily.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT apply a tourniquet -- it traps venom locally and causes severe tissue damage.",
  "DO NOT suck the venom out of the wound -- this is ineffective and dangerous.",
  "DO NOT cut or incise the bite area -- this increases infection risk and does not help remove venom.",
  "DO NOT cool or apply ice to the bite area -- this can worsen tissue damage.",
  "DO NOT give the victim food or drink -- this may complicate hospital treatment.",
  "DO NOT induce vomiting.",
  "DO NOT give aspirin, ibuprofen, or naproxen -- these can worsen bleeding because viper venom is often anticoagulant.",
  "DO NOT use alcohol-based disinfectants on the wound.",
  "DO NOT attempt to catch or kill the snake -- snakes are protected under Israeli law and approaching them risks additional bites.",
  "DO NOT allow the victim to walk or move the bitten limb -- movement accelerates venom circulation.",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Splint or improvised immobilisation material",
  "Soap and clean water for wound cleaning",
  "Phone or camera to photograph the snake",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — "How to Treat a Snake Bite (#heb[כיצד לטפל בהכשת נחש])" · MDA 101 Public First Aid Guidance Series \
  Imported: 2026-03-15 · Last verified: 2026-03-15 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
