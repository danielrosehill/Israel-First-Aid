// First Aid Protocol Flowchart — Allergic Reaction / Anaphylaxis in Children (Israel)
// Generated from: protocols/child/israel/allergic-reaction.json
// Protocol ID: IL-CHILD-ALLERGIC-REACTION-001

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "ALLERGIC REACTION / ANAPHYLAXIS IN CHILDREN"
#let protocol-category = "allergic_reaction"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2024-04-01"
#let last-verified = "2026-03-15"

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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES -> ] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO -> ] #content
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

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#9ca3af"))[Source: #source-authority | Published: #source-date | Verified: #last-verified]
]

#v(6pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// When to apply
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[When to apply:] Child showing signs of severe allergic reaction -- any combination of: skin symptoms (hives, swelling of face/lips/tongue), respiratory symptoms (wheezing, stridor, throat tightness, difficulty breathing), cardiovascular symptoms (weak/rapid pulse, pallor, cyanosis, confusion, loss of consciousness), GI symptoms (vomiting, diarrhoea, abdominal pain), or behavioural changes (sudden irritability, inconsolable crying, clinging). *Any involvement of breathing, circulation, or consciousness = anaphylaxis -- do not wait.*
]

#v(6pt)

// --- STEP 1 ---
#step-box(1, "Ensure scene safety and recognise anaphylaxis.",
  detail: "Look for behavioural cues in young children: sudden distress, inconsolable crying, drooling, difficulty swallowing. Skin: hives, facial swelling, pallor. Respiratory: wheezing, stridor, throat tightness, hoarse voice or change in cry. Any involvement of breathing, circulation, or consciousness indicates anaphylaxis."
)

#v(4pt)

#decision-box("Are signs of anaphylaxis present?\n(breathing difficulty, facial/throat swelling, cardiovascular compromise, or multi-system involvement)")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed immediately to Step 2. Do not wait for symptoms to worsen.],
  no-branch[Monitor closely. If only mild skin symptoms with no breathing or circulation involvement, observe and be prepared to escalate.],
)

#arrow-down()

// --- STEP 2 ---
#step-box(2, "Call MDA at 101 immediately.",
  detail: "Keep phone on speaker. State child's age and approximate weight. Mention if the child has a known allergy and whether an EpiPen is available. United Hatzalah can also be reached at 1221."
)

#arrow-down()

// --- STEP 3 ---
#step-box(3, "Remove the triggering allergen if possible.",
  detail: "Remove food from child's mouth. Remove bee stinger by scraping sideways (do not squeeze). Move child away from allergen source if environmental. Do not induce vomiting."
)

#arrow-down()

// --- STEP 4 ---
#step-box(4, "Manage the airway.",
  detail: "If facial or tongue swelling is present, assume airway compromise. Ensure the tongue is not obstructing the airway. Remove any food debris from the mouth. Loosen tight clothing around the neck and chest.",
  warning: "In infants: tilt head only slightly back to a neutral position. Do not over-extend the neck as this can collapse the infant's airway."
)

#v(4pt)

#decision-box("Is the child an infant (under 1 year)?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use neutral head position only -- slight head tilt. Do not over-extend the neck.],
  no-branch[Use standard head-tilt chin-lift if needed to open the airway.],
)

#arrow-down()

// --- STEP 5 ---
#step-box(5, "Position the child appropriately.")

#v(4pt)

#decision-box("Is the child conscious?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If breathing difficulty: allow upright position of comfort (do not force to lie down). If no breathing difficulty: lie flat on back with legs elevated.],
  no-branch[If breathing: place in recovery position (on side). If NOT breathing: begin paediatric CPR immediately.],
)

#arrow-down()

// --- STEP 6 ---
#step-box(6, "Administer epinephrine auto-injector (EpiPen) immediately.",
  detail: "Epinephrine is the primary and most critical treatment. Do not delay. Dosing: children 15-30 kg use EpiPen Junior 0.15 mg (green label); children over 30 kg use EpiPen 0.3 mg (yellow label). Some Israeli allergists prescribe 0.3 mg from 20 kg -- follow the child's individual prescription. For children under 15 kg, the 0.15 mg EpiPen Junior is still recommended over withholding treatment.",
  warning: "Do not substitute antihistamines (Benadryl/diphenhydramine) for epinephrine. Antihistamines will NOT reverse anaphylaxis."
)

#v(4pt)

#decision-box("Is an epinephrine auto-injector available?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Administer immediately using Step 7 technique. Do not delay.],
  no-branch[Wait for EMS. Monitor airway, breathing, and circulation. Be prepared to begin CPR if needed.],
)

#arrow-down()

// --- STEP 7 ---
#step-box(7, "Administer the EpiPen using correct technique.",
  detail: "1) Remove EpiPen from plastic case. 2) Remove blue safety cap ('blue to the sky'). 3) Hold with orange tip pointing down ('orange to the thigh'). 4) Position at 90 degrees to middle of outer thigh. 5) For small/thin children, pinch the thigh muscle. 6) Press firmly until click is heard. 7) Hold 10 seconds. 8) Can inject through clothing. 9) After removal, massage injection site for 10 seconds. 10) Dispose safely (hand to paramedics).",
  warning: "Do not touch the orange tip. Do not inject into fingers, hands, feet, or buttocks. Outer thigh only. For small/thin children, always pinch the thigh before injection."
)

#arrow-down()

// --- STEP 8 ---
#step-box(8, "Reassess the child after 5 minutes.",
  detail: "Epinephrine effects last approximately 20 minutes. Symptoms may recur (biphasic reaction). Biphasic reactions can occur up to 72 hours after the initial reaction."
)

#v(4pt)

#decision-box("Has the child's condition improved after 5 minutes?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. Maintain position. Wait for EMS. Hospital evaluation is still required.],
  no-branch[If a second auto-injector is available, administer a second dose. Continue monitoring airway, breathing, and circulation.],
)

#arrow-down()

// --- STEP 9 ---
#step-box(9, "Monitor continuously until EMS arrives.",
  detail: "Continuously monitor airway, breathing, and circulation. Keep the child calm and reassured. Be prepared to begin paediatric CPR if the child loses consciousness and stops breathing. All suspected anaphylaxis in children requires hospital evaluation, even if symptoms fully resolve. Hospital monitoring: 4-6 hours minimum.",
  warning: "Never allow a child who has had anaphylaxis to leave without hospital evaluation. Biphasic reactions can be fatal."
)

#v(8pt)

// --- EQUIPMENT NEEDED ---
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 12pt, fill: rgb("#7c3aed"))[Equipment Needed:]
  #v(4pt)
  - EpiPen Junior 0.15 mg (green label) -- for children 15-30 kg \
  - EpiPen 0.3 mg (yellow label) -- for children over 30 kg \
  - Phone to call MDA at 101
]

#v(8pt)

// --- DO NOT LIST ---
#do-not-box((
  "Do not delay epinephrine administration -- it is the only effective treatment for anaphylaxis",
  "Do not substitute antihistamines (Benadryl/diphenhydramine) for epinephrine in anaphylaxis",
  "Do not force the child to lie down if they are having breathing difficulty -- allow upright position of comfort",
  "Do not over-extend an infant's neck when managing the airway -- use neutral position only",
  "Do not inject epinephrine into fingers, hands, feet, or buttocks -- outer thigh only",
  "Do not touch the orange tip of the EpiPen",
  "Do not induce vomiting if the allergen was ingested",
  "Do not allow a child who has had anaphylaxis to leave without hospital evaluation, even if symptoms resolve",
  "Do not store EpiPen in a refrigerator, in a car, or in direct sunlight -- Israeli climate makes heat degradation a particular risk",
  "Do not give oral medications (including antihistamines) to a child with throat swelling or difficulty swallowing",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) | Last verified: #last-verified \
  Protocol ID: IL-CHILD-ALLERGIC-REACTION-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
