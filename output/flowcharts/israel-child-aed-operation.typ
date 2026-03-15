// First Aid Protocol Flowchart — AED Operation for Children and Infants (Israel)
// Generated from: protocols/child/israel/aed-operation.json
// Protocol ID: IL-CHILD-AED-OPERATION-001

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "AED Operation — Child and Infant"
#let protocol-category = "aed_operation"
#let country = "Israel"
#let age-group = "Child / Infant"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "AHA 2025 Guidelines as adopted by MDA"
#let last-verified = "2026-03-16"

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
      #rect(fill: rgb("#fef2f2"), stroke: 1pt + rgb("#dc2626"), radius: 4pt, inset: 6pt, width: 100%)[
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

#let do-not-box(items) = {
  rect(
    fill: rgb("#fef2f2"),
    stroke: 2pt + rgb("#dc2626"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 10pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
  ]
}

#let key-info-box(content) = {
  rect(
    fill: rgb("#fefce8"),
    stroke: 1.5pt + rgb("#ca8a04"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt)
    #content
  ]
}

// === PAGE 1: OVERVIEW AND STEPS 1-4 ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country -- #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[Child: 1--8 years | Infant: under 1 year | Age 8+ or signs of puberty: use adult AED protocol]
]

#v(6pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers strip
#all-emergency-numbers()

#v(6pt)

// Key context
#key-info-box()[
  #text(weight: "bold")[When to use an AED:] Child or infant who is *unresponsive*, *not breathing normally* (absent or gasping), and in suspected *cardiac arrest*.\
  #text(weight: "bold")[Lone rescuer:] Perform *2 minutes of CPR first* (cardiac arrest in children is more often respiratory in origin), then call 101 and retrieve AED.\
  #text(weight: "bold")[Locate AED:] Use the *Eifo-Defi* app, or call 101 -- MDA dispatch can locate and remotely unlock the nearest smart stand.
]

#v(6pt)

// --- STEP 1 ---
#step-box(1, "Recognise cardiac arrest in the child or infant.",
  detail: "Check responsiveness: call out and tap/shake the child's shoulders (for infants, flick the sole of the foot). Check breathing for no more than 10 seconds -- look, listen, and feel. If unresponsive and not breathing normally (absent breathing or only gasping), suspect cardiac arrest.",
)

#arrow-down()

// --- STEP 2 ---
#step-box(2, "Call for help and send for an AED.",
  detail: "If a bystander is present, instruct them to call 101 (MDA) immediately and retrieve the nearest AED. Use the Eifo-Defi app to locate the nearest device, or call 101 -- MDA dispatch can locate the nearest smart stand and remotely unlock it.",
)

#v(4pt)
#decision-box("Is a bystander available to help?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Send bystander to call 101 and fetch AED. Begin CPR immediately (Step 3).],
  no-branch[If alone, perform *2 minutes of CPR first* (approx. 5 cycles of 30:2), then call 101 and retrieve AED.],
)

#arrow-down()

// --- STEP 3 ---
#step-box(3, "Begin CPR immediately while waiting for the AED.",
  detail: "Place the child on a firm, flat surface. Rate: 100--120 compressions per minute. Give 2 rescue breaths after every 30 compressions (solo) or 15 compressions (two trained rescuers).",
)

#v(4pt)
#decision-box("Is the victim an infant (under 1 year)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Two-finger technique (solo) or two-thumb encircling (two rescuers). Compress to *~4 cm / 1.5 in*. Slight head tilt only for rescue breaths.],
  no-branch[One-hand technique on centre of chest. Compress to *~5 cm / 2 in*. Standard head-tilt chin-lift for rescue breaths.],
)

#v(1fr)

// Footer page 1
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 2: STEPS 4-7 (AED SETUP) ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[AED Operation -- Child and Infant -- Steps 4--7]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Power On -- Paediatric Mode -- Prepare Chest -- Apply Pads]
]

#v(4pt)
#all-emergency-numbers()
#v(8pt)

// --- STEP 4 ---
#step-box(4, "When the AED arrives, open and power on the device.",
  detail: "Most devices power on automatically when opened (some require pressing a power button). The AED will provide voice instructions in Hebrew. Put MDA dispatch on speakerphone if still on the call -- they will guide you.",
)

#arrow-down()

// --- STEP 5 ---
#step-box(5, "Activate paediatric mode on the AED.",
  detail: "Many AEDs in Israel have a paediatric mode switch (button or key) that delivers a lower energy dose for children under 8 years or under 25 kg. Activate this before applying pads.",
  warning: "Do NOT delay defibrillation to search for paediatric pads or a paediatric mode. If unavailable, use adult pads immediately.",
)

#v(4pt)
#decision-box("Does the AED have a paediatric mode switch or paediatric pads?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Activate paediatric mode and/or use paediatric pads (reduced energy dose). Proceed to Step 6.],
  no-branch[Use *adult pads* -- do NOT delay defibrillation. The AED can still be used safely. Proceed to Step 6.],
)

#arrow-down()

// --- STEP 6 ---
#step-box(6, "Expose the child's bare chest and prepare the skin.",
  detail: "Remove or cut away clothing. Ensure the chest is dry -- wipe off sweat, water, or moisture. Remove any medication patches and wipe skin. If implanted pacemaker/defibrillator visible (lump under skin), place pads at least 2.5 cm (1 inch) away from it.",
)

#arrow-down()

// --- STEP 7 ---
#step-box(7, "Apply electrode pads using correct placement for the child's size.",
  detail: "Follow the diagram printed on the pads. For small children and infants, anteroposterior (front-and-back) placement is preferred because the chest may be too small for both pads on the front without touching.",
  warning: "Pads must NEVER touch or overlap each other. If the child's chest is too small for anterolateral placement, always use anteroposterior placement.",
)

#v(4pt)
#decision-box("Is the chest large enough for both pads on the front (anterolateral) with at least 2.5 cm between them?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Anterolateral:* Pad 1 below right collarbone, right of sternum. Pad 2 left side below armpit, in line with nipple.],
  no-branch[*Anteroposterior (front-and-back):* Front pad on centre of chest (sternum) at heart level. Back pad between shoulder blades, directly behind front pad.],
)

#v(1fr)

// Footer page 2
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 3: STEPS 8-12 AND DO NOT LIST ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[AED Operation -- Child and Infant -- Steps 8--12]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Connect -- Analyse -- Shock -- Resume CPR -- Continue]
]

#v(4pt)
#all-emergency-numbers()
#v(8pt)

// --- STEP 8 ---
#step-box(8, "Connect the pads to the AED if not pre-connected.",
  detail: "Plug the pad cable into the AED connector. Ensure pads are firmly adhered to the skin with no air gaps.",
)

#arrow-down()

// --- STEP 9 ---
#step-box(9, "Allow the AED to analyse the heart rhythm.",
  detail: "The AED will instruct: 'Do not touch the patient' / 'Analysing heart rhythm.' Stop CPR and ensure nobody is touching the child during analysis.",
  warning: "Everyone must stop touching the child during rhythm analysis. Any movement or contact can interfere with the analysis.",
)

#arrow-down()

// --- STEP 10 ---
#step-box(10, "Follow the AED's shock decision.",
  warning: "Ensure all bystanders are clear of the child before delivering a shock. Visually verify nobody is touching the child.",
)

#v(4pt)
#decision-box("Does the AED advise a shock ('Shock advised')?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Ensure nobody is touching the child. Call out: *'Stand clear!'* (Hebrew: #heb[!התרחקו]). Press the shock button when instructed. After the shock, *immediately resume CPR* (Step 11).],
  no-branch[AED says 'No shock advised.' *Resume CPR immediately* (Step 11). The device cannot harm the child -- it will not deliver a shock if the rhythm is not shockable.],
)

#arrow-down()

// --- STEP 11 ---
#step-box(11, "Immediately resume CPR after the shock or 'no shock' advisory.",
  detail: "Continue age-appropriate CPR for 2 minutes (approx. 5 cycles of 30:2 solo, or 15:2 two rescuers). Use the correct compression technique for the child's age. The AED will automatically re-analyse after 2 minutes.",
)

#arrow-down()

// --- STEP 12 ---
#step-box(12, "Continue the cycle of CPR and AED analysis until help arrives.",
  detail: "Repeat: CPR for 2 minutes, then AED analysis, then shock if advised, then CPR again. Do NOT turn off the AED. Leave pads attached at all times, even if the child shows signs of recovery.",
)

#v(4pt)
#decision-box("Has the child shown obvious signs of life (moves, breathes normally, opens eyes) OR have MDA paramedics arrived?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If paramedics arrive, hand over. If signs of life, stop compressions but *leave AED pads attached and device on*. Place in recovery position if breathing normally.],
  no-branch[*Continue CPR and AED cycle.* Do not stop unless MDA takes over, child shows signs of life, or you are physically unable to continue.],
)

#v(1fr)

// Footer page 3
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 4: DO NOT LIST AND EQUIPMENT ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[AED Operation -- Child and Infant -- Warnings]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Critical Do-Not List and Equipment]
]

#v(4pt)
#all-emergency-numbers()
#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT use an AED on a child who is conscious and breathing normally -- AEDs are only for cardiac arrest.",
  "DO NOT use an AED while the child is submerged in water or lying in a puddle -- move them to dry ground first before applying pads.",
  "DO NOT use an AED near flammable gases or oxygen-enriched atmospheres.",
  "DO NOT delay defibrillation because paediatric pads are unavailable -- use adult pads with anteroposterior placement if needed.",
  "DO NOT allow pads to touch or overlap each other -- use anteroposterior placement if the chest is too small for anterolateral placement.",
  "DO NOT touch the child during AED rhythm analysis or shock delivery.",
  "DO NOT turn off the AED or remove the pads once applied, even if the child regains consciousness.",
  "DO NOT use an AED on a child who is breathing and has a pulse -- place in recovery position and monitor instead.",
  "DO NOT perform adult-depth compressions on a child or infant -- compress to one-third of chest depth only.",
  "DO NOT use adult pads with standard anterolateral placement on an infant or small child if the pads would touch or overlap -- switch to anteroposterior placement.",
))

#v(8pt)

// === EQUIPMENT ===
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Equipment needed:]
  #v(4pt)
  #text(size: 10pt)[
    - AED (Automated External Defibrillator)\
    - Paediatric AED pads (preferred for children under 8 / under 25 kg)\
    - Adult AED pads (if paediatric pads unavailable)\
    - Scissors or shears (to cut away clothing)\
    - Towel or cloth (to dry the chest)\
    - Razor (included in many AED kits, for removing excessive chest hair if needed)
  ]
]

#v(1fr)

// Footer page 4
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
