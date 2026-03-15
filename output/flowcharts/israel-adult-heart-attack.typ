// First Aid Protocol Flowchart — Heart Attack / Chest Pain (Adult) — Israel
// Generated from: protocols/adult/israel/heart-attack.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "Heart Attack / Chest Pain -- Adult"
#let protocol-category = "heart_attack"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2024-04-01"
#let last-verified = "2026-03-15"
#let edition = "MDA ALS Protocol 2024 / BLS Guide 2016"

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
      CALL #number (#service) -- CALL IMMEDIATELY IF IN DOUBT
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES ->] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO ->] #content
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
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
      #text(fill: rgb("#dc2626"))[X] #item \
    ]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country -- #age-group]
]

#v(6pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(6pt)

// When to apply
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[WHEN TO APPLY:] An adult presents with chest pain or pressure (tightness, squeezing, heaviness, or burning in the centre of the chest) lasting more than 15 minutes, possibly with radiating pain to the arms, neck, jaw, back, or upper abdomen; shortness of breath; cold sweating; nausea; dizziness; or a feeling of impending doom. Atypical presentations (especially in women) may include extreme fatigue, upper back pain, or symptoms resembling heartburn without significant chest pain.
]

#v(4pt)

// Equipment
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(weight: "bold", size: 10pt)[Equipment needed:] Aspirin tablets (100 mg, 1--3 tablets) | AED (if available) | Phone (for 101/1221) | Nitroglycerin (only if prescribed to patient)
]

#v(6pt)

// ==========================================
// STEP 1: Call 101
// ==========================================
#step-box(1,
  "Call 101 (MDA) immediately.",
  detail: "State clearly that you suspect a heart attack. Provide the location and the patient's condition. Stay on the line -- the MDA dispatcher can guide you through first aid steps. If possible, ask a bystander to simultaneously call 1221 (United Hatzalah) and to call a family member.",
)

#arrow-down()

// ==========================================
// STEP 2: Stop all activity
// ==========================================
#step-box(2,
  "Stop all physical activity -- the patient must rest completely.",
  detail: "Do not allow the patient to walk, go to the bathroom, or make any physical effort. Even minor exertion can worsen damage to the heart muscle by increasing its oxygen demand.",
  warning: "Any physical activity, even minor, can significantly worsen heart muscle damage.",
)

#arrow-down()

// ==========================================
// STEP 3: Position the patient
// ==========================================
#step-box(3,
  "Position the patient in a comfortable half-sitting position (semi-reclined) with their back supported and knees slightly bent.",
  detail: "The half-sitting position eases breathing and reduces the heart's workload. Alternatively, allow them to lie on their side if they prefer. Loosen tight clothing -- unbutton collar, loosen belt, remove tie. Keep the patient calm and speak reassuringly; stress increases the heart's oxygen demand. In Israel's hot climate, keep the patient cool and shaded while waiting.",
)

#arrow-down()

// ==========================================
// STEP 4: Aspirin allergy check
// ==========================================
#step-box(4,
  "Ask the patient whether they have a known allergy or sensitivity to aspirin.",
)

#v(4pt)
#decision-box("Is the patient allergic to aspirin?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT give aspirin. Inform the arriving MDA team about the allergy. Skip to Step 6.],
  no-branch[Proceed to Step 5 (administer aspirin).],
)

#arrow-down()

// ==========================================
// STEP 5: Administer aspirin
// ==========================================
#step-box(5,
  "Administer 100--300 mg of aspirin. The patient must CHEW the aspirin, not swallow it whole.",
  detail: "In Israel, standard aspirin tablets are commonly 100 mg (Micro-Aspirin). Give 1 to 3 tablets for a total of 100--300 mg. Chewing ensures faster absorption into the bloodstream. Aspirin inhibits platelet aggregation (blood clotting), helping to limit the blockage in the coronary artery and reduce damage to the heart muscle.",
  warning: "Paracetamol (acetaminophen / Acamol) is NOT a substitute for aspirin. Only aspirin (acetylsalicylic acid) provides the needed antiplatelet effect.",
)

#arrow-down()

// ==========================================
// STEP 6: Nitroglycerin check
// ==========================================
#step-box(6,
  "Check whether the patient has a personal prescription for nitroglycerin (spray or sublingual tablets).",
)

#v(4pt)
#decision-box("Does the patient have their own prescribed nitroglycerin?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Help the patient take their nitroglycerin as directed by their physician.],
  no-branch[Do NOT administer nitroglycerin. Proceed to Step 7.],
)

#arrow-down()

// ==========================================
// STEP 7: Monitor continuously
// ==========================================
#step-box(7,
  "Monitor the patient continuously. Stay with them at all times.",
  detail: "Watch for changes in consciousness, breathing, and skin colour. Be prepared to escalate to CPR if the patient loses consciousness.",
)

#arrow-down()

// ==========================================
// STEP 8: AED
// ==========================================
#step-box(8,
  "If an AED is available nearby, send someone to retrieve it.",
  detail: "AEDs are widely deployed in Israeli public spaces (malls, train stations, public buildings). MDA maintains a registry of AED locations. Turn the AED on -- it will provide step-by-step voice instructions in Hebrew. No prior training is required. Apply pads as shown in the diagrams on the device. Do not apply the AED unless the patient becomes unresponsive and stops breathing normally.",
)

#arrow-down()

// ==========================================
// STEP 9: Consciousness check
// ==========================================
#step-box(9,
  "If the patient loses consciousness, check for responsiveness and normal breathing.",
  detail: "Tap and shout. Check for normal breathing: look for chest rise, listen for breath sounds, feel for air -- no more than 10 seconds. Gasping (agonal breathing) is NOT normal breathing.",
)

#v(4pt)
#decision-box("Is the patient unconscious and not breathing normally?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Begin CPR immediately (proceed to Step 10).],
  no-branch[Continue monitoring. Maintain the half-sitting position and keep the patient calm.],
)

#pagebreak()

// Page 2 header
#align(center)[
  #text(size: 18pt, weight: "bold")[#protocol-title -- continued]
  #v(2pt)
  #text(size: 11pt, fill: rgb("#6b7280"))[#country -- #age-group]
]

#v(6pt)

// ==========================================
// STEP 10: CPR
// ==========================================
#rect(
  fill: rgb("#dbeafe"),
  stroke: 2pt + rgb("#2563eb"),
  radius: 8pt,
  width: 100%,
  inset: 12pt,
)[
  #set text(size: 14pt, weight: "bold")
  #align(center)[CPR KEY PARAMETERS]
  #v(4pt)
  #set text(size: 12pt, weight: "regular")
  #grid(columns: (1fr, 1fr, 1fr), gutter: 12pt,
    align(center)[
      #text(weight: "bold", size: 16pt)[100--120]\
      compressions/min
    ],
    align(center)[
      #text(weight: "bold", size: 16pt)[5+ cm]\
      depth (at least)
    ],
    align(center)[
      #text(weight: "bold", size: 16pt)[30 : 2]\
      compressions : breaths
    ],
  )
]

#v(6pt)

#step-box(10,
  "Begin CPR: place the heel of one hand on the centre of the chest (sternum), other hand on top. Compress hard and fast.",
  detail: "Compress to a depth of at least 5 cm at a rate of 100--120 compressions per minute. Allow full chest recoil between compressions. If trained and willing, give 30 compressions followed by 2 rescue breaths. If untrained or unwilling, perform hands-only CPR (continuous compressions without breaths).",
  warning: "Do not stop CPR until MDA arrives and takes over, an AED is applied, or the patient regains consciousness and starts breathing normally.",
)

#arrow-down()

// ==========================================
// STEP 11: AED in cardiac arrest
// ==========================================
#step-box(11,
  "If an AED is available and the patient is in cardiac arrest, apply it immediately and follow voice prompts.",
  detail: "Apply pads as shown on the device. Ensure no one is touching the patient during analysis and shock delivery. Resume CPR immediately after shock delivery or if no shock is advised.",
)

#v(4pt)
#decision-box("Does the AED advise a shock?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Ensure everyone is clear of the patient, press the shock button, then resume CPR immediately.],
  no-branch[Resume CPR immediately. The AED will re-analyse after approximately 2 minutes.],
)

#v(12pt)

// ==========================================
// DO NOT list
// ==========================================
#do-not-box((
  "Do not allow the patient to walk, exert themselves, or dismiss their symptoms.",
  "Do not give the patient food or beverages.",
  "Do not leave the patient alone (except briefly to call for help).",
  "Do not give aspirin if the patient is allergic to it.",
  "Do not give nitroglycerin that was not prescribed to this specific patient.",
  "Do not wait to see if symptoms resolve on their own -- every minute of delay increases irreversible heart muscle damage.",
  "Do not drive the patient to hospital yourself -- call 101 and wait for the ambulance. MDA has cardiac monitoring equipment and can begin treatment en route.",
  "Do not substitute paracetamol (Acamol) for aspirin -- only aspirin provides the needed antiplatelet effect.",
  "Do not give aspirin as a whole tablet -- it must be chewed for rapid absorption.",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | Edition: #edition | Published: #source-date | Last verified: #last-verified \
  Protocol ID: IL-ADULT-HEART-ATTACK-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
