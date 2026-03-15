// First Aid Protocol Flowchart — Seizures (Epileptic Seizure / Convulsions) — Adult — Israel
// Generated from: IL-ADULT-SEIZURES-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES → ] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO → ] #content
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
      — #item \
    ]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ #sym.arrow.b]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[SEIZURES (EPILEPTIC SEIZURE / CONVULSIONS)]
  #v(2pt)
  #text(size: 14pt, weight: "bold")[Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
]

#v(6pt)

// Emergency number (primary)
#emergency-box("101", [MDA (#heb[מד״א])])

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
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#dc2626"))[CALL 101 IF: ]
  #text(size: 10pt)[Seizure lasts >5 min -- second seizure without regaining consciousness -- first-time seizure -- difficulty breathing after seizure -- person is pregnant or diabetic -- injury during seizure.]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#5b21b6"))[SUMMARY: ]
  #text(size: 10pt)[Protect the person from injury during the seizure, time the seizure, place in recovery position after it ends, and call 101 if the seizure lasts more than 5 minutes or meets other emergency criteria.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Stay calm and note the time the seizure started.",
  detail: "Most seizures end on their own within 1--3 minutes. Timing is critical for determining whether the seizure qualifies as status epilepticus (>5 minutes) and whether emergency services are needed.",
)

#arrow-down()

// Step 2
#step-box(2, "Clear the area around the person to prevent injury.",
  detail: "Move sharp objects, furniture, hard items, or anything that could cause injury during convulsions. If the person is standing or seated, gently guide them to the ground.",
)

#arrow-down()

// Step 3
#step-box(3, "Place something soft and flat under the person's head.",
  detail: "Use a folded jacket, towel, cushion, or blanket to prevent head injury from repeated impact with the ground.",
)

#arrow-down()

// Step 4
#step-box(4, "Loosen tight clothing around the neck.",
  detail: "Remove or loosen ties, scarves, collars, necklaces, and belts to aid breathing.",
)

#arrow-down()

// Step 5
#step-box(5, "Assess whether the person needs to be turned onto their side during the seizure.",
  detail: "If the person is vomiting or producing excessive saliva, turn them onto their side (recovery position) with the mouth pointing downward to prevent aspiration. Tilt the head slightly to allow fluids to drain.",
)

#v(2pt)

#decision-box("Is the person vomiting or producing excessive saliva during the seizure?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Turn the person onto their side (recovery position) with the mouth pointing downward to prevent aspiration.],
  no-branch[Allow the seizure to run its course. Do not move the person unless they are in immediate danger.],
)

#arrow-down()

// Step 6
#step-box(6, "Stay with the person throughout the seizure and monitor the duration.",
  detail: "Remain with the person and do not leave them alone. There is a risk of additional seizures.",
)

#v(2pt)

#decision-box("Has the seizure lasted more than 5 minutes?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA) immediately. This is status epilepticus -- a medical emergency that can cause irreversible brain damage.],
  no-branch[Continue monitoring. Most seizures end within 1--3 minutes.],
)

#arrow-down()

// Step 7
#step-box(7, "After the seizure ends, place the person in the recovery position (on their side) if not already done.",
  detail: "This keeps the airway clear and allows any fluids to drain from the mouth.",
)

#arrow-down()

// Step 8
#step-box(8, "Check that the person is breathing normally.",
)

#v(2pt)

#decision-box("Is the person breathing normally after the seizure?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue to monitor. Stay with the person until they are fully alert and oriented.],
  no-branch[Call 101 (MDA) immediately. If the person stops breathing, begin CPR.],
)

#arrow-down()

// Step 9
#step-box(9, "Speak calmly and reassuringly as the person regains consciousness.",
  detail: "The person will likely be confused and disoriented (postictal state) and will have no memory of the seizure. Tell them calmly what happened.",
)

#arrow-down()

// Step 10
#step-box(10, "Assess whether this is a first-time seizure or differs from the person's known pattern.",
)

#v(2pt)

#decision-box("Is this the person's first seizure, or is it different from their typical seizure pattern (longer, more intense, or different type)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA). A first-time seizure always requires medical evaluation. An unusual seizure in a known epilepsy patient also requires evaluation.],
  no-branch[If the person has known epilepsy and this was a typical seizure that resolved within 5 minutes, stay with them until fully recovered. Ensure they have someone to accompany them.],
)

#arrow-down()

// Step 11
#step-box(11, "Do not offer food, water, or medication by mouth until the person is fully conscious and able to swallow safely.",
  detail: "Wait until you are certain the person is fully alert before offering anything by mouth to avoid choking risk.",
  warning: "Offering food or drink before the person is fully conscious can cause choking or aspiration.",
)

#arrow-down()

// Step 12
#step-box(12, "If the person has a prescribed rescue medication and a trained caregiver is present, administer it according to the neurologist's instructions.",
  detail: "Rescue medications include Midazolam (Buccolam) given buccally, Diazepam (Stesolid) given rectally, or Clonazepam (Rivotril) given as oral drops. These are given if the seizure lasts more than 3 minutes. Only administer if a valid prescription exists and the caregiver has been trained.",
  warning: "Rescue medications are prescription-only. Only administer at the dose prescribed by the treating neurologist. If the medication is given and the seizure does not stop, call 101 immediately.",
)

#v(2pt)

#decision-box("Does the person have a prescribed rescue medication available, and is a trained caregiver present?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Administer the rescue medication at the prescribed dose if the seizure has lasted more than 3 minutes. If the seizure does not stop after medication, call 101.],
  no-branch[Do not administer any medication. Call 101 if the seizure lasts more than 5 minutes.],
)

#v(8pt)

// DO NOT list
#do-not-box((
  "DO NOT restrain the person or try to hold them down. You cannot stop a seizure by force, and restraining can cause fractures, dislocations, or soft tissue injury.",
  "DO NOT put anything in the person's mouth -- no spoons, wallets, sticks, fingers, or any other object. The person cannot swallow their tongue. Objects in the mouth risk breaking teeth, injuring the jaw, or causing bite injuries.",
  "DO NOT attempt mouth-to-mouth resuscitation during the seizure. People usually resume breathing on their own once the seizure ends.",
  "DO NOT pour water on the person or attempt to 'wake them up'.",
  "DO NOT offer food, drinks, or medication by mouth during or immediately after the seizure until the person is fully alert and able to swallow safely.",
  "DO NOT crowd around the person -- give them space and privacy. Ask bystanders to step back.",
  "DO NOT move the person unless they are in immediate danger (e.g., in the middle of a road, near a ledge, next to fire or water).",
))

#v(6pt)

// Equipment
#equipment-box((
  "Soft padding for under the head (jacket, towel, cushion, blanket)",
  "Watch or phone to time the seizure duration",
  "Prescribed rescue medication if available (Buccolam, Stesolid, or Rivotril -- prescription only)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA First Aid Provider Course 2026; MDA ALS Professional Manual April 2024; corroborated by Israeli Epilepsy Association \
  Protocol ID: IL-ADULT-SEIZURES-001 · Imported: 2026-03-15 · Last verified: 2026-03-15 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
