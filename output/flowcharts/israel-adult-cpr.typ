// First Aid Protocol Flowchart — CPR (Adult) — Israel
// Generated from: protocols/adult/israel/cpr.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "CPR (Cardiopulmonary Resuscitation) -- Adult"
#let protocol-category = "cpr"
#let country = "Israel"
#let age-group = "Adult (age 12+)"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2025-01-01"
#let last-verified = "2026-03-15"
#let edition = "AHA 2025 Guidelines"

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
  #text(weight: "bold", size: 11pt)[WHEN TO APPLY:] An adult (age 12+) is found unresponsive and is not breathing normally (absent breathing or only gasping/agonal breathing).
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
  #text(weight: "bold", size: 10pt)[Equipment needed:] AED (Automated External Defibrillator) | Barrier device or pocket mask (if available) | Phone (for 101 and speakerphone)
]

#v(6pt)

// ==========================================
// STEP 1: Check responsiveness
// ==========================================
#step-box(1,
  "Check responsiveness: call out to the person, shake their shoulders gently, and ask loudly 'Are you okay?'",
  detail: "In Hebrew: 'Ha'im ata beseder?' Apply gentle stimulation such as a light pinch to determine if they respond.",
)

#v(4pt)
#decision-box("Is the person responsive?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do not perform CPR. Assess their condition and provide appropriate first aid. Call 101 if needed.],
  no-branch[Proceed to Step 2 (check breathing).],
)

#arrow-down()

// ==========================================
// STEP 2: Check breathing
// ==========================================
#step-box(2,
  "Check breathing for no more than 10 seconds: look for chest rise, listen for breath sounds, feel for air on your cheek.",
  detail: "Gasping (agonal breathing) is NOT normal breathing -- treat it as cardiac arrest and proceed with CPR.",
  warning: "Do not spend more than 10 seconds checking for breathing. Delays reduce survival.",
)

#v(4pt)
#decision-box("Is the person breathing normally?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in recovery position (on their side, upper leg bent at 90 degrees). Call 101. Monitor breathing until EMS arrives.],
  no-branch[Proceed to Step 3 (activate emergency response).],
)

#arrow-down()

// ==========================================
// STEP 3: Call 101
// ==========================================
#step-box(3,
  "Call 101 (MDA emergency dispatch) immediately.",
  detail: "MDA dispatchers provide real-time CPR coaching over the phone (telephone-assisted CPR). If choking is suspected, perform CPR first, then call.",
)

#v(4pt)
#decision-box("Is another person available to help?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Direct them to call 101 and retrieve the nearest AED while you begin compressions immediately.],
  no-branch[Call 101 yourself (use speakerphone), then retrieve an AED if within close reach, then begin compressions.],
)

#arrow-down()

// ==========================================
// STEP 4: Locate AED
// ==========================================
#step-box(4,
  "Request or locate an AED.",
  detail: "Israeli law requires AEDs in public spaces with 500+ capacity. MDA operates 1,000+ 'smart stands' unlockable by 101 dispatch. Use the Eifo-Defi app to find the nearest AED.",
)

#arrow-down()

// ==========================================
// STEP 5: Position the person
// ==========================================
#step-box(5,
  "Position the person supine (face up) on a firm, flat surface.",
  detail: "In extreme heat, move to shade if possible. Hot surfaces (asphalt, sand) can cause burns -- place a barrier under the person if feasible.",
)

#arrow-down()

// ==========================================
// STEP 6: Hand placement
// ==========================================
#step-box(6,
  "Place the heel of one hand in the centre of the chest, on the breastbone, between the nipples. Place your other hand on top with fingers interlocked.",
  detail: "Use upper body weight; press straight down; keep arms locked and straight.",
)

#arrow-down()

// ==========================================
// STEP 7: Begin compressions
// ==========================================

#pagebreak()

#rect(
  fill: rgb("#dbeafe"),
  stroke: 2pt + rgb("#2563eb"),
  radius: 8pt,
  width: 100%,
  inset: 12pt,
)[
  #set text(size: 14pt, weight: "bold")
  #align(center)[KEY PARAMETERS]
  #v(4pt)
  #set text(size: 12pt, weight: "regular")
  #grid(columns: (1fr, 1fr, 1fr), gutter: 12pt,
    align(center)[
      #text(weight: "bold", size: 16pt)[100--120]\
      compressions/min
    ],
    align(center)[
      #text(weight: "bold", size: 16pt)[5--6 cm]\
      depth (2--2.4 in)
    ],
    align(center)[
      #text(weight: "bold", size: 16pt)[30 : 2]\
      compressions : breaths
    ],
  )
]

#v(6pt)

#step-box(7,
  "Begin chest compressions: push hard and fast at 100--120 per minute, to a depth of 5--6 cm (2--2.4 inches).",
  detail: "Allow full chest recoil between compressions. Do not lean on the chest. Minimise interruptions -- keep pauses under 10 seconds.",
  warning: "Inadequate depth or rate, incomplete recoil, and excessive interruptions all reduce CPR effectiveness.",
)

#v(4pt)
#decision-box("Are you trained in CPR and willing to give rescue breaths?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Perform 30 compressions then 2 rescue breaths (proceed to Step 8).],
  no-branch[Perform continuous chest compressions at 100--120/min without stopping (hands-only CPR). Skip to Step 11.],
)

#arrow-down()

// ==========================================
// STEP 8: Open airway
// ==========================================
#step-box(8,
  "After 30 compressions, open the airway: head-tilt / chin-lift manoeuvre -- tilt the head back gently and lift the chin.",
  detail: "This lifts the tongue away from the back of the throat to open the airway.",
)

#arrow-down()

// ==========================================
// STEP 9: Rescue breaths
// ==========================================
#step-box(9,
  "Deliver 2 rescue breaths: pinch nose closed, seal your mouth over theirs, deliver each breath over 1 second with enough volume for visible chest rise.",
  warning: "Do not over-ventilate. Excessive ventilation increases gastric inflation and reduces venous return.",
)

#v(4pt)
#decision-box("Does the chest rise visibly with each breath?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Resume compressions immediately after the 2 breaths (proceed to Step 10).],
  no-branch[Reposition the head (re-tilt) and reattempt. If chest still does not rise, resume compressions -- do not delay for repeated attempts.],
)

#arrow-down()

// ==========================================
// STEP 10: Continue cycles
// ==========================================
#step-box(10,
  "Resume compressions immediately after the 2 breaths. Continue cycles of 30 compressions and 2 breaths.",
  detail: "Each cycle of 30:2 takes approximately 2 minutes for 5 cycles.",
)

#arrow-down()

// ==========================================
// STEP 11: AED arrives
// ==========================================
#step-box(11,
  "When the AED arrives, turn it on and apply the electrode pads immediately without delay.",
  detail: "One pad under the right collarbone. The other pad under and to the left of the left breast. Alternative: one pad on the front, one on the back. Follow the diagram on the pads.",
)

#arrow-down()

// ==========================================
// STEP 12: Follow AED prompts
// ==========================================
#step-box(12,
  "Follow the AED's voice prompts. The device will analyse the heart rhythm and advise whether a shock is indicated.",
  warning: "Ensure no one is touching the person during AED analysis and shock delivery. Announce 'Stand clear!' before analysis and before any shock.",
)

#v(4pt)
#decision-box("Does the AED advise a shock?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Ensure everyone is clear, then press the shock button. Resume CPR immediately after shock.],
  no-branch[Resume CPR immediately. The AED will re-analyse after 2 minutes.],
)

#arrow-down()

// ==========================================
// STEP 13: Resume CPR after shock
// ==========================================
#step-box(13,
  "Resume CPR immediately after shock delivery (or if no shock advised). Do not wait for the AED to re-analyse.",
  detail: "The AED will prompt for another rhythm check after approximately 2 minutes (5 cycles of 30:2).",
)

#arrow-down()

// ==========================================
// STEP 14: Reassess
// ==========================================
#step-box(14,
  "Reassess every 2 minutes (approximately 5 cycles of 30:2).",
  detail: "If two or more trained rescuers are present, rotate compressors every 2 minutes to maintain quality. Complete the switch in under 10 seconds.",
)

#arrow-down()

// ==========================================
// STEP 15: Continue until...
// ==========================================
#step-box(15,
  "Continue CPR until: EMS (MDA) arrives and takes over; the person shows signs of life (breathing, movement, coughing); an AED prompts you to stop; or you are physically unable to continue.",
)

#v(4pt)
#decision-box("Has the person begun breathing normally on their own?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Stop CPR. Place in recovery position (on their side, upper leg bent at 90 degrees). Monitor until EMS arrives.],
  no-branch[Continue CPR cycles and AED use. Do not stop until EMS takes over or you are physically unable to continue.],
)

#v(12pt)

// ==========================================
// DO NOT list
// ==========================================
#do-not-box((
  "Do not delay calling 101 -- early activation of EMS is critical for survival.",
  "Do not spend more than 10 seconds checking for breathing.",
  "Do not interrupt chest compressions for more than 10 seconds for any reason.",
  "Do not lean on the chest between compressions -- allow full recoil.",
  "Do not compress deeper than 6 cm (2.4 inches) to avoid internal injury.",
  "Do not over-ventilate -- deliver each breath over 1 second only, just enough for visible chest rise.",
  "Do not touch the person while the AED is analysing the rhythm or delivering a shock.",
  "Do not delay AED use -- apply it as soon as it arrives, even if CPR is in progress.",
  "Do not wait for the AED to re-analyse before resuming compressions after a shock.",
  "Do not move the person unnecessarily -- perform CPR where they are unless the scene is unsafe.",
  "Do not assume gasping (agonal breathing) is normal breathing -- it is a sign of cardiac arrest.",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority | Edition: #edition | Published: #source-date | Last verified: #last-verified \
  Protocol ID: IL-ADULT-CPR-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
