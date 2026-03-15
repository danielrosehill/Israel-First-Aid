// First Aid Protocol Flowchart — Scorpion Stings (Adult, Israel)
// Generated from protocol IL-ADULT-SCORPION-STINGS-001
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
  #text(size: 22pt, weight: "bold")[Scorpion Stings — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-SCORPION-STINGS-001]
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
  #text(size: 10pt)[Person has been stung or suspected stung by a scorpion. Signs include: immediate intense pain at the sting site, mild to moderate swelling and redness, numbness or tingling at the sting site. May progress to systemic symptoms including restlessness, altered consciousness, seizures, difficulty breathing, excessive sweating, tachycardia, hypertension, nausea, or vomiting. Local symptom severity does NOT reliably predict systemic danger.]
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
  #text(size: 10pt)[Call 101 immediately, keep the victim calm and still, immobilise the affected limb, remove constrictive items, monitor for systemic reaction, and transport to hospital for mandatory observation (minimum 6 hours).]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Call MDA immediately at 101.",
  detail: "Request an ambulance. Follow dispatch instructions until the medical team arrives. All scorpion stings require hospital evaluation -- do not wait to see if symptoms develop.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Keep the victim calm and still.",
  detail: "Reassure the victim and reduce stress and anxiety. Have the victim lie down. Minimise all movement -- movement and elevated heart rate accelerate venom spread through the bloodstream. Panic and agitation worsen the clinical outcome.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 3
#step-box(3, "Immobilise the affected limb.",
  detail: "Keep the stung limb as still as possible. Position the limb at or below heart level to slow venom distribution.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4
#step-box(4, "Remove constrictive items from the sting area.",
  detail: "Remove jewellery, watches, rings, and tight clothing near the sting site. The area may swell significantly.",
  warning: "Swelling can progress rapidly. Remove all constrictive items as early as possible.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5
#step-box(5, "Assess for signs of systemic envenomation.",
  detail: "Watch for: restlessness, altered consciousness, confusion, difficulty breathing or swallowing, excessive sweating, salivation, or tearing, rapid or irregular heartbeat, seizures or muscle twitching, nausea, vomiting, abdominal pain, changes in blood pressure.")

#v(4pt)

// Decision point for Step 5
#decision-box("Is the victim showing any systemic symptoms beyond local pain (altered consciousness, difficulty breathing, seizures, cardiovascular changes)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Report symptoms immediately to MDA dispatch. This is a severe envenomation requiring urgent hospital transport. Maintain airway (ABC). If the victim stops breathing, begin CPR. Provide oxygen if available and trained to do so.],
  no-branch[Continue monitoring while keeping the victim calm and still. All scorpion sting victims still require hospital transport and observation.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "Attempt to identify the scorpion if it can be done safely.",
  detail: "If possible, photograph the scorpion or note its colour and size. The deathstalker (Leiurus quinquestriatus) is yellow and is the most dangerous species in Israel. However, the common belief that black scorpions are not dangerous is FALSE -- several black species are medically significant.")

#v(4pt)

// Decision point for Step 6
#decision-box("Can the scorpion be safely identified or photographed without risk of additional stings?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Take a photograph or note the scorpion's colour, size, and any distinguishing features. Share this information with arriving paramedics.],
  no-branch[Do not approach the scorpion. Report any details you observed to paramedics when they arrive.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7
#step-box(7, "Maintain ABC (Airway, Breathing, Circulation) support while awaiting paramedics.",
  detail: "Continuously monitor the victim's airway, breathing, and circulation. Be prepared to intervene if the victim's condition deteriorates.")

#v(4pt)

// Decision point for Step 7
#decision-box("Is the victim conscious and breathing adequately?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. Keep the victim lying down with the stung limb immobilised at or below heart level.],
  no-branch[If unconscious but breathing, place in recovery position. If not breathing, begin CPR immediately. Report status change to MDA dispatch.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8
#step-box(8, "Wait for MDA paramedics and prepare for hospital transport.",
  detail: "All scorpion sting victims must be observed in the emergency department for a minimum of 6 hours from the time of sting (Israel Poison Information Center guideline). Scorpion antivenom is available in Israeli hospitals and may be administered in rare, severe cases based on clinical presentation.")

#v(4pt)

// Decision point for Step 8
#decision-box("Is the victim in a remote location where MDA response will be significantly delayed?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If safe transport is available, begin moving the victim to the nearest hospital while keeping them immobile and the stung limb at or below heart level. Maintain phone contact with MDA dispatch for guidance.],
  no-branch[Wait for MDA paramedics to arrive. Do not move the victim unnecessarily.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT apply a tourniquet -- it traps venom locally and causes tissue damage; it does not prevent systemic spread.",
  "DO NOT suck the venom out of the wound -- this is ineffective and potentially harmful.",
  "DO NOT cut the sting area -- this increases infection risk and does not remove venom.",
  "DO NOT apply ice or cool the sting area -- the Israeli Ministry of Health (2026) explicitly advises against cooling. If MDA dispatch specifically instructs cooling, use indirect application only (ice wrapped in cloth) and keep it brief.",
  "DO NOT give the victim food or drink -- this risks venom dispersal and may complicate hospital treatment.",
  "DO NOT allow the victim to walk or move the stung limb -- movement accelerates venom circulation.",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Phone to call 101 (MDA) and optionally 04-7771900 (Poison Center)",
  "Phone or camera to photograph the scorpion if safe to do so",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — "First Aid for Scorpion Stings (#heb[עקיצת עקרב — עזרה ראשונה])" · MDA 101 Public First Aid Guidance Series \
  Imported: 2026-03-15 · Last verified: 2026-03-15 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
