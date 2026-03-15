// First Aid Protocol Flowchart — Spider Bites (Adult, Israel)
// Generated from protocol IL-ADULT-SPIDER-BITES-001
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
  #text(size: 22pt, weight: "bold")[Spider Bites — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-SPIDER-BITES-001]
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
  #text(size: 10pt)[Person has been bitten or suspected bitten by a spider. Signs vary by species: local pain, swelling, redness at bite site; for recluse bites -- initially painless "pricking sensation" progressing to burning, swelling, blistering, and blue-white-red concentric pattern; for black widow bites -- local pain (onset 15 minutes to 1 hour), two fang marks, spreading pain, muscle cramps/spasms (especially abdominal), sweating.]
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
  #text(size: 10pt)[Stay calm, clean the bite with soap and water, apply cool compress, elevate the bitten area, do not apply tourniquet or cut the wound, attempt spider identification if safe, call MDA at 101 or the Poison Center at 04-7771900 if symptoms are severe or involve a suspected black widow or recluse bite.]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Stay calm and move away from the spider.",
  detail: "Reassure the victim that most spider bites in Israel are not life-threatening. Do not attempt to catch the spider, but if safely possible, note its appearance or take a photo for identification.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Clean the bite wound with mild soap and water.",
  detail: "Gently wash the bite area to reduce infection risk.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 3
#step-box(3, "Apply a cool compress to the bite site.",
  detail: "Use a clean cloth dampened with cold water or a wrapped ice pack. Apply for 15 minutes per hour to reduce pain and swelling. Do not apply ice directly to skin.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4
#step-box(4, "Keep the bitten area elevated and still.",
  detail: "Elevate the bitten limb above heart level if possible. Minimise movement of the affected area.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5
#step-box(5, "Attempt to identify the spider if it can be done safely.",
  detail: "Photograph the spider or note its colour, size, and distinguishing features. Do not risk another bite. Two species of medical significance in Israel: Mediterranean recluse (Loxosceles rufescens) -- small brown 'violin spider,' very common in citrus groves and buildings; Mediterranean black widow (Latrodectus tredecimguttatus) -- dark with markings, less common but more systemically dangerous.")

#v(4pt)

// Decision point for Step 5
#decision-box("Can the spider be safely identified or photographed without risk of additional bites?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Take a photograph or note distinguishing features. Share with medical responders.],
  no-branch[Do not approach the spider. Report any details you observed to paramedics when they arrive.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "Assess whether the bite requires emergency medical attention.")

#v(4pt)

// Decision point for Step 6
#decision-box("Is the victim showing any of the following: severe pain, muscle cramps/spasms (especially abdominal), difficulty breathing, nausea/vomiting/fever, spreading redness or discolouration, or any systemic symptoms beyond the bite site?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call MDA at 101 immediately. Also call the Poison Center at 04-7771900. This requires urgent medical evaluation. Proceed to Step 7.],
  no-branch[Monitor the bite. Call the Poison Center at 04-7771900 for guidance. Seek medical attention if symptoms worsen or the victim is a child, elderly, or has pre-existing conditions.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7
#step-box(7, "Determine suspected spider type for appropriate monitoring.")

#v(4pt)

// Decision point for Step 7
#decision-box("Is a black widow (Latrodectus) bite suspected? Signs: local pain onset within an hour, muscle cramps/spasms, abdominal pain, sweating, spreading pain.")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call MDA at 101 immediately -- black widow bites require hospital evaluation and possible antivenom. Monitor breathing closely as respiratory compromise is possible in severe cases. Keep the victim calm and still.],
  no-branch[If recluse (Loxosceles) suspected: initially painless bite progressing to burning, blistering, blue-white-red pattern. Call Poison Center (04-7771900) for guidance. Seek medical attention -- do not wait for symptoms to worsen. Do NOT attempt to cut out or excise the bite wound.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8
#step-box(8, "Monitor the victim while awaiting medical help.",
  detail: "Watch for worsening local symptoms (spreading redness, necrosis, increasing swelling) and systemic symptoms (muscle cramps, breathing difficulty, nausea, fever, confusion). Be prepared to report all observations to arriving paramedics.")

#v(4pt)

// Decision point for Step 8
#decision-box("Is the victim conscious and breathing adequately?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. Keep the bitten area elevated, cool compress applied, and the victim calm.],
  no-branch[If unconscious but breathing, place in recovery position. If not breathing, begin CPR immediately. Call MDA at 101 if not already done.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT apply a tourniquet -- spider venom is not stopped by tourniquets and a tourniquet will cause tissue damage.",
  "DO NOT cut, suck, or apply suction to the bite wound -- this is ineffective and increases infection risk.",
  "DO NOT apply heat to the bite -- use only cool compresses.",
  "DO NOT attempt to catch the spider at risk of additional bites -- photograph from a safe distance if possible.",
  "DO NOT attempt to cut out or excise a recluse spider bite wound -- early surgical excision is contraindicated and worsens outcomes.",
  "DO NOT apply ice directly to skin -- wrap in cloth first.",
  "DO NOT ignore initially mild symptoms -- recluse bites are often painless at first but progress to serious tissue necrosis over hours to days.",
  "DO NOT assume a bite is from a spider without confirmation -- 83.5% of cases presenting as 'spider bites' are actually other conditions (bacterial infections, allergic reactions, other arthropod bites).",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Phone to call 101 (MDA) and 04-7771900 (Israel Poison Information Center)",
  "Phone or camera to photograph the spider if safe to do so",
  "Mild soap and clean water for wound cleaning",
  "Clean cloth or wrapped ice pack for cool compress",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — First Aid for Spider Bites - Mediterranean Recluse and Black Widow \
  Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
