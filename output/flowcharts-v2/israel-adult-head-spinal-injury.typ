// Israel Adult Head/Spinal Injury Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-HEAD-SPINAL-INJURY-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-HEAD-SPINAL-INJURY-001"
#let protocol-title = "Head and Spinal Injury — Adult"
#let protocol-subject = "HEAD/SPINAL INJURY"
#let age-group = "ADULT"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2024-01-01"
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
// PAGE 1: Title, Scene Safety, Steps 1-4
// ============================================================

#align(center)[
  #text(size: 20pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[#country — #age-group]
]
#v(6pt)
#rect(fill: rgb("#dc2626"), radius: 6pt, width: 100%, inset: 10pt)[
  #set text(fill: white, weight: "bold", size: 16pt)
  #align(center)[CALL #emergency-number (#emergency-service) — DO NOT MOVE THE PATIENT]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Adult has sustained trauma to the head, neck, or back. Common scenarios in Israel: road traffic accidents, falls from height (hiking in wadis), security incidents (blast, shrapnel), diving into shallow water, sports injuries, falls from ladders or rooftops.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Scene Safety and Initial Response]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Scene safety
    node((0, 0), align(center)[
      *Step 1:* #action[ENSURE] scene safety. \
      Check for traffic, fire, \
      structural instability, \
      active security threat.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: immediate danger?
    node((0, 1), align(center)[
      *Immediate life-threatening* \
      *danger to the patient?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Move ONLY as last resort. \
      Use log-roll keeping \
      spine aligned.
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 2: Call 101
    node((0, 2), align(center)[
      *Step 2:* #action[CALL] 101 immediately. \
      Report location, mechanism, \
      consciousness, bleeding, \
      limb movement.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Assess mechanism
    node((0, 3), align(center)[
      *Step 3:* #action[ASSESS] mechanism. \
      Isolated penetrating trauma \
      without neuro deficits?
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Spinal immobilisation \
      NOT required. Manage \
      wounds and bleeding.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 4: Manual in-line stabilisation
    node((0, 4), align(center)[
      *Step 4:* #action[STABILISE] -- manual \
      in-line stabilisation. Kneel \
      behind head, cup ears gently, \
      hold neutral. Maintain until \
      help arrives.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT straighten head \
      if patient resists or \
      reports pain -- stabilise \
      in position found.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]

// ============================================================
// PAGE 2: Airway, Breathing, Bleeding (Steps 5-7)
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Airway, Breathing, and Bleeding Control]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 5: Airway
    node((0, 0), align(center)[
      *Step 5:* #action[ASSESS] airway. \
      Is patient conscious and talking?
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (1, 0), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 0), align(center)[
      Airway is open. \
      Maintain stabilisation. \
      Proceed to *Step 7.*
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 0), (-1, 0), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 0), align(center)[
      Patient unconscious. \
      Use #action[JAW THRUST] \
      (not head-tilt). Push jaw \
      forward without moving neck.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 6: Breathing
    node((0, 1), align(center)[
      *Step 6:* Is the patient \
      breathing with a pulse?
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Maintain stabilisation \
      and jaw thrust if needed. \
      Proceed to *Step 7.*
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      #action[BEGIN] CPR with spinal \
      precautions. Use jaw thrust \
      for ventilations. Control \
      haemorrhage before CPR.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 7: Bleeding
    node((0, 2), align(center)[
      *Step 7:* #action[CONTROL] bleeding.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: skull fracture?
    node((0, 3), align(center)[
      *Suspected skull fracture?* \
      *(depressed bone, visible* \
      *deformity, brain matter)*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Do NOT apply pressure. \
      #action[COVER] wound loosely \
      with sterile dressing.
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      #action[APPLY] gentle direct \
      pressure to scalp wounds \
      with clean dressing.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    node((0, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[If blood/clear fluid drains \
      from ears, do NOT plug them. \
      Allow drainage, cover loosely.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 60mm, inset: 6pt),
  )
]

// ============================================================
// PAGE 3: Assessment, Monitoring, Helmet (Steps 8-14)
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Neurological Assessment and Monitoring]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 8: Neuro assessment
    node((0, 0), align(center)[
      *Step 8:* #action[CHECK] sensation and \
      movement in all limbs. Compare \
      left vs right. Check pupils.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 9: Collar
    node((0, 1), align(center)[
      *Step 9:* #action[APPLY] cervical collar \
      if available. Second person \
      maintains stabilisation during \
      application.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 1), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[NOTE] \
      #text(size: 8pt)[A collar alone is NOT \
      sufficient. Continue to \
      support the head even \
      with a collar applied.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 1), (0, 2), "->"),

    // Step 10: Monitor
    node((0, 2), align(center)[
      *Step 10:* #action[MONITOR] continuously. \
      Note changes in consciousness, \
      vomiting, seizures, unequal \
      pupils. Keep warm and shaded.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 11: Concussion
    node((0, 3), align(center)[
      *Step 11:* #action[ASSESS] concussion \
      signs: headache, confusion, \
      dizziness, nausea, light \
      sensitivity. Loss of consciousness \
      NOT required for concussion.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 14: Helmet
    node((0, 4), align(center)[
      *Step 14:* Helmet present \
      and patient cannot breathe?
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      #action[REMOVE] helmet with \
      two trained responders: \
      one maintains C-spine, \
      other removes helmet.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Leave helmet in place. \
      Open face shield for \
      communication and \
      airway monitoring.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(6pt)

// Log-roll note
#keep-together[
  #rect(fill: rgb("#f0f9ff"), stroke: 1pt + clr-step-stroke, radius: 6pt, width: 100%, inset: 10pt)[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 10pt)[Steps 12--13: Log-Roll Technique]
    #v(3pt)
    #text(size: 9pt)[If unconscious patient is vomiting or must be moved due to life-threatening situation, use log-roll with minimum 3 people. Person at head commands the roll. Maintain spinal alignment throughout. Move the patient as a single unit.]
  ]
]

// ============================================================
// PAGE 4: DO NOT, Equipment, Reference
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

#do-not-box((
  "Do NOT move the patient unless there is immediate danger to life.",
  "Do NOT twist, flex, or extend the neck.",
  "Do NOT attempt to sit the patient up.",
  "Do NOT use head-tilt chin-lift to open the airway -- use jaw thrust only.",
  "Do NOT remove a helmet without proper training and a second person.",
  "Do NOT give the patient food or drink.",
  "Do NOT leave the patient alone.",
  "Do NOT apply direct pressure to a suspected skull fracture.",
  "Do NOT plug the ears or nose if blood or clear fluid is draining.",
  "Do NOT pull the patient by the arms or legs.",
  "Do NOT attempt to extract a patient from a vehicle unless immediate life threat.",
  "Do NOT give oral fluids even if dehydrated (risk of vomiting and aspiration).",
  "Do NOT attempt to straighten the head if the patient resists or reports pain.",
))

#v(10pt)

#equipment-box((
  "Disposable gloves",
  "Clean dressings or bandages for wound care",
  "Sterile dressing for skull fracture coverage",
  "Cervical collar (if available and properly sized)",
  "Blanket or thermal protection",
  "Tourniquet (CAT) for associated limb haemorrhage",
  "High-visibility vest (if responding at a road accident)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA Head and Spinal Injury First Aid Guidelines \
  #strong[URL:] https://www.mdais.org/101/first-aid \
  #strong[Publication date:] 2024-01-01 · #strong[Edition:] MDA BLS Guide 2016, ALS Professional Manual 2024 \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Both agree on jaw thrust, manual in-line stabilisation, and penetrating trauma exception.
]
