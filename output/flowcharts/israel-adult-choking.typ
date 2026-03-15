// First Aid Protocol Flowchart — Choking (Adult) — Israel
// Generated from: IL-ADULT-CHOKING-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "CHOKING (Foreign Body Airway Obstruction)"
#let protocol-category = "choking"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-edition = "MDA 101 Public First Aid Guidance Series; corroborated by BLS Guide 2016"
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
    #text(fill: rgb("#16a34a"), weight: "bold", size: 11pt)[YES →] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold", size: 11pt)[NO →] #content
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

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 14pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

// Emergency number — prominent
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
  #text(weight: "bold", size: 11pt)[Recognise choking:] Grasping neck, unable to speak / cough / breathe, face turning red or blue, high-pitched wheezing, sudden distress while eating.
]

#v(6pt)

// === STEP 1 — Assess ===
#step-box(1, "Assess the choking victim. Ask: 'Are you choking? Can you speak?'",
  detail: "Determine whether the obstruction is partial or complete. Look for: grasping at throat, inability to speak or cough, face turning red/blue, high-pitched wheezing, loss of consciousness.")

#v(4pt)

// Decision 1
#decision-box("Can the person cough forcefully and speak?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[DO NOT intervene. Allow them to cough. Coughing is the body's most effective defence. Monitor closely and be ready to act if the situation worsens.],
  no-branch[Airway is completely obstructed. Proceed to Step 2 immediately.],
)

#v(6pt)

// === STEP 2 — Call for help ===
#step-box(2, "Call for help. Instruct a bystander to call 101 (MDA) immediately.",
  detail: "If alone, begin life-saving actions first (Heimlich maneuver), then call 101 as soon as possible. Do not delay treatment to make the call.")

#arrow-down()

// === STEP 3 — Special populations ===
#step-box(3, "Determine if special population requiring modified technique.")

#v(4pt)

#decision-box("Is the person pregnant, very obese, or in a wheelchair?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use *chest thrusts* instead: place hands on centre of breastbone (sternum) and thrust firmly. For wheelchair users, perform while seated. Proceed to Step 4 using chest thrusts.],
  no-branch[Proceed to Step 4 using standard abdominal thrusts (Heimlich maneuver).],
)

#v(6pt)

// === STEP 4 — Heimlich ===
#step-box(4, "Perform abdominal thrusts (Heimlich maneuver).",
  detail: "Stand behind the person. Wrap arms around their waist. Make a fist with one hand. Place the thumb side above the navel and below the breastbone. Grasp fist with other hand. Perform rapid, forceful thrusts inward and upward. Repeat until the object is expelled.")

#arrow-down()

// === STEP 5 — Reassess ===
#step-box(5, "After each set of thrusts, reassess the person.")

#v(4pt)

#decision-box("Has the object been expelled and can the person breathe?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Stop thrusts. Monitor the person. *Seek medical evaluation* even after successful removal — internal injuries from thrusts are possible.],
  no-branch[Continue thrusts if conscious (repeat Step 4). If the person *loses consciousness*, proceed to Step 6.],
)

#v(6pt)

// === STEP 6 — Unconscious ===
#step-box(6, "If person loses consciousness: STOP abdominal thrusts immediately.",
  detail: "Carefully lower the person to the ground onto a firm, flat surface.",
  warning: "Do not continue abdominal thrusts on an unconscious person.")

#arrow-down()

// === STEP 7 — Call 101 ===
#step-box(7, "Call 101 (MDA) if not already done.",
  detail: "If alone and emergency services have not yet been contacted, call now before beginning CPR.")

#arrow-down()

// === STEP 8 — CPR ===
#step-box(8, "Begin CPR: 30 chest compressions followed by 2 rescue breaths.",
  detail: "Before each set of rescue breaths, open the airway and look in the mouth for a visible object. If visible, remove it carefully with a finger sweep. If NOT visible, do NOT perform a blind finger sweep. Continue CPR cycles (30:2) until emergency services arrive or the person recovers.")

#v(8pt)

// === STEP 9 — Self-treatment ===
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 2pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 12pt, fill: rgb("#7c3aed"))[Step 9 — Self-treatment if choking while alone]
  #v(4pt)
  Lean over a firm object (back of a chair or countertop edge). Press your upper abdomen forcefully against the object to generate an upward thrust. Repeat until the object is expelled. Call 101 as soon as you can speak.
]

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Perform abdominal thrusts on a person who can cough forcefully and speak -- you may worsen the obstruction or cause injury.",
  "Perform back blows (slaps on the back) on an adult. The Israeli/MDA protocol explicitly describes this as incorrect and potentially harmful for adults.",
  "Perform blind finger sweeps -- only remove an object from the mouth if you can clearly see it.",
  "Attempt to give water or any liquid to a choking person.",
  "Continue abdominal thrusts on an unconscious person -- transition to CPR.",
  "Use abdominal thrusts on pregnant women or very obese individuals -- use chest thrusts instead.",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority · #source-edition \
  Last verified: #last-verified · Protocol ID: IL-ADULT-CHOKING-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
