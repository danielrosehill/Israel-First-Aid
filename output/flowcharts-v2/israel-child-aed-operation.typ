// Israel Child AED Operation Flowchart -- V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-AED-OPERATION-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-AED-OPERATION-001"
#let protocol-title = "AED Operation -- Child and Infant"
#let protocol-subject = "AED OPERATION"
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
// PAGE 1: Recognition, CPR, AED Setup
// ============================================================

#align(center)[
  #text(size: 20pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[#country — #age-group]
]
#v(6pt)
#rect(fill: rgb("#dc2626"), radius: 6pt, width: 100%, inset: 10pt)[
  #set text(fill: white, weight: "bold", size: 16pt)
  #align(center)[CALL #emergency-number (#emergency-service) — USE AED IMMEDIATELY]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child (age 1--8) or infant (under 1 year) who is unresponsive, not breathing normally, and in suspected cardiac arrest. If alone with a child: perform 2 minutes of CPR first, then call 101 and retrieve AED (cardiac arrest in children is more often respiratory in origin).
]

#v(6pt)

#rect(fill: rgb("#f0fdf4"), stroke: 1pt + rgb("#16a34a"), radius: 6pt, width: 100%, inset: 10pt)[
  #text(fill: rgb("#166534"), weight: "bold", size: 10pt)[Summary:]
  Activate paediatric mode or use paediatric pads. For small chests: anteroposterior (front-and-back) pad placement. Follow AED voice prompts. Integrate with age-appropriate CPR. Do NOT delay defibrillation for paediatric pads -- use adult pads if needed.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Recognition and CPR -- Steps 1-3]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[CHECK] responsiveness \
      and breathing. Tap shoulders, \
      look/listen/feel for 10 sec max.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* Is a bystander \
      *available to help?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Send them to call 101 \
      and fetch nearest AED. \
      (Use Eifo-Defi app.) \
      #action[BEGIN] CPR now.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      #action[PERFORM] 2 min CPR \
      first (~5 cycles 30:2), \
      then call 101 and \
      retrieve AED.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 3:* Is the victim \
      *an infant (under 1 year)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      Two-finger compressions \
      ~4 cm / 1.5 in depth. \
      Slight head tilt for \
      rescue breaths.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      One-hand compressions \
      ~5 cm / 2 in depth. \
      Standard head-tilt \
      chin-lift for breaths.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: AED Application -- Steps 4-8
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[AED Setup and Pad Placement -- Steps 4-8]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 4:* #action[OPEN] and power \
      on the AED. Follow \
      voice instructions.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 5:* Does the AED have \
      *paediatric mode or pads?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[ACTIVATE] paediatric \
      mode and/or use \
      paediatric pads \
      (reduced energy).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Use adult pads. \
      Do NOT delay \
      defibrillation.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 6:* #action[EXPOSE] bare chest. \
      Dry skin. Remove patches. \
      Pacemaker: pads 2.5 cm away.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 7:* Is the chest large \
      *enough for anterolateral* \
      *placement with 2.5 cm gap?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Anterolateral placement: \
      Pad 1: below right \
      collarbone. Pad 2: left \
      side below armpit.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Anteroposterior placement: \
      Front pad: centre chest. \
      Back pad: between \
      shoulder blades.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    node((0, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Pads must NEVER touch \
      or overlap each other.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 60mm, inset: 6pt),

    edge((0, 3), (0, 5), "->"),

    node((0, 5), align(center)[
      *Step 8:* #action[CONNECT] pads to \
      AED if not pre-connected. \
      Ensure firm adhesion, \
      no air gaps.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: Analysis, Shock, Continue -- Steps 9-12
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[AED Analysis and CPR Cycles -- Steps 9-12]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 9:* AED analyses rhythm. \
      #action[STOP] CPR. Ensure \
      nobody touching the child.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 10:* Does the AED \
      *advise a shock?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Ensure all clear. \
      Call "Stand clear!" \
      (Hitrachku!) \
      #action[PRESS] shock button. \
      Then #action[RESUME] CPR.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      "No shock advised." \
      #action[RESUME] CPR \
      immediately.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 11:* #action[RESUME] CPR for \
      2 minutes (~5 cycles 30:2 \
      solo, 15:2 two rescuers). \
      AED re-analyses after 2 min.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 12:* Has the child \
      *shown signs of life or* \
      *have paramedics arrived?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Hand over to paramedics. \
      If signs of life: stop \
      compressions but leave \
      AED pads attached and \
      device on. Monitor. \
      Recovery position if \
      breathing normally.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      #action[CONTINUE] CPR and \
      AED cycle. Do not stop \
      until: MDA takes over, \
      signs of life, or \
      physically unable.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(10pt)

// Key parameters
#block(breakable: false)[
  #rect(fill: rgb("#eff6ff"), stroke: 2pt + rgb("#2563eb"), radius: 6pt, width: 100%, inset: 12pt)[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Key Paediatric CPR/AED Parameters]
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 8pt,
      [#strong[Child (1--8 yr) depth:] ~5 cm / 2 in],
      [#strong[Infant (under 1 yr) depth:] ~4 cm / 1.5 in],
      [#strong[Compression rate:] 100--120/min],
      [#strong[Ratio (solo):] 30:2],
      [#strong[Ratio (2 rescuers):] 15:2],
      [#strong[Child technique:] 1-hand compression],
      [#strong[Infant technique:] 2-finger or 2-thumb],
      [#strong[AED re-analysis:] every 2 minutes],
    )
  ]
]

#v(10pt)

#do-not-box((
  "DO NOT use AED on a conscious, breathing child -- only for cardiac arrest.",
  "DO NOT use AED in water or near flammable gases.",
  "DO NOT delay defibrillation because paediatric pads are unavailable -- use adult pads.",
  "DO NOT allow pads to touch or overlap -- use anteroposterior if chest too small.",
  "DO NOT touch the child during rhythm analysis or shock delivery.",
  "DO NOT turn off AED or remove pads once applied, even if child regains consciousness.",
  "DO NOT perform adult-depth compressions on a child/infant -- one-third chest depth only.",
  "DO NOT use anterolateral placement on infant/small child if pads would overlap.",
))

#v(10pt)

#equipment-box((
  "AED (Automated External Defibrillator)",
  "Paediatric AED pads (preferred for children under 8 / under 25 kg)",
  "Adult AED pads (if paediatric pads unavailable)",
  "Scissors or shears (to cut away clothing)",
  "Towel or cloth (to dry the chest)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) -- AED Operation for Children and Infants, based on AHA 2025 Guidelines for CPR and ECC \
  #strong[URL:] https://www.mdais.org/kursim/defibrillator \
  #strong[Imported:] 2026-03-16 · #strong[Last verified:] 2026-03-16 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Age categories per MDA/AHA: infant (under 1 year), child (1--8 years). Children 8+ or showing puberty signs use adult AED protocol.
]
