// First Aid Protocol Flowchart — CPR for Children and Infants (Israel)
// Generated from: protocols/child/israel/cpr.json
// Protocol ID: IL-CHILD-CPR-001

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "CPR for Children and Infants"
#let protocol-category = "cpr"
#let country = "Israel"
#let age-group = "Child / Infant"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2024-04-01"
#let last-verified = "2026-03-15"
#let edition = "BLS Guide 2016 / ALS Professional Handbook 2024"

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
  #text(size: 10pt, fill: rgb("#6b7280"))[Child: 1 year to puberty | Infant: 1 month to 1 year]
]

#v(6pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// Key context
#key-info-box()[
  #text(weight: "bold")[Key principle:] In children, cardiac arrest is almost always caused by _respiratory failure_. *Rescue breaths are essential* -- compression-only CPR is NOT adequate.\
  #text(weight: "bold")[Sequence:] *C-A-B* (Compressions -- Airway -- Breathing)\
  #text(weight: "bold")[Lone rescuer:] Perform *2 minutes of CPR first*, then call 101.
]

#v(6pt)

// --- STEP 1 ---
#step-box(1, "Ensure scene safety.",
  detail: "Check the area is safe before approaching the child or infant.",
)

#arrow-down()

// --- STEP 2 ---
#step-box(2, "Check responsiveness.",
  detail: "Infant: tap sole of foot. Child: tap and shout, or gently squeeze the trapezius. Call the child's name.",
)

#v(4pt)
#decision-box("Is the child/infant responsive?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT perform CPR. Monitor, keep comfortable, call 101 if concerned.],
  no-branch[Proceed to Step 3 -- check breathing.],
)

#arrow-down()

// --- STEP 3 ---
#step-box(3, "Check for breathing. Look, listen, and feel for no more than 10 seconds.",
)

#v(4pt)
#decision-box("Is the child/infant breathing normally?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in recovery position on their side. Monitor breathing. Call 101.],
  no-branch[Child/infant is in cardiac arrest. Proceed to Step 4.],
)

#arrow-down()

// --- STEP 4 ---
#step-box(4, "Call for help.",
  detail: "If alone: perform 2 minutes of CPR first (approx. 5 cycles of 30:2), then call 101. If someone else is present: send them to call 101 and fetch an AED immediately.",
)

#v(4pt)
#decision-box("Are you alone with the child/infant?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Begin CPR now. After 2 minutes (5 cycles of 30:2), call 101 and get AED.],
  no-branch[Send other person to call 101 and fetch AED. Begin CPR now.],
)

#v(1fr)

// Footer page 1
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) -- #edition · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 2: STEPS 5-7 (COMPRESSIONS, AIRWAY, BREATHING) ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CPR for Children and Infants -- Steps 5-7]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Compressions -- Airway -- Breathing]
]

#v(8pt)

// --- STEP 5 ---
#step-box(5, "Begin chest compressions (C). Place on a firm, flat surface.",
  detail: "Compress the lower third of the sternum, on a line between the nipples. Rate: 100-120 compressions per minute. Allow full chest recoil. Minimise interruptions.",
)

#v(4pt)
#decision-box("Is the patient an infant (under 1 year)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[
    *Single rescuer:* Two-finger technique -- 2 straight fingers at 90 degrees on centre of chest.\
    *Two rescuers:* Two-thumb encircling hands technique.\
    *Depth:* approx. *4 cm* (1/3 of chest depth).
  ],
  no-branch[
    Use heel of *one hand* or *two hands* depending on child's size.\
    *Depth:* approx. *5 cm* (1/3 of chest depth).
  ],
)

#arrow-down()

// --- STEP 6 ---
#step-box(6, "Open the airway (A).",
  detail: "Infant: neutral/sniffing position with gentle chin lift. Child: head-tilt chin-lift with mild extension.",
  warning: "Do NOT hyperextend an infant's neck. Infants in their first months are obligate nasal breathers.",
)

#v(4pt)
#decision-box("Is the patient an infant (under 1 year)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Keep head in *neutral/sniffing position*. Tilt head back only gently and lift chin.],
  no-branch[Perform *head-tilt chin-lift* with mild extension.],
)

#arrow-down()

// --- STEP 7 ---
#step-box(7, "Deliver 2 rescue breaths (B).",
  detail: "Each breath over approx. 1 second, just enough to see chest rise. Avoid excessive volume or pressure.",
  warning: "Rescue breaths are ESSENTIAL in paediatric CPR. Compression-only CPR is NOT adequate for children and infants.",
)

#v(4pt)
#decision-box("Is the patient an infant (under 1 year)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Seal mouth over infant's *mouth AND nose*. Deliver *gentle puffs* from cheeks, not deep lung breaths.],
  no-branch[Pinch child's nose closed, seal mouth over child's mouth. Deliver breaths until chest rises.],
)

#v(1fr)

// Footer page 2
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) -- #edition · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 3: STEPS 8-12 AND DO NOT LIST ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CPR for Children and Infants -- Steps 8-12]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Continue CPR -- AED -- When to Stop]
]

#v(8pt)

// --- STEP 8 ---
#step-box(8, "If chest does not rise with rescue breaths, reposition the airway and try again.",
  detail: "Re-tilt head and re-lift chin, then reattempt. If still unsuccessful, consider foreign body obstruction.",
)

#v(4pt)
#decision-box("Does the chest rise with rescue breaths?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue CPR cycles (Step 9).],
  no-branch[Reposition head/airway and reattempt. If still no rise, suspect foreign body obstruction.],
)

#arrow-down()

// --- STEP 9 ---
#step-box(9, "Continue CPR cycles using the correct compression-to-breath ratio.",
  detail: "Single rescuer: 30:2. Two rescuers: 15:2. Continue without interruption.",
)

#v(4pt)
#decision-box("Are there two or more rescuers?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use *15:2* ratio (15 compressions to 2 breaths). Infants: use two-thumb encircling hands technique.],
  no-branch[Use *30:2* ratio (30 compressions to 2 breaths).],
)

#arrow-down()

// --- STEP 10 ---
#step-box(10, "Use an AED as soon as one becomes available.",
  detail: "Use paediatric pads/dose attenuator if available. If only adult pads: ensure pads do not touch each other. For small chests: use anteroposterior placement (one pad front, one pad back). Follow AED voice prompts.",
  warning: "If using adult pads on a small child or infant, ensure the pads do not touch or overlap each other.",
)

#arrow-down()

// --- STEP 11 ---
#step-box(11, "After any AED shock, immediately resume CPR starting with chest compressions.",
  detail: "Resume 5 cycles of compressions and breaths before reassessing rhythm.",
)

#arrow-down()

// --- STEP 12 ---
#step-box(12, "Continue CPR until one of the following occurs.",
  detail: "(1) Professional help arrives (MDA ambulance). (2) Child starts breathing and responding. (3) You are physically unable to continue.",
)

#v(4pt)
#decision-box("Has the child started breathing and responding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Stop CPR.* Place in recovery position on side. Monitor breathing until MDA arrives.],
  no-branch[*Continue CPR* without interruption until help arrives or you are unable to continue.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT hyperextend an infant's neck -- use neutral/sniffing position only.",
  "Do NOT insert fingers into the infant's or child's mouth (risk of pushing objects deeper).",
  "Do NOT deliver deep lung breaths to infants -- use gentle puffs from your cheeks.",
  "Do NOT use excessive volume or pressure when delivering rescue breaths (risk of gastric distension).",
  "Do NOT skip rescue breaths in paediatric CPR -- compression-only CPR is NOT adequate.",
  "Do NOT delay CPR to call for help when alone -- perform 2 minutes of CPR first, then call 101.",
  "Do NOT allow AED pads to touch or overlap each other on a small child or infant.",
  "Do NOT stop CPR to check for pulse unless there are clear signs of recovery (breathing, movement).",
  "Do NOT compress over the xiphoid process (the very bottom tip of the sternum).",
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
  #text(weight: "bold", size: 11pt)[Equipment (if available):]
  #v(4pt)
  #text(size: 10pt)[
    - AED with paediatric pads or paediatric dose attenuator\
    - Barrier device or pocket mask (for rescue breaths)\
    - Bag-valve-mask: infant size (250-350 cc) or paediatric size
  ]
]

#v(1fr)

// Footer page 3
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) -- #edition · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
