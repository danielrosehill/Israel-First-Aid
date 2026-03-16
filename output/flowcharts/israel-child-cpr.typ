// Israel Child CPR Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA) — BLS Guide 2016 / ALS Professional Handbook 2024
// Protocol ID: IL-CHILD-CPR-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-CPR-001"
#let protocol-title = "CPR (Cardiopulmonary Resuscitation) — Child/Infant"
#let protocol-subject = "CPR"
#let age-group = "CHILD"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2024-04-01"
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
// PAGE 1: Title, Assessment Phase (Steps 1-4)
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
    CALL #emergency-number (#emergency-service) — IF ALONE, DO 2 MIN CPR FIRST
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

// --- When to Apply ---
#when-to-apply[
  Child (1 year to puberty) or infant (1 month to 1 year) is unresponsive and not breathing normally. In children, cardiac arrest is almost always secondary to respiratory failure -- rescue breaths are critically important.
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
  CPR protocol for unresponsive children/infants not breathing normally, following MDA guidelines aligned with ILCOR consensus. If alone, perform 2 minutes of CPR before calling 101.
]

#v(8pt)

// --- Assessment Phase ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment Phase]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Scene safety
    node((0, 0), align(center)[
      *Step 1:* #action[ENSURE] scene is safe \
      before approaching the child.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 2: Check responsiveness
    node((0, 1), align(center)[
      *Step 2:* #action[CHECK] responsiveness \
      Infant: tap sole of foot \
      Child: tap and shout
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: responsive?
    node((0, 2), align(center)[
      *Is the child/infant responsive?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      Do not perform CPR. \
      Monitor the child. \
      #action[CALL] 101 if concerned.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO
    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 3: Check breathing
    node((0, 3), align(center)[
      *Step 3:* #action[CHECK] breathing \
      Look, listen, feel \
      (max 10 seconds)
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: breathing?
    node((0, 4), align(center)[
      *Is the child/infant* \
      *breathing normally?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES
    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      Recovery position. \
      #action[CALL] 101. \
      Monitor breathing.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> Step 4
    edge((0, 4), (0, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 4: Call for help
    node((0, 5), align(center)[
      *Step 4:* #action[CALL] for help
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    // Decision: alone?
    node((0, 6), align(center)[
      *Are you alone with* \
      *the child/infant?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 6), (1, 6), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 6), align(center)[
      #action[BEGIN] CPR now. \
      After 2 min (5 cycles), \
      call 101 and get AED.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 6), (-1, 6), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 6), align(center)[
      Send them to call 101 \
      and fetch AED. \
      You: #action[BEGIN] CPR now.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Compressions and Airway — Steps 5-8
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR Technique (C-A-B)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 5: Compressions
    node((0, 0), align(center)[
      *Step 5:* #action[BEGIN] chest compressions \
      Place child on firm, flat surface. \
      Rate: 100--120/min. \
      Allow full chest recoil.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: infant?
    node((0, 1), align(center)[
      *Is the patient an infant* \
      *(under 1 year)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES - infant technique
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 1), align(center)[
      Solo: 2-finger technique \
      Two rescuers: two-thumb \
      encircling hands. \
      Depth: ~4 cm (1/3 chest).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO - child technique
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 1), align(center)[
      Heel of one or two hands \
      (size-dependent). \
      Depth: ~5 cm (1/3 chest).
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 6: Open airway
    node((0, 2), align(center)[
      *Step 6:* #action[OPEN] airway
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT hyperextend \
      an infant's neck. \
      Use neutral/sniffing \
      position only.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: infant airway?
    node((0, 3), align(center)[
      *Is the patient an infant* \
      *(under 1 year)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 3), align(center)[
      Neutral/sniffing position. \
      Gentle chin lift only.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 3), align(center)[
      Head-tilt chin-lift \
      with mild extension.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 7: Rescue breaths
    node((0, 4), align(center)[
      *Step 7:* #action[DELIVER] 2 rescue breaths \
      1 second each, watch for chest rise. \
      Rescue breaths are ESSENTIAL \
      in paediatric CPR.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((-1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Compression-only CPR \
      is NOT adequate for \
      children/infants. \
      Arrest is almost always \
      respiratory in origin.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: infant breaths?
    node((0, 5), align(center)[
      *Is the patient an infant?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 5), align(center)[
      Seal mouth over infant's \
      mouth AND nose. \
      Gentle puffs from cheeks.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 5), align(center)[
      Pinch nose, seal mouth. \
      Breathe until chest rise.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: CPR Cycles, AED, Continuation — Steps 8-12
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR Cycles and Continuation]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 8: Chest rise check
    node((0, 0), align(center)[
      *Step 8:* #action[CHECK] chest rise \
      If no rise, reposition airway \
      and reattempt. Consider \
      foreign body obstruction.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: chest rise?
    node((0, 1), align(center)[
      *Does the chest rise* \
      *with rescue breaths?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Continue CPR cycles.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Reposition head/airway. \
      Reattempt. If still no rise: \
      suspect foreign body.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 9: CPR ratio
    node((0, 2), align(center)[
      *Step 9:* #action[CONTINUE] CPR cycles
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: rescuer count
    node((0, 3), align(center)[
      *Are there two or* \
      *more rescuers?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Use 15:2 ratio. \
      Infants: switch to \
      two-thumb technique.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Use 30:2 ratio.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 10: AED
    node((0, 4), align(center)[
      *Step 10:* #action[APPLY] AED \
      when available. Use paediatric \
      pads if available. If only \
      adult pads, ensure no overlap.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[If adult pads overlap \
      on small child/infant: \
      use anteroposterior \
      placement (front/back).]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 4), (0, 5), "->"),

    // Step 11: Resume after shock
    node((0, 5), align(center)[
      *Step 11:* After AED shock, \
      #action[RESUME] CPR immediately. \
      5 cycles before reassessing.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    // Step 12: Continue
    node((0, 6), align(center)[
      *Step 12:* #action[CONTINUE] CPR until: \
      MDA arrives, child starts \
      breathing/responding, or \
      you are physically unable.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 6), (0, 7), "->"),

    // Decision: breathing?
    node((0, 7), align(center)[
      *Has the child started* \
      *breathing and responding?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 7), (1, 7), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 7), align(center)[
      #action[STOP] CPR. \
      Recovery position. \
      Monitor until MDA arrives.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 7), (-1, 7), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 7), align(center)[
      #action[CONTINUE] CPR \
      without interruption.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 4: DO NOT List, Equipment, Key Parameters
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- Key Parameters Box ---
#block(breakable: false)[
  #rect(
    fill: rgb("#eff6ff"),
    stroke: 2pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 12pt,
  )[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Key Paediatric CPR Parameters]
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 8pt,
      [#strong[Compression rate:] 100--120 / min],
      [#strong[Child depth:] ~5 cm (1/3 chest)],
      [#strong[Infant depth:] ~4 cm (1/3 chest)],
      [#strong[Solo ratio:] 30 : 2],
      [#strong[Two-rescuer ratio:] 15 : 2],
      [#strong[Breath duration:] 1 second each],
      [#strong[Lone rescuer:] 2 min CPR, then call 101],
      [#strong[Emergency number:] 101 (MDA)],
    )
  ]
]

#v(10pt)

// --- DO NOT List ---
#do-not-box((
  "Do NOT hyperextend an infant's neck when opening the airway -- use neutral/sniffing position only.",
  "Do NOT insert fingers into the infant's or child's mouth (risk of pushing objects deeper).",
  "Do NOT deliver deep lung breaths to infants -- use gentle puffs from your cheeks.",
  "Do NOT use excessive volume or pressure when delivering rescue breaths (risk of gastric distension).",
  "Do NOT skip rescue breaths in paediatric CPR -- compression-only CPR is NOT adequate for children and infants.",
  "Do NOT delay CPR to call for help when alone -- perform 2 minutes of CPR first, then call 101.",
  "Do NOT allow AED pads to touch or overlap each other on a small child or infant.",
  "Do NOT stop CPR to check for pulse unless there are clear signs of recovery (breathing, movement).",
  "Do NOT compress over the xiphoid process (the very bottom tip of the sternum).",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "AED with paediatric pads or paediatric dose attenuator (if available)",
  "Barrier device or pocket mask (optional, for rescue breaths)",
  "Bag-valve-mask -- infant size (250-350 cc) or paediatric size (if available)",
))

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
  #strong[Source:] Magen David Adom (MDA) — BLS Guide 2016 / ALS Professional Handbook 2024 \
  #strong[URL:] https://www.mdais.org/kursim/cpr-children \
  #strong[Publication date:] 2024-04-01 · #strong[Edition:] BLS Guide 2016 / ALS Professional Handbook 2024 \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Both aligned on C-A-B sequence, compression depths, ratios, and AED guidance. If alone with the child, perform 2 minutes of CPR before calling 101.
]
