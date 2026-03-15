// First Aid Protocol Flowchart — Poisoning (Adult, Israel)
// Generated from protocol IL-ADULT-POISONING-001
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
  #text(size: 22pt, weight: "bold")[Poisoning — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-POISONING-001]
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
  #text(size: 10pt)[Suspected poisoning through any route: ingestion of toxic substances (medications, cleaning products, chemicals, plants), inhalation of toxic fumes or gases (carbon monoxide, chlorine gas, chemical fumes), skin or eye contact with hazardous chemicals, or injection of toxins (venomous bites/stings, IV drug use). Signs include: nausea, vomiting, abdominal pain, confusion, drowsiness, breathing difficulty, seizures, chemical burns around mouth or skin, unusual smell on breath, or loss of consciousness.]
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
  #text(size: 10pt)[Scene safety assessment, call for help, identify route of exposure, provide route-specific first aid, preserve the substance, and monitor the patient until emergency services arrive.]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety before approaching the patient.",
  detail: "Assess the environment for hazards. Protect yourself from contamination. For suspected inhalation poisoning, do not enter a confined space with potential toxic fumes without proper protection -- wait for trained responders with protective equipment.",
  warning: "Do NOT enter areas with potential toxic gas exposure. You cannot help the patient if you become a casualty.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Call 101 (MDA) immediately. Call the Israel Poison Information Center at 04-7771900 for substance-specific guidance.",
  detail: "Be prepared to provide: the substance involved, estimated amount, time of exposure, patient's age and weight, current symptoms, and the route of exposure (ingestion, inhalation, skin contact, or injection).")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 3
#step-box(3, "Preserve the substance container, packaging, or remaining material.",
  detail: "Collect and keep all containers, packaging, pills, or remaining substance. Bring them to the hospital or have them available for emergency responders. This is critical for identification and appropriate treatment. If the patient has vomited, preserve a sample for analysis if possible.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4 — Decision: Route of exposure
#step-box(4, "Determine the route of exposure.")

#v(4pt)

#decision-box("Was the poison ingested (swallowed)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 5 for ingestion-specific treatment.],
  no-branch[Proceed to Step 7 to check for inhalation exposure.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5 — Decision: Caustic substance?
#step-box(5, "For ingestion poisoning: determine if a caustic or corrosive substance was swallowed.",
  warning: "Do NOT induce vomiting. Vomiting is often ineffective, caustic substances cause additional burns on the way back up, and there is a risk of aspiration.")

#v(4pt)

#decision-box("Was a caustic or corrosive substance ingested (acids, bases, strong detergents)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[NEVER induce vomiting. If the patient is conscious and breathing normally, give approximately 1 cup (250 ml) of water or milk to dilute the substance. Seek immediate medical care. Proceed to Step 10.],
  no-branch[Do NOT induce vomiting unless specifically directed by the Poison Information Center or a physician. If poison remains in the mouth, attempt careful removal. Do not give food or drink unless directed by the Poison Information Center. Proceed to Step 10.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "For ingestion: do NOT give activated charcoal unless directed by medical professionals.",
  detail: "Activated charcoal is effective only within 1-2 hours of exposure and only for certain substances. This is a medical-level intervention, not a first aid action.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7 — Decision: Inhalation?
#step-box(7, "Check for inhalation exposure.",
  warning: "Never mix bleach (Economica) with other cleaning products, especially acidic substances -- this releases toxic chlorine gas.")

#v(4pt)

#decision-box("Was the poison inhaled (toxic fumes, gases, carbon monoxide)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Move the patient to fresh air immediately -- remove from the contaminated area. Do NOT enter the area yourself if there is a risk of toxic gas exposure. Call 101. Proceed to Step 9.],
  no-branch[Proceed to Step 8 to check for skin or eye contact.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8 — Decision: Skin/eye contact?
#step-box(8, "Check for skin or eye contact exposure.")

#v(4pt)

#decision-box("Did the poison contact the skin or eyes?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Remove contaminated clothing immediately (protect yourself while doing so). For skin contact: flush the affected area with large amounts of cool running water for at least 15-20 minutes. For eye contact: rinse and flush eyes thoroughly with running water for at least 15 minutes, holding eyelids open. Do NOT attempt to chemically neutralise the substance. Proceed to Step 10.],
  no-branch[The exposure may be through injection (bites, stings, IV drug use). Proceed to Step 10 for general monitoring.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 9 — Decision: Breathing after inhalation?
#step-box(9, "For inhalation exposure: assess the patient's breathing after moving to fresh air.")

#v(4pt)

#decision-box("Is the patient breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Monitor breathing and vital signs continuously. Keep the patient calm and warm. Proceed to Step 10.],
  no-branch[Begin CPR immediately. Continue until emergency services arrive.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 10 — Decision: Conscious?
#step-box(10, "Assess the patient's level of consciousness.")

#v(4pt)

#decision-box("Is the patient conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Keep the patient calm and warm. Monitor breathing, pulse, and level of consciousness continuously. Do not leave the patient alone. Wait for emergency services.],
  no-branch[Proceed to Step 11.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 11 — Decision: Unconscious and breathing?
#step-box(11, "For an unconscious patient: check for breathing.")

#v(4pt)

#decision-box("Is the unconscious patient breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in the recovery position (lateral/side-lying position) to prevent aspiration. Monitor breathing continuously. Do not leave the patient alone.],
  no-branch[Begin CPR immediately. Continue until emergency services arrive.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 12
#step-box(12, "Recovery position for unconscious but breathing patients.",
  detail: "Kneel beside the patient. Place the arm nearest to you at a right angle to the body. Bring the far arm across the chest and hold the back of the hand against the near cheek. Pull the far knee up and roll the patient towards you onto their side. Adjust the top leg so the knee is at a right angle. Tilt the head back slightly to keep the airway open. Monitor breathing continuously.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 13
#step-box(13, "Continue monitoring until emergency services arrive.",
  detail: "Monitor breathing and pulse continuously. Be prepared to perform CPR if breathing or heartbeat stops. Keep the patient warm and calm. Do not leave the patient alone. Provide all collected substance information to arriving medical team.")

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT induce vomiting unless specifically directed by the Poison Information Center (04-7771900) or a physician.",
  "Do NOT give food or drink unless directed by medical professionals (exception: water or milk for conscious patients who ingested caustic substances, as directed).",
  "Do NOT attempt to neutralise the poison (e.g., giving acid for base ingestion or vice versa).",
  "Do NOT use home remedies (salt water, mustard, raw eggs, etc.).",
  "Do NOT give activated charcoal without medical direction.",
  "Do NOT enter a confined space with potential toxic fumes without proper protection.",
  "Do NOT delay calling for help -- even if symptoms appear mild, they can deteriorate rapidly.",
  "Do NOT administer antidotes -- this is a hospital-level intervention only.",
  "Do NOT leave the patient alone.",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Gloves (to protect against contamination)",
  "Running water source (for skin or eye decontamination)",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — "Poisoning First Aid Guidance (#heb[הרעלות])" · MDA 101 Public First Aid Guidance Series; corroborated by Rambam National Poison Information Center guidance \
  Imported: 2026-03-15 · Last verified: 2026-03-15 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
