// First Aid Protocol Flowchart — Head and Spinal Injury (Adult) — Israel
// Generated from: protocols/adult/israel/head-spinal-injury.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "HEAD AND SPINAL INJURY FIRST AID PROTOCOL (ADULT)"
#let protocol-category = "head_spinal_injury"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2024-01-01"
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
]

#v(6pt)

// Emergency number -- prominent
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 10pt)[Call 101 immediately for:] #text(size: 9pt)[any suspected head or spinal injury. Specific triggers: any loss of consciousness (even momentary), confusion or altered mental state after a blow to the head, neck or back pain after trauma, numbness/tingling/weakness in any limb, inability to move arms or legs, visible deformity of skull or spine, blood or clear fluid from nose or ears, unequal pupils, seizures after head trauma, or any mechanism suggesting significant force (road accident, fall from height, blast injury, direct blow to head/neck).]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#7c3aed"))[Summary:] #text(size: 9pt)[First aid for suspected head and spinal injuries in adults, emphasising manual in-line stabilisation, jaw thrust airway management, and not moving the patient unless life is in immediate danger.]
  #v(2pt)
  #text(size: 10pt, weight: "bold", fill: rgb("#7c3aed"))[When to apply:] #text(size: 9pt)[When an adult has sustained trauma to the head, neck, or back. Common scenarios in Israel include road traffic accidents, falls from height (hiking in wadis, cliffs), security incidents (blast, shrapnel), diving into shallow water, sports injuries, falls from ladders or rooftops, and any mechanism involving significant force to the head or spine.]
]

#v(6pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety.",
  detail: "Assess for ongoing danger: traffic, fire, structural instability, active security threat. Do NOT approach if the scene is unsafe -- call 101 and wait for professional responders."
)

#v(4pt)

#decision-box("Is there immediate life-threatening danger to the patient (fire, active shooting, imminent structural collapse)?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Move the patient only as a last resort using a log-roll technique keeping the spine aligned. Proceed to Step 2.],
  no-branch[Do NOT move the patient. Proceed to Step 2.],
)

#arrow-down()

// Step 2
#step-box(2, "Call MDA at 101 immediately.",
  detail: "Report: your precise location (GPS coordinates if in a remote area), mechanism of injury (how it happened), whether the patient is conscious and breathing, whether there is visible bleeding, and whether the patient can move their limbs. Keep the call on speaker if possible."
)

#arrow-down()

// Step 3
#step-box(3, "Assess mechanism of injury.",
  detail: "Determine the force and nature of the trauma. High-risk mechanisms include: road traffic accidents, security incidents (blast injuries, shrapnel), hiking falls (wadis in Negev, Judean Desert, Golan Heights), falls from height greater than the patient's standing height, diving into shallow water, sports injuries, falls from ladders or rooftops, heavy object striking the head or back, and any axial loading mechanism."
)

#v(4pt)

#decision-box("Is this isolated penetrating trauma (stab wound or gunshot) without blunt trauma component and without neurological deficits?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Spinal immobilisation is NOT required for isolated penetrating trauma. Manage wounds and bleeding. Still call 101.],
  no-branch[Assume spinal injury. Proceed to Step 4 for manual in-line stabilisation.],
)

#arrow-down()

// Step 4
#step-box(4, [Perform manual in-line stabilisation (#heb[ייצוב ידני]).],
  detail: "This is the single most important first aid intervention for suspected spinal injury. Kneel or lie behind the patient's head. Place your hands on both sides of the patient's head, cupping the ears gently. Hold the head in a neutral position aligned with the body. Do NOT twist, flex, or extend the neck. Maintain this stabilisation continuously until professional help arrives. Talk to the patient to keep them calm and still.",
  warning: "Do NOT attempt to straighten the head if it is found in a rotated position and the patient resists or reports pain -- stabilise in the position found."
)

#arrow-down()

// Step 5
#step-box(5, "Assess airway and breathing.")

#v(4pt)

#decision-box("Is the patient conscious and talking?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[The airway is open. Maintain stabilisation and proceed to Step 6.],
  no-branch[The patient is unconscious. Use the jaw thrust manoeuvre (#heb[משלט לסת]) to open the airway. Do NOT use head-tilt chin-lift as this moves the cervical spine. Place your fingers behind the angles of the lower jaw on both sides and push the jaw forward without moving the neck. Proceed to check breathing.],
)

#arrow-down()

// Step 6
#step-box(6, "If the patient is unconscious, check for breathing and pulse.")

#v(4pt)

#decision-box("Is the patient breathing and does the patient have a pulse?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain stabilisation and jaw thrust if needed. Proceed to Step 7.],
  no-branch[Begin CPR with spinal precautions: use jaw thrust for ventilations (ideally two responders -- one maintains jaw thrust, second operates ventilation), perform chest compressions as normal. Control any severe haemorrhage before initiating CPR. Proceed to Step 7 between CPR cycles.],
)

#arrow-down()

// Step 7
#step-box(7, "Control bleeding.",
  detail: "If there is bleeding from the scalp, apply gentle direct pressure with a clean dressing. For associated limb bleeding, apply direct pressure or a tourniquet (CAT tourniquet) as indicated.",
  warning: "Do NOT apply pressure if you suspect a skull fracture (depressed bone, visible brain matter) -- cover loosely with a sterile dressing. If blood or clear fluid is draining from the ears, do NOT plug the ears -- allow drainage and cover loosely."
)

#v(4pt)

#decision-box("Is there a suspected skull fracture (depressed bone, visible deformity, brain matter visible)?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT apply direct pressure. Cover the wound loosely with a sterile dressing. Proceed to Step 8.],
  no-branch[Apply gentle direct pressure to any scalp wounds with a clean dressing. Proceed to Step 8.],
)

#arrow-down()

// Step 8
#step-box(8, "Perform neurological assessment.",
  detail: "Check: Can the patient feel sensations in all four limbs? Can the patient move fingers and toes? Compare strength left versus right and note any asymmetry. Check pupil size and reactivity (unequal pupils suggest raised intracranial pressure). If trained, assess Glasgow Coma Scale (GCS) and report to MDA dispatchers. GCS 13--15 = mild, GCS 9--12 = moderate, GCS 3--8 = severe (critical)."
)

#arrow-down()

// Step 9
#step-box(9, "Apply a cervical collar if available.",
  detail: "A second person must maintain manual stabilisation while the collar is applied. Sizing must be correct -- an improperly sized collar can cause harm.",
  warning: "A collar alone is NOT sufficient. Continue to support the head even with a collar applied."
)

#arrow-down()

// Step 10
#step-box(10, "Monitor and reassure the patient continuously.",
  detail: "Keep the patient still and calm -- explain what you are doing. Monitor breathing and consciousness continuously. Note any changes in neurological status (can they still move fingers/toes? are they becoming more or less alert?). Watch for signs of deterioration: progressive loss of consciousness, repeated or projectile vomiting, seizures, unequal pupils, weakness on one side. Keep the patient warm -- cover with a blanket or clothing (hypothermia worsens trauma outcomes). In desert or hot conditions, shade the patient from direct sun while maintaining immobilisation."
)

#arrow-down()

// Step 11
#step-box(11, [Assess for concussion signs (#heb[זעזוע מוח]).],
  detail: "Concussion is a mild traumatic brain injury. Signs include: headache (most common), feeling foggy or confused, difficulty concentrating, dizziness, nausea, sensitivity to light and noise, fatigue and drowsiness, emotional changes (irritability, sadness), sleep disturbances, balance problems. A person does NOT need to lose consciousness to have a concussion. Concussion symptoms may be delayed and appear hours after the injury."
)

#arrow-down()

// Step 12
#step-box(12, "If the unconscious patient is vomiting, use the log-roll technique with spinal precautions.",
  detail: "One person maintains head and neck alignment while others roll the patient onto their side as a single unit. Continue to support the head in alignment with the body. This requires a minimum of 3 people -- the person at the head commands the roll."
)

#arrow-down()

// Step 13
#step-box(13, "If the patient must be moved due to a life-threatening situation, use a log-roll technique.",
  detail: "This applies ONLY when there is immediate danger to life (fire, active threat, imminent structural collapse). Minimum 3 people required: one controlling the head, others supporting the body. The person at the head commands the roll. Roll the patient as a single unit onto their side or onto a firm surface (door, board). Maintain spinal alignment throughout.",
  warning: "Moving the patient without proper technique may cause or worsen spinal cord damage, potentially resulting in permanent paralysis."
)

#arrow-down()

// Step 14
#step-box(14, "Do NOT remove a motorcycle or bicycle helmet unless the patient cannot breathe.",
  detail: "Open the face shield first for communication and airway assessment. Full helmet removal requires two trained responders -- one maintains C-spine stabilisation while the other removes the helmet. A single responder cannot safely remove a helmet while maintaining cervical spine control."
)

#v(4pt)

#decision-box("Is the patient wearing a helmet and unable to breathe?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Remove the helmet with two trained responders: one maintains C-spine stabilisation while the other carefully removes the helmet.],
  no-branch[Leave the helmet in place. Open the face shield if present for communication and airway monitoring.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT move the patient unless there is immediate danger to life (fire, active threat, structural collapse).",
  "Do NOT twist, flex, or extend the neck.",
  "Do NOT attempt to sit the patient up.",
  "Do NOT use head-tilt chin-lift to open the airway -- use jaw thrust only.",
  "Do NOT remove a helmet without proper training and a second person.",
  "Do NOT give the patient food or drink.",
  "Do NOT leave the patient alone.",
  "Do NOT apply direct pressure to a suspected skull fracture (depressed bone, visible brain matter).",
  "Do NOT plug the ears or nose if blood or clear fluid is draining.",
  "Do NOT pull the patient by the arms or legs.",
  "Do NOT attempt to extract a patient from a vehicle unless the vehicle is on fire or there is another immediate life threat.",
  "Do NOT give oral fluids even if the patient is dehydrated (risk of vomiting and aspiration).",
  "Do NOT attempt to straighten the head if the patient resists or reports pain -- stabilise in the position found.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 11pt, weight: "bold", fill: rgb("#92400e"))[Equipment needed:]
  #v(4pt)
  #text(size: 9pt)[
    - Disposable gloves \
    - Clean dressings or bandages for wound care \
    - Sterile dressing for skull fracture coverage \
    - Cervical collar (if available and properly sized) \
    - Blanket or thermal protection \
    - Tourniquet (CAT) for associated limb haemorrhage \
    - High-visibility vest (if responding at a road accident)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · Protocol ID: IL-ADULT-HEAD-SPINAL-INJURY-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
