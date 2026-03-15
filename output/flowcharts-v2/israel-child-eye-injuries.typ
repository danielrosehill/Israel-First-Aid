// Israel Child Eye Injuries Flowchart -- V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-EYE-INJURIES-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-EYE-INJURIES-001"
#let protocol-title = "Eye Injuries First Aid -- Child"
#let protocol-subject = "EYE INJURIES"
#let age-group = "CHILD"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2026-01-01"
#let last-verified = "2026-03-16"
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

#let action(word) = { text(weight: "bold", fill: rgb("#1e40af"), size: 11pt)[#upper(word)] }

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

#let keep-together(body) = { block(breakable: false)[#body] }

#let do-not-box(items) = {
  keep-together[
    #rect(fill: clr-warning-fill, stroke: 2pt + clr-warning, radius: 6pt, width: 100%, inset: 10pt)[
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
    #rect(fill: clr-equip-fill, stroke: 1pt + rgb("#ca8a04"), radius: 6pt, width: 100%, inset: 10pt)[
      #set text(size: 10pt)
      #text(fill: clr-equip, weight: "bold", size: 11pt)[Equipment needed:]
      #v(4pt)
      #for item in items [ — #item \ ]
    ]
  ]
}

#let emergency-numbers-strip() = {
  rect(fill: rgb("#fef2f2"), stroke: 1pt + rgb("#dc2626"), radius: 4pt, width: 100%, inset: 6pt)[
    #set text(size: 9pt)
    #grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), gutter: 4pt,
      [#strong[MDA:] 101], [#strong[Police:] 100], [#strong[Fire:] 102], [#strong[Hatzalah:] 1221], [#strong[Poison:] 04-7771900],
    )
  ]
}

#let when-to-apply(content) = {
  rect(fill: rgb("#faf5ff"), stroke: 1pt + rgb("#7c3aed"), radius: 6pt, width: 100%, inset: 10pt)[
    #set text(size: 10pt)
    #text(fill: rgb("#5b21b6"), weight: "bold", size: 11pt)[When to apply:]
    #v(3pt)
    #content
  ]
}

// ============================================================
// PAGE 1
// ============================================================

#align(center)[
  #text(size: 20pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[#country — #age-group]
]
#v(6pt)
#rect(fill: rgb("#dc2626"), radius: 6pt, width: 100%, inset: 10pt)[
  #set text(fill: white, weight: "bold", size: 16pt)
  #align(center)[CALL #emergency-number (#emergency-service) — DO NOT RUB THE EYE]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  When a child has sustained any eye injury: chemical splash, foreign object, penetrating injury, blunt trauma, or thermal/UV burn. Common causes in Israeli children: playground injuries (sand, sticks), household chemicals (bleach, cleaners), toy-related injuries.
]

#v(6pt)

#rect(fill: rgb("#f0fdf4"), stroke: 1pt + rgb("#16a34a"), radius: 6pt, width: 100%, inset: 10pt)[
  #text(fill: rgb("#166534"), weight: "bold", size: 10pt)[Summary:]
  Chemical burns: irrigate immediately for 15--30 minutes. Foreign objects: flush if superficial, do NOT remove if embedded. Penetrating injuries: rigid shield, no pressure. Blunt trauma: cold compress gently.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment and Chemical Burns -- Steps 1-2]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[ASSESS] the \
      type of eye injury.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Is this a chemical burn* \
      *to the eye?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      *Step 2:* #action[IRRIGATE] eye \
      immediately with clean \
      flowing water for \
      *15--30 minutes*. \
      Time is critical.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Proceed to Step 3 \
      (foreign object, \
      penetrating, or \
      blunt trauma).
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    // Chemical burn details
    edge((1, 1), (1, 2), "->"),

    node((1, 2), align(center)[
      #text(size: 8pt)[Tilt head so water runs \
      from inner corner outward. \
      Hold eyelids open. For young \
      children: 2 adults needed \
      (one holds, one irrigates).]
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 48mm, inset: 6pt),

    node((0, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT delay irrigation \
      to call emergency services. \
      Begin immediately. Have \
      someone else call 101. \
      Bring chemical container \
      to hospital.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]

#v(6pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Foreign Objects and Penetrating Injuries -- Steps 3-4]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 3:* Is the foreign object \
      *embedded in or penetrating* \
      *the eye surface?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (1, 0), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 0), align(center)[
      Do NOT attempt removal. \
      #action[COVER] both eyes with \
      sterile dressings without \
      pressure. Transport to \
      hospital immediately.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 0), (-1, 0), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 0), align(center)[
      #action[FLUSH] gently with \
      clean lukewarm water \
      for ~15 minutes to \
      dislodge. Seek \
      ophthalmological eval.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 4 -- Penetrating injury:* \
      #action[PLACE] rigid shield \
      (paper cup) over eye \
      without touching eye. \
      Cover uninjured eye too. \
      Position child supine.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 1), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT apply pressure \
      or bandage to a \
      penetrating eye injury. \
      Do NOT attempt to \
      remove embedded object.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]

// ============================================================
// PAGE 2: Blunt Trauma, Reassurance, Transport, Reference
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Blunt Trauma and Care -- Steps 5-7]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 5 -- Blunt trauma:* \
      #action[APPLY] cold compress \
      gently over closed eyelid \
      for 10--15 minutes. \
      Do not press firmly.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Does the child report* \
      *vision changes, double* \
      *vision, or severe pain?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[CALL] 101 immediately. \
      May indicate internal \
      eye bleeding or retinal \
      damage. Urgent hospital.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Continue cold compress. \
      Seek ophthalmological \
      evaluation within \
      24 hours.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 6:* #action[CALM] and reassure \
      the child. Do NOT rub the \
      eye. Observe for signs of \
      visual difficulty.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 7:* #action[TRANSPORT] to hospital \
      with on-call ophthalmologist. \
      Penetrating injuries: supine. \
      Bring chemical container/MSDS.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

#v(10pt)

#do-not-box((
  "Do NOT rub the injured eye -- worsens damage from foreign objects and chemical burns.",
  "Do NOT apply pressure or bandages to a penetrating eye injury.",
  "Do NOT attempt to remove an embedded object from the eye.",
  "Do NOT delay irrigation for chemical burns -- begin immediately.",
  "Do NOT use any eye drops or ointments without medical direction.",
  "Do NOT allow the child to rub or touch the injured eye.",
  "Do NOT apply antiseptic or alcohol to the eye.",
))

#v(10pt)

#equipment-box((
  "Clean water source (tap water or sterile water for irrigation)",
  "Rigid eye shield or paper cup",
  "Sterile gauze or clean cloth",
  "Cold compress or ice wrapped in cloth",
  "Phone (to call 101)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) -- supplemented by Hatzalah Without Borders eye injury protocols (November 2021) \
  #strong[URL:] https://www.mdais.org/101/first-aid \
  #strong[Publication date:] 2026-01-01 \
  #strong[Imported:] 2026-03-16 · #strong[Last verified:] 2026-03-16 \
  #strong[Notes:] Unified from MDA and United Hatzalah/Hatzalah Without Borders sources. Chemical burn irrigation duration 15--30 minutes per Hatzalah guidance.
]
