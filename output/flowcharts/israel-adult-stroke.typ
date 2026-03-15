// First Aid Protocol Flowchart — Stroke (Adult) — Israel
// Generated from: IL-ADULT-STROKE-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "STROKE (Cerebrovascular Event)"
#let protocol-category = "stroke"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-edition = "MDA 101 Public First Aid Guidance Series; supplemented by Dr. Shfir Botner (MDA Paramedic School) and United Hatzalah educational material"
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
  #v(2pt)
  #text(size: 12pt, weight: "bold", fill: rgb("#1e40af"))[#heb[אירוע מוחי / שבץ מוחי]]
]

#v(6pt)

// Emergency number — prominent
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(6pt)

// Summary / When to apply
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Recognise stroke -- use FAST:] #v(4pt)
  #grid(columns: (1fr, 1fr), gutter: 6pt,
    [*F (Face):* Facial drooping or asymmetry],
    [*A (Arm):* Arm weakness, one arm drifts down],
    [*S (Speech):* Slurred speech, difficulty forming words],
    [*T (Time):* Note the exact time symptoms began],
  )
  #v(4pt)
  #text(size: 9pt, fill: rgb("#6b7280"))[Also watch for: sudden severe headache, sudden vision loss, sudden loss of balance/coordination, sudden change in consciousness, seizures in adults without prior history. Even a single FAST sign warrants immediate emergency evaluation.]
]

#v(6pt)

// === STEP 1 — FAST Assessment ===
#step-box(1, "Assess for stroke using the FAST method.",
  detail: "F (Face): Ask the person to smile -- look for one-sided drooping. A (Arm): Ask them to extend both arms forward -- look for one arm drifting downward. S (Speech): Ask them to repeat a simple sentence -- listen for slurred or garbled speech. T (Time): Note the exact time symptoms first appeared. Even a single positive sign warrants calling 101.")

#arrow-down()

// === STEP 2 — Call 101 ===
#step-box(2, "Call 101 (MDA) immediately.",
  detail: "Do not wait to see if symptoms improve. Do not drive the person to hospital yourself unless absolutely unavoidable -- the ambulance crew will pre-notify the hospital stroke team and can begin assessment en route. Treatment window is approximately 6 hours from onset; target hospital arrival within 60 minutes.",
  warning: "Every minute of delay results in approximately two million neurons dying in the brain (per MDA). Time is critical.")

#arrow-down()

// === STEP 3 — Record onset time ===
#step-box(3, "Record and report the exact time of symptom onset.",
  detail: "This information is critical for hospital treatment decisions, particularly eligibility for thrombolytic (clot-dissolving) treatment. If the person went to sleep with normal function and woke with symptoms, record onset time as when sleep began.",
  warning: "Without an accurate onset time, doctors may not be able to administer time-sensitive treatments.")

#arrow-down()

// === STEP 4 — Consciousness check ===
#step-box(4, "Assess whether the person is conscious and breathing.")

#v(4pt)

#decision-box("Is the person conscious?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Lay the person down with their head slightly raised and supported. Proceed to Step 5.],
  no-branch[Check for breathing. If breathing: place in recovery position (on their side) to protect airway. If *not breathing*: begin CPR and follow cardiac arrest protocol.],
)

#v(6pt)

// === STEP 5 — Positioning ===
#step-box(5, "Position the person appropriately.",
  detail: "If conscious: lay them down with head slightly raised and supported. If vomiting or at risk of vomiting: place on their side (recovery position) to protect airway from aspiration.")

#v(4pt)

#decision-box("Is the person vomiting or at risk of vomiting?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place the person on their side in the recovery position to protect the airway.],
  no-branch[Keep the person lying down with head slightly raised and supported.],
)

#v(6pt)

// === STEP 6 — Loosen clothing ===
#step-box(6, "Loosen restrictive clothing.",
  detail: "Remove or loosen scarves, ties, tight collars, and any other clothing that may restrict breathing.")

#arrow-down()

// === STEP 7 — Monitor ===
#step-box(7, "Stay with the person and monitor continuously.",
  detail: "Watch for changes in consciousness level, breathing difficulties, or worsening symptoms. Any change in consciousness level serves as a critical diagnostic indicator. Be prepared to report condition to arriving paramedics.")

#v(4pt)

#decision-box("Does the person lose consciousness or stop breathing while waiting?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If breathing stops: begin CPR immediately. Update MDA dispatch by phone. If unconscious but breathing: place in recovery position.],
  no-branch[Continue monitoring and providing reassurance until paramedics arrive.],
)

#v(6pt)

// === STEP 8 — Handover ===
#step-box(8, "Provide information to paramedics on arrival.",
  detail: "Report: the exact time symptoms began, what symptoms you observed (which FAST signs), whether symptoms changed or progressed, the person's current medications (if known), their medical history (if known), any changes in consciousness level.")

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Give food or drink -- the person's swallowing reflex may be impaired (dysphagia is common in stroke), creating aspiration risk.",
  "Give any medications, especially aspirin or blood thinners -- approximately 15% of strokes are hemorrhagic (caused by bleeding), and aspirin or blood thinners can worsen hemorrhagic stroke. Only medical professionals should decide on medication.",
  "Delay calling 101 -- do not drive the person to hospital yourself unless absolutely unavoidable. The ambulance crew will pre-notify the hospital and begin assessment en route.",
  "Ignore transient symptoms -- even if symptoms resolve (possible TIA / Transient Ischemic Attack), the person still needs emergency evaluation. Approximately 40% of TIA patients experience a full stroke within three months.",
  "Allow the person to eat, drink, or take medications by mouth until a medical professional has assessed their swallowing function.",
))

#v(6pt)

// === EQUIPMENT ===
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #set text(size: 10pt)
  #text(fill: rgb("#92400e"), weight: "bold", size: 11pt)[Equipment needed:]
  #v(4pt)
  — Phone to call 101 and record symptom onset time \
  — Pillow or support to slightly elevate the head
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority · #source-edition \
  Last verified: #last-verified · Protocol ID: IL-ADULT-STROKE-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
