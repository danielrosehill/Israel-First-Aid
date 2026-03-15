// Israel Child Choking Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-CHOKING-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-CHOKING-001"
#let protocol-title = "Choking (Foreign Body Airway Obstruction) — Child/Infant"
#let protocol-subject = "CHOKING"
#let age-group = "CHILD"
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
// PAGE 1: Title, Assessment, Age Determination
// ============================================================

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
    CALL #emergency-number (#emergency-service) — COMPLETE OBSTRUCTION
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child or infant is choking: inability to speak, cry, or make sounds; weak or absent cough; difficulty breathing; cyanosis (bluish skin); high-pitched wheezing. Note: young children may NOT grasp their throats.
]

#v(6pt)

#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#166534"), weight: "bold", size: 10pt)[Summary:]
  Back blows and chest thrusts for infants (under 1 year); abdominal thrusts (Heimlich) for children (1--8 years); transition to CPR if victim becomes unresponsive.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment and Age Determination]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Assess
    node((0, 0), align(center)[
      *Step 1:* #action[ASSESS] the choking victim. \
      Can they speak, cry, or cough?
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: can cough?
    node((0, 1), align(center)[
      *Can the child cough forcefully,* \
      *cry, or breathe adequately?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      DO NOT intervene. \
      #action[ENCOURAGE] coughing. \
      Monitor closely.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 2: Call for help
    node((0, 2), align(center)[
      *Step 2:* #action[CALL] for help. \
      Have bystander call 101. \
      If alone: intervene first, \
      call after 1--2 min.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Age?
    node((0, 3), align(center)[
      *Step 3:* #action[DETERMINE] age category
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Physical size should \
      guide technique, not \
      age alone. A small \
      1-year-old may need \
      infant techniques.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: infant?
    node((0, 4), align(center)[
      *Is the victim an infant* \
      *(under 1 year)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 4), align(center)[
      INFANT protocol: \
      Back blows + chest thrusts \
      Go to Page 2
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 4), align(center)[
      CHILD protocol: \
      Abdominal thrusts (Heimlich) \
      Go to Page 2
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Infant and Child Techniques
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Infant Protocol (Under 1 Year)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 4: Back blows
    node((0, 0), align(center)[
      *Step 4:* #action[DELIVER] 5 back blows \
      Face-down on forearm, head \
      lower than body. 5 strikes \
      between shoulder blades.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT use abdominal \
      thrusts (Heimlich) on \
      infants under 1 year. \
      Risk of organ damage.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 5: Chest thrusts
    node((0, 1), align(center)[
      *Step 5:* #action[DELIVER] 5 chest thrusts \
      Face-up, 2 fingers below nipple \
      line. ~4 cm depth. Firm \
      but controlled.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: expelled?
    node((0, 2), align(center)[
      *Has the object* \
      *been expelled?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[STOP]. Monitor infant. \
      Seek medical evaluation.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 6: Continue alternating
    node((0, 3), align(center)[
      *Step 6:* #action[ALTERNATE] 5 back blows \
      and 5 chest thrusts. \
      Continue until object expelled \
      or infant loses consciousness.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: conscious?
    node((0, 4), align(center)[
      *Is the infant still* \
      *conscious?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 4), align(center)[
      Continue alternating \
      back blows and \
      chest thrusts.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 4), align(center)[
      #action[STOP] choking manoeuvres. \
      Go to CPR (Page 3).
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(10pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Child Protocol (1--8 Years)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 7: Heimlich
    node((0, 0), align(center)[
      *Step 7:* #action[PERFORM] abdominal \
      thrusts (Heimlich). Stand/kneel \
      behind child. Fist above navel, \
      below rib cage. Thrust inward \
      and upward.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT use excessive \
      force that would lift \
      the child off the ground.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 8: Continue
    node((0, 1), align(center)[
      *Step 8:* #action[CONTINUE] until object \
      expelled or child loses \
      consciousness.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: expelled?
    node((0, 2), align(center)[
      *Has the object been expelled?* \
      *Can the child breathe?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[STOP]. Monitor child. \
      Seek medical evaluation \
      even after success.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      If conscious: continue \
      thrusts. If unconscious: \
      go to CPR (below).
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: CPR Transition, Special Cases
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR Transition (Unconscious Victim)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 9: Stop choking manoeuvres
    node((0, 0), align(center)[
      *Step 9:* Victim loses consciousness. \
      #action[STOP] all choking manoeuvres. \
      Place on firm, flat surface. \
      #action[CALL] 101 if not done.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 10: Begin CPR
    node((0, 1), align(center)[
      *Step 10:* #action[BEGIN] CPR. \
      Solo: 30:2 ratio. \
      Two rescuers: 15:2 ratio. \
      Before each set of breaths: \
      look in mouth, remove visible \
      objects. NO blind finger sweeps.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: infant CPR?
    node((0, 2), align(center)[
      *Is the victim an infant?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 2), align(center)[
      Two-finger compressions. \
      Slight head tilt only. \
      Mouth-to-mouth-and-nose.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 2), align(center)[
      One-hand compressions. \
      Standard head-tilt chin-lift. \
      Mouth-to-mouth.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 11: Continue
    node((0, 3), align(center)[
      *Step 11:* #action[CONTINUE] CPR until \
      EMS arrives, victim recovers, \
      or AED available.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 12: Special case
    node((0, 4), align(center)[
      *Step 12:* Special case: if child \
      is pregnant or obese, use \
      #action[CHEST] thrusts instead of \
      abdominal thrusts.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

#v(10pt)

// --- DO NOT List ---
#do-not-box((
  "DO NOT perform abdominal thrusts on infants under 1 year -- use only back blows and chest thrusts.",
  "DO NOT insert fingers blindly into the mouth (blind finger sweeps) -- only remove objects you can clearly see.",
  "DO NOT force anything into the mouth -- risk of pushing object deeper.",
  "DO NOT attempt mouth manipulation if teeth are clenched.",
  "DO NOT give food or fluids to a choking victim.",
  "DO NOT intervene if the child is coughing effectively -- allow the body to clear the obstruction.",
  "DO NOT use this protocol for choking caused by asthma, infection, or head injury.",
  "DO NOT use excessive force during abdominal thrusts that would lift the child off the ground.",
  "DO NOT fully extend an infant's head when opening the airway.",
))

#v(10pt)

#equipment-box((
  "AED with paediatric pads (if available, for CPR transition)",
))

#v(10pt)

#rect(
  fill: rgb("#f9fafb"),
  stroke: 0.5pt + rgb("#d1d5db"),
  radius: 4pt,
  width: 100%,
  inset: 10pt,
)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA 101 Public First Aid Guidance Series \
  #strong[URL:] https://www.mdais.org/101/asphyxia \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Infant (0--1 year), child (1--8 years). Physical size should guide technique selection, not age alone.
]
