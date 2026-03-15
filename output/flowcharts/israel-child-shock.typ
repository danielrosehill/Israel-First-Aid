// First Aid Protocol Flowchart — Shock (Child) — Israel
// Generated from: IL-CHILD-SHOCK-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SHOCK (HELEM) — FIRST AID (CHILD)"
#let country = "Israel"
#let age-group = "Child"
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
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ V]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[ID: IL-CHILD-SHOCK-001]
]

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to apply
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[Call 101 immediately when you see:]
  #v(4pt)
  #text(size: 9.5pt)[
    Tachycardia (earliest sign), pale or cool skin, prolonged capillary refill (>2 seconds), cold clammy extremities, anxiety or irritability, rapid shallow breathing, mottled skin, altered mental status, or hypotension (a late sign). Common pediatric causes: hemorrhage (trauma), dehydration (vomiting/diarrhea), burns, anaphylaxis, severe infection (sepsis). Children have much lower total blood volumes than adults -- small fluid losses can be life-threatening.
  ]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Summary:] Recognise and manage shock in a child by calling 101 immediately, controlling bleeding, positioning appropriately, maintaining warmth, and monitoring for sudden deterioration.
]

#v(6pt)

// === STEPS ===

// Step 1
#step-box(1, "Call 101 (Magen David Adom) immediately.",
  detail: "Provide your location, the child's approximate age, and describe the signs you are observing (rapid pulse, pale skin, altered behaviour). Shock in children is a time-critical emergency -- early hospital treatment with IV fluids and medications is essential.",
  warning: "Do not delay calling 101. Children can appear deceptively stable during compensated shock and then deteriorate suddenly.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 2
#step-box(2, "Assess and manage life threats -- check airway, breathing, and circulation (ABC).")

#v(4pt)
#decision-box("Is the child breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue to Step 3.],
  no-branch[Begin CPR immediately (see IL-CHILD-CPR protocol). Continue CPR until EMS arrives or the child resumes breathing.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 3
#step-box(3, "Control any visible bleeding.",
  detail: "Apply direct pressure to wounds with a sterile bandage, clean cloth, or your gloved hand. Hemorrhage is the most common cause of hypovolemic shock in pediatric trauma. In children, even small volumes of blood loss can be life-threatening due to their low total blood volume.")

#v(4pt)
#decision-box("Is there visible external bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply firm, direct pressure to the wound. Use sterile gauze or clean cloth. Do not remove blood-soaked dressings -- add layers on top. See IL-CHILD-SEVERE-BLEEDING protocol for escalation if bleeding is uncontrolled.],
  no-branch[Proceed to Step 4. Note: shock may result from internal bleeding, dehydration, anaphylaxis, or infection -- the absence of visible bleeding does not exclude shock.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 4
#step-box(4, "Assess the child's level of consciousness and determine positioning.")

#v(4pt)
#decision-box("Is the child conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Lay the child flat on their back. Gently elevate the legs above the level of the head (e.g., rest legs on a chair, pillow, or folded blanket) to increase blood flow to the brain and vital organs. Proceed to Step 6.],
  no-branch[Proceed to Step 5 to assess for spinal injury before positioning.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 5
#step-box(5, "Position an unconscious child appropriately.")

#v(4pt)
#decision-box("Is spinal injury suspected (fall from height, car accident, diving injury)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT move the child. Stabilise the head and neck in the position found. Maintain an open airway using a jaw-thrust manoeuvre without tilting the head. Wait for EMS.],
  no-branch[Place the child in the recovery position (lateral/side-lying position) to protect the airway from vomit or secretions. Continue to Step 6.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 6
#step-box(6, "Keep the child warm -- cover with a blanket, coat, or clothing.",
  detail: "When perfusion is inadequate, the body loses heat rapidly. Cover the child and insulate from cold ground as well (place a blanket or clothing beneath them). Even in warm weather, a child in shock can become hypothermic due to poor perfusion.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 7
#step-box(7, "Remove or loosen any restrictive clothing.",
  detail: "Loosen belts, tight waistbands, collars, or other clothing that may impair breathing or circulation.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 8
#step-box(8, "Calm and reassure the child.",
  detail: "Anxiety and distress worsen the physiological response to shock by increasing heart rate and oxygen demand. Speak gently and stay with the child. If a parent or caregiver is present, involve them -- position them where the child can see and hear them.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 9
#step-box(9, "Moisten the child's lips with water if they are thirsty.",
  detail: "Use a damp cloth or a small amount of water on the lips only.",
  warning: "Do NOT give the child anything to eat or drink. The child may need surgery or anaesthesia, and a full stomach increases the risk of aspiration.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 10
#step-box(10, "Monitor the child continuously until EMS arrives.",
  detail: "Track breathing rate, pulse (check for tachycardia or bradycardia), skin colour (pale, mottled, or cyanotic), capillary refill time, and level of consciousness. Reassess frequently -- children can transition from compensated to decompensated shock suddenly and without warning.",
  warning: "Be prepared for sudden deterioration. Tachycardia is the earliest sign of shock. Bradycardia (abnormally slow heart rate) is a pre-arrest sign in children -- if the child develops bradycardia, be ready to begin CPR.")

#v(4pt)
#decision-box("Is the child's condition worsening (increasing heart rate, falling consciousness, mottled skin, weak pulses)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Urgently update the 101 dispatcher on the child's deterioration. Ensure legs remain elevated (if conscious) or airway is protected (if unconscious). Re-check bleeding control. Prepare for CPR if cardiac arrest occurs.],
  no-branch[Continue monitoring and maintaining warmth, positioning, and reassurance until MDA arrives.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do not sit the child upright -- this reduces blood flow to the brain and worsens shock.",
  "Do not give the child anything to eat or drink -- moisten lips only.",
  "Do not leave the child unattended -- continuous monitoring is essential due to risk of sudden deterioration.",
  "Do not delay calling 101 -- early hospital treatment with IV fluids and medications is critical for survival.",
  "Do not assume a child with normal blood pressure is not in shock -- children maintain blood pressure through strong compensatory mechanisms until they suddenly decompensate.",
  "Do not attribute tachycardia solely to anxiety, fear, or pain -- suspect shock until proven otherwise.",
  "Do not move a child with suspected spinal injury -- stabilise and wait for EMS.",
  "Do not remove blood-soaked dressings from wounds -- add additional layers on top.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#f0f9ff"),
  stroke: 1pt + rgb("#3b82f6"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Equipment Needed:]
  #v(4pt)
  #text(size: 10pt)[
    - Blanket or coat (for warmth and insulation from ground)\
    - Sterile gauze or clean cloth (for bleeding control)\
    - Disposable gloves\
    - Pillow or folded blanket (for leg elevation)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
