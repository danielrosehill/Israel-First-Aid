// First Aid Protocol Flowchart — Shock (Helem) — Adult — Israel
// Generated from: IL-ADULT-SHOCK-001
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SHOCK (HELEM)"
#let protocol-category = "shock"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-03-15"
#let last-verified = "2026-03-15"

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

#let equipment-box(items) = {
  rect(
    fill: rgb("#fefce8"),
    stroke: 1pt + rgb("#ca8a04"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 10pt)
    #text(fill: rgb("#ca8a04"), weight: "bold", size: 12pt)[EQUIPMENT NEEDED:]
    #v(4pt)
    #for item in items [
      - #item \
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

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(6pt)

// When to apply
#rect(
  fill: rgb("#faf5ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", fill: rgb("#7c3aed"), size: 11pt)[WHEN TO APPLY:] Patient presents with signs of shock: rapid weak pulse, pale/cold/clammy skin, cold perspiration, rapid shallow breathing, decreased consciousness or confusion, falling blood pressure, weakness, dizziness, fainting, nausea, vomiting, or thirst. May result from massive blood loss (hypovolemic), spinal cord injury (neurogenic), heart failure (cardiogenic), severe infection (septic), or severe allergic reaction (anaphylactic).
]

#v(6pt)

// Summary
#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", fill: rgb("#16a34a"), size: 11pt)[SUMMARY:] Identify shock type, call 101, perform ABC assessment, control bleeding, elevate legs approximately 30 cm, maintain body temperature, give nothing by mouth, and monitor until MDA arrives.
]

#v(6pt)

// --- FLOWCHART STEPS ---

#step-box(1, "Call 101 (MDA) immediately.",
  detail: "Provide the dispatcher with your location, number of casualties, nature of the incident, and the patient's condition. Keep the line open if possible.")

#arrow-down()

#step-box(2, "Ensure the scene is safe.",
  detail: "Confirm the scene is safe for you and the patient before approaching. In security incidents, be aware of secondary threats.")

#arrow-down()

#step-box(3, "Perform primary assessment (ABC).",
  detail: "A - Airway: ensure the airway is open and clear; tilt chin up slightly if needed. B - Breathing: check if the person is breathing effectively. C - Circulation: check for pulse and identify any severe bleeding.")

#v(4pt)

#decision-box("Is the patient breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue to Step 4 to assess and treat the cause of shock.],
  no-branch[Begin CPR immediately. Follow the CPR protocol (IL-ADULT-CPR-001).],
)

#arrow-down()

#step-box(4, "Identify the likely type of shock if possible.",
  detail: "Hypovolemic: blood loss, dehydration, burns (rapid pulse, pale/cold skin). Neurogenic: spinal injury (normal or slow pulse, warm red skin below injury). Cardiogenic: heart attack, cardiac tamponade (elevated jugular venous pressure, rapid or slow pulse). Septic: infection with high fever (gradual onset). Anaphylactic: allergic reaction with rash, swelling, wheeze, stridor.")

#v(4pt)

#decision-box("Is the shock caused by visible bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 5 for bleeding control before positioning.],
  no-branch[Skip to Step 6 for patient positioning.],
)

#arrow-down()

#step-box(5, "Control any severe bleeding.",
  detail: "Apply direct pressure to wounds. Pack wounds if direct pressure is insufficient. Apply a tourniquet to limbs if bleeding cannot be controlled by other means. Note the time of tourniquet application. Use an Israeli bandage (emergency bandage) if available.",
  warning: "Tourniquet use is widely taught in Israeli civilian first aid due to security context. Always note the time a tourniquet is applied and report it to the MDA team.")

#arrow-down()

#step-box(6, "Position the patient appropriately.",
  detail: "If conscious: lay the patient on their back and gently elevate legs approximately 30 cm (12 inches) above the level of the heart to improve blood flow to vital organs.")

#v(4pt)

#decision-box("Is the patient conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Lay on back with legs elevated approximately 30 cm, unless contraindicated (head/neck/spinal injury, broken hip or leg, causes pain, or patient has difficulty breathing).],
  no-branch[If unconscious but breathing, place in the recovery position (on their side). If not breathing, begin CPR.],
)

#pagebreak()

// Page 2 header
#align(center)[
  #text(size: 18pt, weight: "bold")[#protocol-title (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country -- #age-group]
]

#v(4pt)
#emergency-box(emergency-number, emergency-service)
#v(4pt)
#all-emergency-numbers()
#v(6pt)

#step-box(7, "Handle contraindications for leg elevation.",
  detail: "If the patient has difficulty breathing, keep them semi-upright instead of elevating legs. If head, neck, or spinal injury is suspected, do not elevate legs and do not move the patient unnecessarily. If broken hip or leg bones are suspected, do not elevate legs.")

#v(4pt)

#decision-box("Does the patient have suspected head/neck/spinal injury, broken hip/leg, difficulty breathing, or does leg elevation cause pain?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT elevate legs. Keep patient flat (spinal/fracture) or semi-upright (breathing difficulty). Minimise movement.],
  no-branch[Elevate legs approximately 30 cm above heart level.],
)

#arrow-down()

#step-box(8, "Maintain body temperature.",
  detail: "Cover the patient with a blanket, coat, or any available covering to prevent heat loss. Place insulation underneath the patient to protect from cold ground. Shock patients lose body heat even in hot weather.",
  warning: "In Israeli summer conditions, shade the patient from direct sun but still keep them warm. Do not overheat the patient.")

#arrow-down()

#step-box(9, "Do NOT give food or drink.",
  detail: "Do not give the patient anything to eat or drink. If the patient is thirsty, moisten their lips with water only.",
  warning: "Giving food or drink to a shock patient may cause vomiting and aspiration, and may complicate potential surgery.")

#arrow-down()

#step-box(10, "Administer epinephrine for anaphylactic shock if available.",
  detail: "If anaphylactic shock is suspected (allergic reaction with rash, swelling, wheeze, stridor) and the patient has a prescribed EpiPen, assist with administration.")

#v(4pt)

#decision-box("Is anaphylactic shock suspected and is an EpiPen available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Assist the patient with their EpiPen. Follow the anaphylaxis protocol (IL-ADULT-ALLERGIC-REACTION-001).],
  no-branch[Continue monitoring and supportive care. Keep the patient positioned and warm.],
)

#arrow-down()

#step-box(11, "Monitor and reassure the patient continuously.",
  detail: "Monitor breathing and pulse continuously. Reassure and comfort the patient; keep them calm. Stay with the patient until MDA emergency services arrive.")

#v(4pt)

#decision-box("Does the patient vomit?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If no spinal injury is suspected, turn the patient on their side to prevent choking. Clear the airway.],
  no-branch[Continue monitoring in current position.],
)

#arrow-down()

#step-box(12, "Document and report to the arriving MDA team.",
  detail: "Note the time of injury or onset of symptoms. Note any treatments given, including tourniquet application time, medications administered, and changes in patient condition. Report all information to the arriving MDA paramedics.")

#v(10pt)

// Do Not list
#do-not-box((
  "Do not give the patient anything to eat or drink -- moisten lips only if thirsty.",
  "Do not elevate legs if head, neck, or spinal injury is suspected.",
  "Do not elevate legs if the patient has a broken hip or leg.",
  "Do not elevate legs if it causes the patient pain or further injury.",
  "Do not elevate legs if the patient has difficulty breathing -- keep them semi-upright instead.",
  "Do not overheat the patient when maintaining body temperature.",
  "Do not move a patient with suspected spinal injury unnecessarily.",
  "Do not delay calling 101 -- shock is a life-threatening emergency.",
  "Do not remove a tourniquet once applied -- leave removal to MDA paramedics.",
  "Do not leave the patient unattended.",
))

#v(8pt)

// Equipment
#equipment-box((
  "Tourniquet -- widely available in Israeli first aid kits due to security context",
  "Israeli bandage (emergency bandage / amtza'sh) -- for wound packing and pressure",
  "Blanket or coat -- to maintain body temperature",
  "Ground insulation -- to protect from cold ground",
  "EpiPen (epinephrine auto-injector) -- for anaphylactic shock if patient has a prescription",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · ID: IL-ADULT-SHOCK-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
