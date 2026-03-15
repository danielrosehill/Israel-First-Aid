// First Aid Protocol Flowchart — Choking (Child & Infant) — Israel
// Generated from: IL-CHILD-CHOKING-001
// Source: Magen David Adom (MDA)
// Designed for A4 printing, readable under stress

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "CHOKING — CHILD & INFANT"
#let country = "Israel"
#let age-group = "Child (including Infants)"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-edition = "MDA 101 Public First Aid Guidance Series"
#let source-url = "https://www.mdais.org/101/asphyxia"
#let imported-date = "2026-03-15"
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
    #text(fill: rgb("#16a34a"), weight: "bold", size: 11pt)[YES:] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold", size: 11pt)[NO:] #content
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[#sym.arrow.b]
  ]
}

#let section-label(label) = {
  rect(
    fill: rgb("#7c3aed"),
    radius: 4pt,
    inset: (x: 10pt, y: 4pt),
  )[
    #text(fill: white, weight: "bold", size: 10pt)[#label]
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

// === PAGE 1: ASSESSMENT & BRANCHING ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[Foreign Body Airway Obstruction (FBAO)]
]

#v(6pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Have a bystander call 101 immediately upon identifying complete obstruction. If alone, perform 1--2 minutes of intervention first (approx. 5 cycles of CPR if unresponsive), then call 101.
]

#v(6pt)

// --- STEP 1: Assessment ---
#step-box(1, "Assess the choking victim",
  detail: "Look for: inability to speak, cry, or make sounds; weak or absent cough; difficulty breathing with chest retractions; cyanosis (bluish skin); loss of consciousness. Young children may NOT grasp their throats."
)

#arrow-down()

#decision-box("Can the child cough forcefully, cry, or breathe adequately?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[DO NOT intervene. Encourage coughing -- it is the body's most effective mechanism. Monitor closely and be ready to act if it worsens.],
  no-branch[Airway is severely/completely obstructed. Proceed to Step 2.],
)

#arrow-down()

// --- STEP 2: Call for help ---
#step-box(2, "Call for help. Instruct a bystander to call 101 (MDA) immediately.",
  detail: "If alone, perform 1-2 minutes of intervention first, then call 101. Do not delay life-saving actions to make the call."
)

#arrow-down()

// --- STEP 3: Age determination ---
#step-box(3, "Determine the victim's age category to select the correct technique.",
  warning: "Physical size should guide technique selection, not age alone. A very small 1-year-old may need infant techniques."
)

#arrow-down()

#decision-box("Is the victim an infant (under 1 year of age)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use INFANT protocol: back blows + chest thrusts. Go to Step 4 (next page).],
  no-branch[Use CHILD protocol: abdominal thrusts (Heimlich). Go to Step 7 (next page).],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-edition | #source-url \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 2: INFANT PROTOCOL ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[CHOKING — INFANT PROTOCOL]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Under 1 year of age]
]

#v(6pt)

#emergency-box(emergency-number, emergency-service)

#v(8pt)

// --- STEP 4: Back blows ---
#step-box(4, "INFANT: Deliver 5 back blows",
  detail: "Place the infant face-down on your forearm, supporting the jaw and head with your hand. Rest your forearm on your thigh. Tilt the infant's head downward -- head must be lower than the body. Deliver 5 quick, forceful strikes between the shoulder blades using the heel of your other hand.",
  warning: "DO NOT use abdominal thrusts (Heimlich) on infants under 1 year. Risk of organ damage."
)

#arrow-down()

// --- STEP 5: Chest thrusts ---
#step-box(5, "INFANT: If not dislodged, deliver 5 chest thrusts",
  detail: "Turn infant face-up, supporting body and head. Locate an imaginary horizontal line between the nipples. Place two fingers just below this line at the centre of the sternum. Perform 5 chest compressions, approx. 4 cm deep. Firm but controlled -- avoid excessive force."
)

#arrow-down()

#decision-box("Has the object been expelled?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Stop intervention. Monitor the infant closely and seek medical evaluation.],
  no-branch[Continue alternating 5 back blows and 5 chest thrusts. Return to Step 4.],
)

#arrow-down()

// --- STEP 6: Continue cycle ---
#step-box(6, "INFANT: Continue alternating 5 back blows and 5 chest thrusts",
  detail: "Check after each cycle whether the object has been dislodged."
)

#arrow-down()

#decision-box("Is the infant still conscious and responsive?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue alternating back blows (Step 4) and chest thrusts (Step 5).],
  no-branch[STOP back blows and chest thrusts. Proceed to Step 9 (CPR -- next page).],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-edition \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 3: CHILD PROTOCOL ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[CHOKING — CHILD PROTOCOL]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Age 1--8 years]
]

#v(6pt)

#emergency-box(emergency-number, emergency-service)

#v(8pt)

// --- STEP 7: Heimlich ---
#step-box(7, "CHILD (1-8 years): Perform abdominal thrusts (Heimlich manoeuvre)",
  detail: "Stand or kneel behind the child (adjust to height). Wrap arms around waist. Make a fist and place it above the navel and below the rib cage. Grasp fist with other hand. Perform quick, forceful thrusts inward and upward. For smaller children, position the child against your leg with fist placed precisely below the ribcage.",
  warning: "Do NOT use excessive force that would lift the child off the ground."
)

#arrow-down()

// --- STEP 8: Continue ---
#step-box(8, "CHILD: Continue abdominal thrusts until object is expelled or child becomes unresponsive.")

#arrow-down()

#decision-box("Has the object been expelled and can the child breathe?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Stop thrusts. Monitor the child and seek medical evaluation even after successful removal.],
  no-branch[If still conscious, continue thrusts (repeat Step 7). If child loses consciousness, proceed to Step 9 below.],
)

#v(8pt)

// --- STEP 12: Special case ---
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt, fill: rgb("#854d0e"))[Step 12 -- Special case:] If the child is pregnant or obese, use *chest thrusts* instead of abdominal thrusts. Position fist on the middle of the breastbone (sternum) and thrust firmly.
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-edition \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 4: CPR TRANSITION & DO NOT LIST ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[CHOKING — UNRESPONSIVE: CPR]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[If the child or infant loses consciousness]
]

#v(6pt)

#emergency-box(emergency-number, emergency-service)

#v(8pt)

// --- STEP 9: Transition ---
#step-box(9, "Victim loses consciousness: STOP all choking manoeuvres immediately.",
  detail: "Carefully place the victim on a firm, flat surface. Call 101 (MDA) if not already done. If alone, perform 5 cycles of CPR (approx. 2 minutes) before calling 101."
)

#arrow-down()

// --- STEP 10: CPR ---
#step-box(10, "Begin CPR appropriate to the victim's age.",
  detail: "Solo rescuer: 30 compressions to 2 rescue breaths. Two rescuers: 15 compressions to 2 rescue breaths. Compression depth: approx. one-third of chest depth. Before each set of rescue breaths, open the airway and look in the mouth -- remove any visible object. Do NOT perform blind finger sweeps."
)

#arrow-down()

#decision-box("Is the victim an infant (under 1 year)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Two-finger chest compression (solo) or thumb-encircling method (two rescuers). Open airway with slight head tilt only ("look to sky") -- full extension blocks infant airway. Use mouth-to-mouth-and-nose ventilation.],
  no-branch[One-hand chest compression. Standard head-tilt chin-lift. Standard mouth-to-mouth ventilation.],
)

#arrow-down()

// --- STEP 11: Continue CPR ---
#step-box(11, "Continue CPR until emergency services arrive, the victim recovers, or an AED is available.",
  detail: "If an AED is available and paediatric pads overlap on a small child, apply one pad front-centre and one between the shoulder blades. Continue CPR cycles between AED analysis and shocks."
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Perform abdominal thrusts (Heimlich) on infants under 1 year -- use only back blows and chest thrusts. Risk of organ damage.",
  "Insert fingers blindly into the mouth (blind finger sweeps) -- only remove an object if you can clearly see it.",
  "Force anything into the mouth -- you risk pushing the object deeper.",
  "Attempt mouth manipulation if teeth are clenched.",
  "Give food or fluids to a choking victim.",
  "Intervene if the child is coughing effectively or breathing normally -- allow the body to clear the obstruction naturally.",
  "Use this protocol if choking is caused by asthma, infection/swelling (e.g. epiglottitis, croup), or head injury -- seek immediate medical care.",
  "Use excessive force during abdominal thrusts that would lift the child off the ground.",
  "Fully extend an infant's head when opening the airway -- use the 'look to sky' slight tilt only. Full head tilt-back blocks the infant airway.",
))

#v(6pt)

#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 4pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 9pt, fill: rgb("#6b7280"))[*Equipment:* AED with paediatric pads (if available, for CPR transition)]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-edition | #source-url \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency. \
  Protocol ID: IL-CHILD-CHOKING-001
]
