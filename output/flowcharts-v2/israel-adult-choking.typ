// Israel Adult Choking Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-CHOKING-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-CHOKING-001"
#let protocol-title = "Choking (Foreign Body Airway Obstruction) — Adult"
#let protocol-subject = "CHOKING"
#let age-group = "ADULT"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2026-01-01"
#let last-verified = "2026-03-15"
#let generation-date = "2026-03-16"
#let version = "2.0"

// === PAGE SETUP (A4) ===
#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2cm, left: 1.5cm, right: 1.5cm),
  header: context {
    let page-num = counter(page).get().first()
    let page-total = counter(page).final().first()
    grid(
      columns: (1fr, auto, 1fr),
      gutter: 0pt,
      align(left)[
        #text(size: 14pt, weight: "bold", fill: rgb("#1e40af"))[
          #upper(age-group) — #upper(protocol-subject)
        ]
      ],
      align(center)[
        #rect(fill: rgb("#dc2626"), radius: 4pt, inset: (x: 8pt, y: 3pt))[
          #text(fill: white, weight: "bold", size: 10pt)[CALL #emergency-number]
        ]
      ],
      align(right)[
        #rect(fill: rgb("#fbbf24"), radius: 4pt, inset: (x: 8pt, y: 3pt))[
          #text(weight: "bold", size: 11pt)[Pg #page-num / #page-total]
        ]
      ],
    )
    line(length: 100%, stroke: 1pt + rgb("#d1d5db"))
  },
  footer: context {
    let page-num = counter(page).get().first()
    let page-total = counter(page).final().first()
    line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
    v(3pt)
    grid(
      columns: (1fr, auto, 1fr),
      gutter: 0pt,
      align(left)[
        #text(size: 7pt, fill: rgb("#9ca3af"))[
          #protocol-id · v#version · Generated: #generation-date · Source: #source-authority (#source-date)
        ]
      ],
      align(center)[
        #text(size: 7pt, fill: rgb("#9ca3af"), weight: "bold")[
          Personal reference only — not medical advice
        ]
      ],
      align(right)[
        #rect(fill: rgb("#fbbf24"), radius: 3pt, inset: (x: 6pt, y: 2pt))[
          #text(weight: "bold", size: 8pt)[#page-num / #page-total]
        ]
      ],
    )
  },
)

#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 10pt, dir: ltr)

// === ACTION WORD HIGHLIGHTING ===
#let action(word) = {
  text(weight: "bold", fill: rgb("#1e40af"), size: 11pt)[#upper(word)]
}

// === COLOUR CONSTANTS ===
#let clr-step = rgb("#f0f9ff")
#let clr-step-stroke = rgb("#3b82f6")
#let clr-decision = rgb("#eff6ff")
#let clr-decision-stroke = rgb("#2563eb")
#let clr-yes = rgb("#16a34a")
#let clr-yes-fill = rgb("#f0fdf4")
#let clr-no = rgb("#dc2626")
#let clr-no-fill = rgb("#fef2f2")
#let clr-warning = rgb("#dc2626")
#let clr-warning-fill = rgb("#fef2f2")
#let clr-equip = rgb("#92400e")
#let clr-equip-fill = rgb("#fefce8")

// === HELPER FUNCTIONS ===
#let keep-together(body) = {
  block(breakable: false)[#body]
}

#let warning-box(content) = {
  keep-together[
    #rect(
      fill: clr-warning-fill,
      stroke: 2pt + clr-warning,
      radius: 4pt,
      width: 100%,
      inset: 8pt,
    )[
      #text(fill: clr-warning, weight: "bold", size: 10pt)[WARNING: #content]
    ]
  ]
}

#let step-box(number, instruction, detail: none, warning: none) = {
  keep-together[
    #rect(
      fill: clr-step,
      stroke: 1pt + clr-step-stroke,
      radius: 6pt,
      width: 100%,
      inset: 10pt,
    )[
      #set text(size: 10pt)
      #strong[Step #number:] #instruction
      #if detail != none [
        #v(4pt)
        #text(size: 9pt, fill: rgb("#6b7280"))[#detail]
      ]
      #if warning != none [
        #v(4pt)
        #rect(fill: clr-warning-fill, stroke: 1pt + clr-warning, radius: 4pt, inset: 6pt)[
          #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING: #warning]
        ]
      ]
    ]
  ]
}

#let decision-box(condition) = {
  rect(
    fill: clr-decision,
    stroke: 2pt + clr-decision-stroke,
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt, weight: "bold", fill: rgb("#1e40af"))
    #align(center)[#condition]
  ]
}

#let yes-branch(content) = {
  rect(
    fill: clr-yes-fill,
    stroke: 1pt + clr-yes,
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: clr-yes, weight: "bold")[YES ->] #content
  ]
}

#let no-branch(content) = {
  rect(
    fill: clr-no-fill,
    stroke: 1pt + clr-no,
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: clr-no, weight: "bold")[NO ->] #content
  ]
}

#let do-not-box(items) = {
  keep-together[
    #rect(
      fill: clr-warning-fill,
      stroke: 2pt + clr-warning,
      radius: 6pt,
      width: 100%,
      inset: 10pt,
    )[
      #set text(size: 10pt)
      #text(fill: clr-warning, weight: "bold", size: 13pt)[DO NOT:]
      #v(4pt)
      #for item in items [
        #text(fill: clr-warning, weight: "bold")[X] #item \
      ]
    ]
  ]
}

#let equipment-box(items) = {
  keep-together[
    #rect(
      fill: clr-equip-fill,
      stroke: 1pt + rgb("#ca8a04"),
      radius: 6pt,
      width: 100%,
      inset: 10pt,
    )[
      #set text(size: 10pt)
      #text(fill: clr-equip, weight: "bold", size: 11pt)[Equipment needed:]
      #v(4pt)
      #for item in items [
        — #item \
      ]
    ]
  ]
}

#let emergency-numbers-strip() = {
  rect(
    fill: rgb("#fef2f2"),
    stroke: 1pt + rgb("#dc2626"),
    radius: 4pt,
    width: 100%,
    inset: 6pt,
  )[
    #set text(size: 9pt)
    #grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), gutter: 4pt,
      [#strong[MDA:] 101],
      [#strong[Police:] 100],
      [#strong[Fire:] 102],
      [#strong[Hatzalah:] 1221],
      [#strong[Poison:] 04-7771900],
    )
  ]
}

#let when-to-apply(content) = {
  rect(
    fill: rgb("#faf5ff"),
    stroke: 1pt + rgb("#7c3aed"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 10pt)
    #text(fill: rgb("#5b21b6"), weight: "bold", size: 11pt)[When to apply:]
    #v(3pt)
    #content
  ]
}

// ============================================================
// PAGE 1: Title, Assessment, Steps 1-3
// ============================================================

// --- Title Block ---
#align(center)[
  #text(size: 20pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[#country — #age-group]
]
#v(6pt)
#rect(
  fill: rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #set text(fill: white, weight: "bold", size: 16pt)
  #align(center)[
    CALL #emergency-number (#emergency-service) — CALL IMMEDIATELY IF IN DOUBT
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

// --- When to Apply ---
#when-to-apply[
  Person is choking: grasping neck, unable to speak/cough/breathe, face turning red or blue, high-pitched wheezing sounds, sudden distress while eating.
]

#v(6pt)

// --- Summary ---
#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#166534"), weight: "bold", size: 10pt)[Summary:]
  Abdominal thrusts (Heimlich maneuver) for conscious adults with complete airway obstruction; transition to CPR if unconscious.
]

#v(8pt)

// --- Assessment Phase: Steps 1-3 ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment Phase]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Assess
    node((0, 0), align(center)[
      *Step 1:* #action[CHECK] the choking victim \
      Ask: "Are you choking? \
      Can you speak?"
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: can cough/speak?
    node((0, 1), align(center)[
      *Can the person cough* \
      *forcefully and speak?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> do not intervene
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Do NOT intervene. \
      Allow them to cough. \
      #action[MONITOR] closely.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> Step 2
    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 2: Call for help
    node((0, 2), align(center)[
      *Step 2:* #action[CALL] for help. \
      Instruct bystander to \
      call 101 (MDA) immediately.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Special population?
    node((0, 3), align(center)[
      *Is the person pregnant,* \
      *very obese, or in a wheelchair?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> chest thrusts
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Use *chest thrusts* \
      instead of abdominal. \
      #action[PLACE] hands on \
      centre of breastbone. \
      Go to Step 4.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> standard Heimlich
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Use standard \
      *abdominal thrusts* \
      (Heimlich maneuver). \
      Go to Step 4.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Heimlich Technique — Steps 4-6
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Heimlich Maneuver and Reassessment]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 4: Perform thrusts
    node((0, 0), align(center)[
      *Step 4:* #action[APPLY] abdominal thrusts \
      Stand behind the person. \
      Wrap arms around waist. \
      Fist above navel, below breastbone. \
      Thrust inward and upward. \
      Repeat until object expelled.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 5: Reassess
    node((0, 1), align(center)[
      *Has the object been expelled?* \
      *Can the person breathe?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> monitor
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[STOP] thrusts. \
      #action[MONITOR] the person. \
      Seek medical evaluation \
      (internal injuries possible).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> continue or unconscious
    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Decision: still conscious?
    node((0, 2), align(center)[
      *Is the person still conscious?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> repeat thrusts
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      Repeat Step 4 \
      (abdominal thrusts). \
      Continue until object \
      expelled or person \
      loses consciousness.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> Step 6
    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 6: Person unconscious
    node((0, 3), align(center)[
      *Step 6:* Person unconscious. \
      #action[STOP] abdominal thrusts. \
      Carefully lower to ground \
      onto firm, flat surface.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT continue \
      abdominal thrusts on \
      an unconscious person.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    // Step 7: Call 101
    node((0, 4), align(center)[
      *Step 7:* #action[CALL] 101 (MDA) \
      if not already done.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 8: Begin CPR
    node((0, 5), align(center)[
      *Step 8:* #action[BEGIN] CPR: \
      30 compressions, then 2 breaths. \
      Before each breath, look in mouth \
      for visible object. \
      If visible: #action[REMOVE] carefully. \
      If not visible: do NOT finger sweep. \
      Continue 30:2 until EMS arrives.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

#v(10pt)

// --- Self-Treatment ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Self-Treatment (If Choking While Alone)]
  #v(4pt)

  #rect(
    fill: clr-step,
    stroke: 1pt + clr-step-stroke,
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    *Step 9:* Lean over a firm object (back of a chair or countertop edge). #action[PRESS] your upper abdomen forcefully against the object to generate an upward thrust. Repeat until the object is expelled. #action[CALL] 101 as soon as you can speak.
  ]
]

// ============================================================
// PAGE 3: DO NOT List, Equipment, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- DO NOT List ---
#do-not-box((
  "Do NOT perform abdominal thrusts on a person who can cough forcefully and speak -- you may worsen the obstruction or cause injury.",
  "Do NOT perform back blows (slaps on the back) on an adult. The Israeli/MDA protocol explicitly describes this as incorrect and potentially harmful for adults.",
  "Do NOT perform blind finger sweeps -- only remove an object from the mouth if you can clearly see it.",
  "Do NOT attempt to give water or any liquid to a choking person.",
  "Do NOT continue abdominal thrusts on an unconscious person -- transition to CPR.",
  "Do NOT use abdominal thrusts on pregnant women or very obese individuals -- use chest thrusts instead.",
))

#v(10pt)

// --- Equipment ---
#rect(
  fill: clr-equip-fill,
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #set text(size: 10pt)
  #text(fill: clr-equip, weight: "bold", size: 11pt)[Equipment needed:]
  #v(4pt)
  No special equipment required. Use a firm object (chair back, countertop) for self-treatment if alone.
]

#v(10pt)

// --- Source and Verification ---
#rect(
  fill: rgb("#f9fafb"),
  stroke: 0.5pt + rgb("#d1d5db"),
  radius: 4pt,
  width: 100%,
  inset: 10pt,
)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — "How to Treat Choking from a Foreign Body"; corroborated by MDA BLS Guide 2016 \
  #strong[URL:] https://www.mdais.org/101/asphyxia \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] MDA/Israeli protocol explicitly discourages back blows for adults, diverging from AHA and ERC guidelines. MDA is used as the authoritative default per project rules.
]
