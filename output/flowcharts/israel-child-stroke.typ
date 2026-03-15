// First Aid Protocol Flowchart — Stroke (Cerebrovascular Event) in Children
// Protocol ID: IL-CHILD-STROKE-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "STROKE IN CHILDREN"
#let protocol-subtitle = "Cerebrovascular Event — Pediatric"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2024-11-18"
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
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 14pt, fill: rgb("#4b5563"))[#protocol-subtitle]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to suspect stroke
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[SUSPECT STROKE IF THE CHILD SHOWS ANY OF:]
  #v(4pt)
  #set text(size: 10pt)
  - Facial drooping or asymmetry
  - Arm weakness or drift
  - Slurred or incomprehensible speech
  - Sudden severe headache with vomiting
  - New-onset seizure (especially one-sided)
  - Sudden altered mental status or confusion
  - Sudden loss of balance or coordination
  - Sudden vision loss or sudden behavioural changes
  - In very young children: irritability, feeding difficulty, or lethargy
]

#v(6pt)

// === PROTOCOL STEPS ===

#step-box(1, "Apply the FAST assessment to check for stroke signs.",
  detail: "F (Face): Ask the child to smile — check for facial drooping or asymmetry. A (Arms): Ask the child to raise both arms — check if one drifts downward or cannot be raised. S (Speech): Ask the child to repeat a simple phrase — check for slurred, confused, or incomprehensible speech. T (Time): Note the exact time symptoms began.",
  warning: "In children, stroke may present differently from adults. Be alert for seizures at onset, sudden severe headache with vomiting, gradual onset of symptoms, altered mental status, ataxia, or subtle signs in very young children (irritability, feeding difficulty, lethargy). FAST is not validated for the pediatric population and may miss atypical presentations.")

#v(6pt)

// Decision Point: FAST signs present?
#decision-box("Is any FAST sign present, or are there other neurological signs suggestive of stroke?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 immediately and continue with the remaining steps.],
  no-branch[Continue to monitor the child. If symptoms develop or you remain concerned, call 101.],
)

#v(6pt)

#step-box(2, "Call 101 (MDA) immediately if any stroke signs are present.",
  detail: "State clearly that you suspect a child is having a stroke. Describe the symptoms observed. MDA dispatchers will guide you while sending an ambulance to the appropriate stroke centre.")

#v(6pt)

#step-box(3, "Note the exact time symptoms began.",
  detail: "This is critical for the medical team. Clot-dissolving medication (alteplase) is only effective within approximately 4.5 hours for children aged 28 days to 18 years. Mechanical clot removal may be effective for children aged 6 and older within 6--24 hours in certain cases. If you did not witness onset, note the last time the child was seen acting normally.")

#v(6pt)

// Decision Point: Is the child conscious?
#step-box(4, "Keep the child calm and still. Position the child appropriately.",
  detail: "Lay the child down in a comfortable position. Loosen any tight clothing around the neck and chest.")

#v(4pt)

#decision-box("Is the child conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Lay the child down with head and shoulders slightly elevated. Keep them calm and still.],
  no-branch[Proceed to Step 5 to assess breathing and position accordingly.],
)

#v(6pt)

// Decision Point: Unconscious — breathing?
#step-box(5, "If the child is unconscious, assess breathing and act accordingly.")

#v(4pt)

#decision-box("Is the unconscious child breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place the child in the recovery position (on their side) and monitor continuously.],
  no-branch[Begin CPR immediately and follow MDA dispatcher instructions.],
)

#v(6pt)

// Decision Point: Seizure?
#step-box(6, "If the child has a seizure, manage it safely.",
  detail: "Do not restrain the child. Do not put anything in the child's mouth. Protect the child from injury by clearing the surrounding area. After the seizure stops, place the child on their side. Note the duration and type of seizure for medical personnel.")

#v(4pt)

#decision-box("Is the child having a seizure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Clear the area around the child to prevent injury. Do not restrain or insert anything into the mouth. After the seizure stops, place on their side. Note duration and type.],
  no-branch[Continue monitoring the child for changes in consciousness, breathing, and symptoms.],
)

#v(6pt)

#step-box(7, "Monitor the child continuously until emergency services arrive.",
  detail: "Watch for changes in consciousness, breathing, and symptoms. Be prepared to report any progression to MDA paramedics on arrival. Be ready to begin CPR if the child becomes unresponsive and stops breathing.")

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Delay calling 101 to wait and see if symptoms resolve.",
  "Give the child any food or drink -- stroke may impair the swallowing reflex, creating a risk of aspiration and choking.",
  "Give any medications, especially not aspirin -- if the stroke is haemorrhagic (bleeding), aspirin will worsen it.",
  "Attempt to drive the child to hospital yourself unless MDA explicitly advises it. MDA ambulances can begin treatment en route and will transport to the appropriate stroke centre.",
  "Assume a child cannot have a stroke -- children can have strokes at any age.",
  "Restrain the child during a seizure.",
  "Put anything in the child's mouth during a seizure.",
  "Rely solely on FAST to rule out stroke in children -- adult stroke screening tools are not validated for the pediatric population and may miss atypical presentations.",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  Protocol ID: IL-CHILD-STROKE-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
