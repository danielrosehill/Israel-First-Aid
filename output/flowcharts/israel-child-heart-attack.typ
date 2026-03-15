// First Aid Protocol Flowchart — Heart Attack / Chest Pain (Child, Israel)
// Generated from: protocols/child/israel/heart-attack.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "HEART ATTACK / CHEST PAIN"
#let protocol-category = "heart_attack"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "MDA BLS Guide 2016; MDA ALS Guide 2022; MDA Training Syllabus 2026"
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

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(6pt)

// --- WHEN TO APPLY ---
#rect(
  fill: rgb("#fef9c3"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[When to apply this protocol:]
  #v(4pt)
  #text(size: 9pt)[
    Persistent, severe, or worsening chest pain (especially during/after activity) -- syncope or near-fainting during activity -- palpitations -- unexplained shortness of breath -- sudden collapse during sports -- cyanosis (bluish lips/fingertips) -- chest pain with fever (possible myocarditis/pericarditis) -- any new cardiac symptoms in a child with a known heart condition.
  ]
]

#v(6pt)

// --- PROTOCOL STEPS ---

// Step 1
#step-box(1, "Stay calm and reassure the child. Assess for cardiac warning signs.",
  detail: "Look for: persistent or severe chest pain, pain during exertion, syncope or near-syncope, palpitations, unexplained breathlessness, cyanosis, sudden collapse. Red flags: pain during exertion (not at rest), associated syncope/dizziness, known congenital heart condition, family history of sudden cardiac death at a young age, recent viral illness followed by new chest pain/fatigue/breathlessness (possible myocarditis), or direct blow to the chest immediately before collapse (commotio cordis).",
)

#v(4pt)

// Step 2
#step-box(2, "Call 101 (MDA) immediately.",
  detail: "Describe the child's symptoms, age, and any known medical conditions to the dispatcher. Follow all instructions from the MDA dispatcher. If a bystander is present, have them make the call while you stay with the child.",
)

#v(4pt)

// Step 3
#step-box(3, "Assess the child's level of consciousness and breathing.")

#v(4pt)

#decision-box("Is the child conscious and breathing?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Position the child comfortably. Proceed to Step 4.],
  no-branch[If unconscious but breathing: recovery position (on their side). If not breathing or no pulse: proceed immediately to Step 7 (CPR).],
)

#v(4pt)

// Step 4
#step-box(4, "Position the conscious child in a comfortable position -- typically sitting up or semi-reclined.",
  detail: "A sitting or semi-reclined position eases breathing. Allow the child to adopt whatever position feels most comfortable.",
)

#v(4pt)

// Step 5
#step-box(5, "Keep the child calm and monitor continuously.",
  detail: "Loosen tight clothing around the chest and neck. Keep the child warm but not overheated. Do NOT allow the child to eat or drink (in case hospital procedures are needed). Continuously monitor breathing and level of consciousness. Note the time symptoms began and relay this to the ambulance crew.",
  warning: "Do NOT give aspirin to the child. Unlike the adult heart attack protocol, aspirin is not indicated for pediatric chest pain and carries a risk of Reye's syndrome. Do NOT give any medications unless specifically instructed by the 101 dispatcher or a physician.",
)

#v(4pt)

// Step 6
#step-box(6, "Assess whether the situation involves commotio cordis.")

#v(4pt)

#decision-box("Did the child collapse immediately after a direct blow to the chest during sports or physical activity?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Likely commotio cordis -- a time-critical emergency. Check responsiveness immediately. If unresponsive and not breathing, begin CPR (Step 7) and use an AED as fast as possible. Defibrillation within 3 minutes gives the best chance of survival.],
  no-branch[Continue monitoring the child and wait for emergency services. Keep the child calm and in a comfortable position.],
)

#v(4pt)

// Step 7
#step-box(7, "If the child becomes unresponsive and is not breathing normally, begin pediatric CPR immediately.",
  detail: "Single rescuer: 30:2 compression-to-ventilation ratio. Two rescuers: 15:2. Compression rate: 100-120 per minute. Compression depth: approximately 5 cm (one-third of chest depth) for children aged 1 year to puberty. After 5 cycles (approximately 2 minutes), call 101 if not already done.",
  warning: "Do NOT delay CPR while waiting for an AED. Begin compressions immediately.",
)

#v(4pt)

// Step 8
#step-box(8, "Use an AED as soon as one is available.",
  detail: "Use pediatric pads or a dose attenuator if available for children under 8 years or under 25 kg. If only adult pads are available, use them -- do not delay defibrillation. MDA has deployed over 4,000 public-access defibrillators across Israel; their locations are available via the MDA app and website.",
)

#v(4pt)

#decision-box("Are pediatric AED pads available?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use pediatric pads or dose attenuator. Follow AED voice prompts.],
  no-branch[Use adult pads. If pads overlap on a small child, place one on front of chest and one between shoulder blades. Follow AED voice prompts.],
)

#v(4pt)

// Step 9
#step-box(9, "Continue CPR and AED use until emergency services arrive, the child recovers, or you are too exhausted to continue.",
  detail: "Continue CPR cycles between AED analysis and shocks. If multiple rescuers are present, rotate the compressor role every 2 minutes to maintain quality compressions.",
)

#v(8pt)

// --- DO NOT LIST ---
#do-not-box((
  "Do NOT give aspirin to a child -- carries a risk of Reye's syndrome.",
  "Do NOT give nitroglycerin or any cardiac medication unless prescribed and directed by a physician.",
  "Do NOT dismiss chest pain in a child who has recently been ill, has a known heart condition, collapsed during activity, or has a family history of sudden cardiac death.",
  "Do NOT attempt to drive the child to hospital yourself if cardiac arrest is suspected -- call 101 for an ambulance.",
  "Do NOT leave the child unattended while waiting for the ambulance.",
  "Do NOT give the child food or drink (in case hospital procedures are needed).",
  "Do NOT give any medications unless specifically instructed by the 101 dispatcher or a physician.",
))

#v(6pt)

// --- EQUIPMENT ---
#equipment-box((
  "AED with pediatric pads or dose attenuator (if available)",
  "Phone to call 101 (MDA) or 1221 (United Hatzalah)",
  "MDA app (for AED locator and emergency calling)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
