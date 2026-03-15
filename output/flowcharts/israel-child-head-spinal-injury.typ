// First Aid Protocol Flowchart — Head and Spinal Injury (Child) — Israel
// Generated from: IL-CHILD-HEAD-SPINAL-INJURY-001
// Source: Magen David Adom (MDA)
// Designed for A4 printing, readable under stress

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "HEAD & SPINAL INJURY — CHILD"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-document = "MDA BLS Guide (2016), MDA ALS Professional Manual (2024), and Israeli Standard-of-Care Paediatric Head Injury Guidance"
#let source-url = "https://www.mdais.org/101/first-aid"
#let imported-date = "2026-03-15"
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

// === PAGE 1: INITIAL ASSESSMENT (Steps 1-4) ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[Suspected Head or Spinal Cord Injury in a Child]
]

#v(6pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to apply:* Falls from height exceeding 1 m (or more than twice the child's height), vehicle/bicycle/scooter accidents, falls from playground equipment, struck by heavy object, blast/shrapnel exposure, any fall onto hard surface with direct head impact in infant under 1 year, penetrating head wound. Also when the child shows: loss of consciousness, seizures, repeated vomiting, unequal pupils, confusion/irritability/excessive drowsiness, clear fluid or blood from nose/ears, limb weakness/numbness, or bulging fontanelle in infants.
]

#v(6pt)

// --- STEP 1 ---
#step-box(1, "Ensure scene safety.",
  detail: "Check that the area is safe for you and the child before approaching. Wear gloves if available. In blast or security events, confirm the scene is clear before entering."
)

#arrow-down()

// --- STEP 2 ---
#step-box(2, "Assess the child's responsiveness without moving them.",
  detail: "Gently tap the child and call their name. For infants, tap the sole of the foot. Use the AVPU scale: A (Alert), V (responds to Voice), P (responds to Pain), U (Unresponsive).",
  warning: "Do NOT shake the child. Do NOT move the child unless they are in immediate danger (fire, traffic, structural collapse)."
)

#arrow-down()

#decision-box("Is the child responsive?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Calmly instruct the child to stay completely still. Reassure them with eye contact and a calm voice. Proceed to Step 3.],
  no-branch[Check for breathing using the jaw thrust technique to open the airway (do NOT use head-tilt chin-lift). Proceed to Step 3 and call 101 immediately.],
)

#arrow-down()

// --- STEP 3 ---
#step-box(3, "Call 101 (Magen David Adom) immediately.",
  detail: "Always call 101 for any suspected head or spinal injury in a child. Provide your location, the child's approximate age, the mechanism of injury, current symptoms, and level of consciousness (AVPU). Even if the child appears alert and well, call 101 for any high-risk mechanism.",
  warning: "Do not delay calling 101. Children can deteriorate rapidly after head injury. A child who appears fine initially may have a developing intracranial bleed."
)

#arrow-down()

// --- STEP 4 ---
#step-box(4, "Keep the child completely still -- do NOT move them.",
  detail: "This is the single most important instruction. If the child is lying down, do not sit them up. If the child is sitting, do not lay them down unless they become unconscious and need airway management. Maintain the child in the position found.",
  warning: "Moving a child with a spinal injury can cause permanent neurological damage or paralysis. Standing or walking ability does NOT exclude spinal cord injury."
)

#arrow-down()

#decision-box("Is the child in immediate danger (fire, traffic, structural collapse)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Move the child only the minimum distance necessary to reach safety, keeping the head, neck, and spine aligned as much as possible.],
  no-branch[Do not move the child at all. Keep them in the position found and proceed to Step 5.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-document \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 2: STABILISATION & AIRWAY (Steps 5-7) ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[HEAD & SPINAL INJURY — STABILISATION & AIRWAY]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

#emergency-box(emergency-number, emergency-service)

#v(4pt)

#all-emergency-numbers()

#v(8pt)

// --- STEP 5 ---
#step-box(5, "Stabilise the head and neck manually (manual in-line stabilisation).",
  detail: "Place your hands on either side of the child's head and hold it steady, aligned with the spine. Do not twist, bend, or rotate the head or neck. Maintain this position continuously until MDA paramedics arrive and take over. Two providers are ideal if available.",
  warning: "Do NOT attempt to straighten the neck if it is in an abnormal position. Hold it in the position found."
)

#arrow-down()

// --- STEP 6 ---
#step-box(6, "Manage the airway if the child is unconscious, using the jaw thrust manoeuvre.",
  detail: "If the child is unresponsive, open the airway using jaw thrust only -- place your fingers behind the angles of the lower jaw and lift the jaw forward. Do NOT use head-tilt chin-lift, as this can worsen a cervical spine injury. Position yourself near the child's face.",
  warning: "Never use head-tilt chin-lift on a child with suspected spinal injury. Jaw thrust is the only safe airway manoeuvre."
)

#arrow-down()

#decision-box("Is the child breathing after jaw thrust?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain the jaw thrust and manual cervical stabilisation. Monitor breathing continuously. Proceed to Step 7.],
  no-branch[Begin CPR per MDA protocol (see IL-CHILD-CPR-001), maintaining spinal alignment as much as possible. Continue until MDA arrives or the child resumes breathing.],
)

#arrow-down()

// --- STEP 7 ---
#step-box(7, "Control any visible scalp bleeding.",
  detail: "If the scalp is bleeding, apply gentle pressure with a clean cloth or sterile bandage. Scalp wounds can bleed heavily. In children, even moderate scalp bleeding can cause shock due to their smaller blood volume (an infant has only approx. 240 mL total, a one-year-old approx. 800 mL).",
  warning: "Do NOT apply direct pressure if you suspect a skull fracture (a depressed or unusually soft area of the skull). Do NOT push back any protruding matter or insert anything into a wound."
)

#arrow-down()

#decision-box("Do you suspect a skull fracture (depressed area, visible bone, clear fluid from ears or nose)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do not apply pressure to the wound. Loosely cover the wound with a sterile, non-adherent dressing. Do not attempt to stop the flow of clear fluid from ears or nose -- this may be cerebrospinal fluid.],
  no-branch[Apply gentle, direct pressure with a clean cloth or sterile bandage to control bleeding.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-document \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 3: MONITORING & RED FLAGS (Steps 8-11) ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[HEAD & SPINAL INJURY — MONITORING & RED FLAGS]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

#emergency-box(emergency-number, emergency-service)

#v(4pt)

#all-emergency-numbers()

#v(8pt)

// --- STEP 8 ---
#step-box(8, "Assess for red flag warning signs and report to 101 dispatcher or arriving MDA crew.",
  detail: "Check for and note: loss of consciousness (even briefly), seizures or convulsions, repeated vomiting (more than once), unequal pupils (one larger than the other), clear fluid or blood draining from nose or ears, weakness or inability to move any limb, altered behaviour (unusual aggression, lethargy, confusion), bulging fontanelle in infants, and large or rapidly expanding scalp swelling."
)

#arrow-down()

#decision-box("Are any red flag signs present (loss of consciousness, seizures, repeated vomiting, unequal pupils, fluid from ears/nose, limb weakness)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Communicate these findings urgently to the 101 dispatcher or arriving MDA crew. These signs suggest serious intracranial or spinal cord injury requiring immediate hospital treatment.],
  no-branch[Continue monitoring. Even without red flags, maintain immobilisation and await MDA assessment. Children can deteriorate after a delay.],
)

#arrow-down()

// --- STEP 9 ---
#step-box(9, "Prevent hypothermia -- cover the child to maintain warmth.",
  detail: "Cover the child with a blanket, coat, or any available covering. Children lose body heat faster than adults due to their higher surface-area-to-body-mass ratio. Hypothermia worsens outcomes in trauma patients. In hot weather, provide shade instead.",
  warning: "Do not move the child to cover them. Place the covering over them in their current position."
)

#arrow-down()

// --- STEP 10 ---
#step-box(10, "Monitor continuously until MDA arrives.",
  detail: "Monitor breathing, level of consciousness (AVPU), and any changes in symptoms continuously. Note the time of injury and record any changes. Do not leave the child alone at any point. Keep the child calm and reassured."
)

#arrow-down()

#decision-box("Does the child vomit?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Carefully log-roll the child onto their side while a second person supports head and neck alignment (keeping head, neck, and body moving as one unit). This prevents aspiration. Do the best you can to maintain spinal alignment.],
  no-branch[Maintain the child in their current position. Continue monitoring.],
)

#arrow-down()

// --- STEP 11 ---
#step-box(11, "Do NOT remove a helmet if the child is wearing one.",
  detail: "If the child was wearing a bicycle, scooter, or other helmet at the time of injury, leave the helmet in place. Helmet removal requires two trained rescuers using a specific technique to avoid worsening a cervical spine injury. Leave this for MDA paramedics.",
  warning: "Improper helmet removal can cause catastrophic cervical spine injury. Never attempt to remove a helmet alone."
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-document \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 4: DO NOT LIST & EQUIPMENT ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[HEAD & SPINAL INJURY — CRITICAL REMINDERS]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

#emergency-box(emergency-number, emergency-service)

#v(4pt)

#all-emergency-numbers()

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Move the child unless they are in immediate life-threatening danger (fire, traffic, structural collapse)",
  "Remove a helmet -- leave this for MDA paramedics (requires two trained rescuers)",
  "Allow the child to stand up or walk, even if they want to -- standing or walking does NOT exclude spinal injury",
  "Give the child food or drink (they may need surgery or imaging under anaesthesia)",
  "Apply pressure to a depressed skull fracture or push back any protruding matter",
  "Insert anything into a wound",
  "Attempt to straighten the neck if it is in an abnormal position",
  "Use head-tilt chin-lift to open the airway -- use jaw thrust only",
  "Shake the child to assess responsiveness",
  "Leave the child alone -- continuous monitoring is essential",
  "Stop the flow of clear fluid from ears or nose (may be cerebrospinal fluid)",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Disposable gloves",
  "Clean cloth or sterile bandages for wound control",
  "Blanket or coat for warmth",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | #source-document | #source-url \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency. \
  Protocol ID: IL-CHILD-HEAD-SPINAL-INJURY-001
]
