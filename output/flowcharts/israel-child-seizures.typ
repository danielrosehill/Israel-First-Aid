// First Aid Protocol Flowchart — Seizures in Children (Including Febrile Seizures)
// Protocol ID: IL-CHILD-SEIZURES-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SEIZURES IN CHILDREN"
#let protocol-subtitle = "Including Febrile Seizures"
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
      -- #item \
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

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[CALL 101 IMMEDIATELY IF:]
  #v(4pt)
  #set text(size: 10pt)
  - This is the child's *first seizure*
  - Seizure lasts *more than 5 minutes*
  - Difficulty breathing, choking, or skin discolouration (cyanosis/pallor)
  - Child does *not regain consciousness* after seizure ends
  - Multiple seizures in a short period
  - Anti-seizure medication given but seizure persists
]

#v(6pt)

// === PROTOCOL STEPS ===

#step-box(1, "Ensure safety. Remove dangerous objects from the child's vicinity.",
  detail: "Move furniture, sharp objects, and hard items away. Pad the area with pillows or blankets if possible.")

#v(6pt)

#step-box(2, "Lay the child on their side with head supported and tilted to the side or slightly downward.",
  detail: "Keeps the airway clear and prevents choking if the child vomits. Do not move the child unless in immediate danger (e.g., near traffic or a ledge).")

#v(6pt)

#step-box(3, "Loosen tight clothing, especially around the neck.",
  detail: "Undo buttons, ties, or anything constricting the airway or chest.")

#v(6pt)

#step-box(4, "Time the seizure. Note when it started and how long it lasts.",
  detail: "Seizure duration is critical for emergency responders. A seizure lasting more than 5 minutes is a medical emergency (status epilepticus).",
  warning: "A seizure lasting 5 or more minutes, or multiple consecutive seizures without recovery of consciousness, constitutes status epilepticus. Untreated cases beyond 30 minutes risk permanent brain damage.")

#v(6pt)

// Decision Point 1: First seizure?
#decision-box("Is this the child's FIRST seizure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA) immediately. A first seizure always requires medical evaluation. MDA will transport to hospital.],
  no-branch[Continue to assess seizure duration and severity (Step 6).],
)

#v(6pt)

// Decision Point 2: Duration / severity
#decision-box("Has the seizure lasted more than 5 minutes, or does the child show difficulty breathing, choking, or skin discolouration (blue/pale)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA) immediately. This is a medical emergency.],
  no-branch[Continue monitoring. Stay with the child. Proceed to Step 7.],
)

#v(6pt)

#step-box(7, "If the child has a prescribed seizure-stopping medication (e.g., rectal diazepam), administer it according to the doctor's instructions.",
  detail: "Only administer medication specifically prescribed for this child. Do NOT give any medication by mouth during the seizure.")

#v(4pt)

// Decision Point 3: Medication but seizure persists?
#decision-box("Has medication been administered but the seizure persists?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA) immediately.],
  no-branch[Continue monitoring until the seizure stops.],
)

#v(6pt)

#step-box(8, "For febrile seizures: wrap the child in a damp (lukewarm) towel to help reduce fever.",
  detail: "Use lukewarm water only. Do NOT put the child in a bath or shower during the seizure.",
  warning: "Do NOT attempt to cool the child rapidly with cold water, ice, or cold baths. Use only lukewarm damp towels.")

#v(6pt)

#step-box(9, "If in a vehicle: keep the child secured in their safety seat.",
  detail: "Pull over safely if driving. Do not remove the child from the safety seat during the seizure.")

#v(6pt)

#step-box(10, "After the seizure stops: place the child in the recovery position (on their side) and monitor breathing.",
  detail: "The child may be drowsy, confused, or sleepy (post-ictal state). This is normal and can last minutes to hours. Stay with the child and provide reassurance.")

#v(6pt)

// Decision Point 4: Recovery?
#decision-box("Does the child regain consciousness and begin to recover?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue to monitor. After a febrile seizure, the child should be examined by a paediatrician. For a first seizure, seek immediate medical evaluation.],
  no-branch[Call 101 (MDA) immediately if not already called. Failure to regain consciousness is a medical emergency.],
)

#v(6pt)

#step-box(12, "Once recovered (febrile seizure): manage the fever to reduce recurrence risk.",
  detail: "Administer age- and weight-appropriate fever-reducing medication (paracetamol or ibuprofen) as directed by the family doctor. Dress in light clothing. Ventilate the room. Give plenty of fluids. A lukewarm bath (~20 min) may be given only when the child is NOT actively seizing.",
  warning: "Antipyretics may improve comfort but have NOT been proven to prevent febrile seizures (per Israeli Ministry of Health). Dosage should be determined by the family doctor.")

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Force the child's mouth open -- the child will not swallow their tongue.",
  "Insert anything into the mouth -- this can injure teeth or jaw.",
  "Attempt resuscitation movements (CPR) during the seizure -- this can only cause harm.",
  "Put the child in a bath or shower during the seizure.",
  "Splash water on the child during the seizure.",
  "Try to wake the child or stop the seizure by restraining or holding them down.",
  "Give medications by mouth during the seizure.",
  "Attempt to cool the child rapidly with cold water or ice.",
  "Insert an airway device during an active seizure.",
  "Attempt forced airway opening during an active seizure.",
))

#v(6pt)

// === EQUIPMENT ===
#equipment-box((
  "Lukewarm damp towel (for febrile seizures)",
  "Pillows or blankets (to pad surroundings)",
  "Prescribed seizure-stopping medication if available (e.g., rectal diazepam)",
  "Fever-reducing medication for post-seizure fever management (paracetamol or ibuprofen, as directed by doctor)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority · Last verified: #last-verified \
  Protocol ID: IL-CHILD-SEIZURES-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
