// Israel Adult CPR Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA) — AHA 2025 Guidelines
// Protocol ID: IL-ADULT-CPR-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-CPR-001"
#let protocol-title = "CPR (Cardiopulmonary Resuscitation) — Adult"
#let protocol-subject = "CPR"
#let age-group = "ADULT"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2025-01-01"
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
// PAGE 1: Title, Emergency Numbers, Assessment Phase (Steps 1-4)
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
  An adult (age 12+) is found unresponsive and is not breathing normally (absent breathing or only gasping/agonal breathing).
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
  Bystander and first-responder CPR protocol for unresponsive adults not breathing normally, following MDA/AHA guidelines with Israel-specific considerations.
]

#v(8pt)

// --- Assessment Phase: Steps 1-4 as Fletcher Diagram ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment Phase]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Check responsiveness
    node((0, 0), align(center)[
      *Step 1:* #action[CHECK] responsiveness \
      Call out, shake shoulders gently, \
      ask loudly "Are you okay?"
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: responsive?
    node((0, 1), align(center)[
      *Is the person responsive?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 65mm, inset: 8pt),

    // YES -> do not perform CPR
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Do not perform CPR. \
      Assess condition. \
      #action[CALL] 101 if needed.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 55mm, inset: 8pt),

    // NO -> Step 2
    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 2: Check breathing
    node((0, 2), align(center)[
      *Step 2:* #action[CHECK] breathing \
      (max 10 seconds) \
      Look, listen, feel
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    // Warning for step 2
    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do not spend >10s \
      checking breathing. \
      Gasping is NOT \
      normal breathing.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: breathing normally?
    node((0, 3), align(center)[
      *Is the person breathing normally?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 70mm, inset: 8pt),

    // YES -> recovery position
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Recovery position. \
      #action[CALL] 101. \
      Monitor breathing.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 55mm, inset: 8pt),

    // NO -> Step 3
    edge((0, 3), (0, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 3: Call 101
    node((0, 4), align(center)[
      *Step 3:* #action[CALL] 101 (MDA) immediately \
      Use speakerphone. \
      MDA provides phone-guided CPR.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: helper available?
    node((0, 5), align(center)[
      *Is another person available?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 65mm, inset: 8pt),

    // YES -> direct helper
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      Direct them to call 101 \
      and retrieve nearest AED. \
      You: #action[BEGIN] compressions.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 55mm, inset: 8pt),

    // NO -> call yourself
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Call 101 yourself \
      (speakerphone). \
      Retrieve AED if close. \
      #action[BEGIN] compressions.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 55mm, inset: 8pt),

    // Step 4: AED
    edge((0, 5), (0, 6), "->"),

    node((0, 6), align(center)[
      *Step 4:* Request / locate an AED \
      #text(size: 8pt)[Israeli law: public spaces 500+ people must have AED. \
      Use Eifo-Defi app. MDA smart stands: call 101 to unlock.]
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: CPR Technique — Steps 5-9
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR Technique]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 5: Position
    node((0, 0), align(center)[
      *Step 5:* #action[POSITION] person supine \
      (face up) on firm, flat surface
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    // Detail note
    node((1, 0), align(center)[
      #text(size: 8pt, fill: rgb("#6b7280"))[In extreme heat: move to shade. \
      Hot surfaces: place barrier underneath.]
    ],
      shape: rect, fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"),
      width: 50mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 6: Hand placement
    node((0, 1), align(center)[
      *Step 6:* #action[PLACE] hands on chest \
      Heel of one hand centre of breastbone \
      (between nipples). Other hand on top, \
      fingers interlocked. Arms straight.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 7: Compressions
    node((0, 2), align(center)[
      *Step 7:* #action[BEGIN] chest compressions \
      *Rate:* 100--120 per minute \
      *Depth:* 5--6 cm (2--2.4 in) \
      Allow full chest recoil. \
      Minimise interruptions (under 10s pauses).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    // Warning
    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Inadequate depth/rate, \
      incomplete recoil, and \
      excessive interruptions \
      reduce effectiveness.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: trained in rescue breaths?
    node((0, 3), align(center)[
      *Trained in CPR and willing* \
      *to give rescue breaths?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 70mm, inset: 8pt),

    // YES -> 30:2
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 3), align(center)[
      30 compressions \
      then 2 rescue breaths \
      Go to Step 8
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 50mm, inset: 8pt),

    // NO -> hands-only
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 3), align(center)[
      Hands-only CPR: \
      continuous compressions \
      100--120/min. No breaths. \
      Skip to Step 11.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 50mm, inset: 8pt),
  )
]

#v(10pt)

// Steps 8-9: Airway and Breaths
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Rescue Breaths (if trained)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 8: Open airway
    node((0, 0), align(center)[
      *Step 8:* After 30 compressions, \
      #action[OPEN] airway: head-tilt / chin-lift \
      Tilt head back, lift chin.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 9: Rescue breaths
    node((0, 1), align(center)[
      *Step 9:* #action[DELIVER] 2 rescue breaths \
      Pinch nose, seal mouth, \
      1 second per breath, \
      watch for chest rise.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    // Warning
    node((1, 1), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do not over-ventilate. \
      Excessive ventilation \
      increases gastric inflation.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: chest rise?
    node((0, 2), align(center)[
      *Does the chest rise* \
      *visibly with each breath?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 70mm, inset: 8pt),

    // YES -> resume compressions
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[RESUME] compressions \
      immediately. \
      Go to Step 10.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 50mm, inset: 8pt),

    // NO -> reposition
    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      Reposition head (re-tilt). \
      Reattempt. If still no rise: \
      #action[RESUME] compressions. \
      Do not delay.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 50mm, inset: 8pt),
  )
]


// ============================================================
// PAGE 3: AED, Reassessment, Continuation — Steps 10-15
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR Cycles and AED]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 10: Resume compressions
    node((0, 0), align(center)[
      *Step 10:* #action[RESUME] compressions \
      immediately after 2 breaths. \
      Continue 30:2 cycles. \
      #text(size: 8pt)[(~2 min for 5 cycles)]
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 11: AED arrives
    node((0, 1), align(center)[
      *Step 11:* When AED arrives, \
      #action[TURN ON] and apply pads immediately. \
      Right pad: under right collarbone. \
      Left pad: under/left of left breast.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 12: Follow AED
    node((0, 2), align(center)[
      *Step 12:* #action[FOLLOW] AED voice prompts. \
      Device analyses heart rhythm.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    // Warning
    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Ensure NO ONE is \
      touching the person \
      during analysis/shock. \
      Announce "Stand clear!"]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: shock advised?
    node((0, 3), align(center)[
      *Does the AED advise a shock?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 70mm, inset: 8pt),

    // YES -> deliver shock
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Ensure all clear. \
      #action[PRESS] shock button. \
      #action[RESUME] CPR \
      immediately after shock.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 55mm, inset: 8pt),

    // NO -> resume CPR
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      #action[RESUME] CPR \
      immediately. \
      AED re-analyses \
      after 2 minutes.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 55mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 13
    node((0, 4), align(center)[
      *Step 13:* #action[RESUME] CPR immediately \
      after shock (or no-shock). \
      Do not wait for AED to re-analyse.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 14: Reassess
    node((0, 5), align(center)[
      *Step 14:* #action[REASSESS] every 2 minutes \
      (~5 cycles of 30:2). \
      Rotate compressors if 2+ rescuers \
      (switch in under 10 seconds).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    // Step 15: Continue
    node((0, 6), align(center)[
      *Step 15:* #action[CONTINUE] CPR until: \
      EMS arrives and takes over, \
      person shows signs of life, \
      AED prompts to stop, or \
      you are physically unable.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 85mm, inset: 8pt),

    edge((0, 6), (0, 7), "->"),

    // Decision: breathing on own?
    node((0, 7), align(center)[
      *Has the person begun* \
      *breathing normally?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 70mm, inset: 8pt),

    // YES -> recovery
    edge((0, 7), (1, 7), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 7), align(center)[
      #action[STOP] CPR. \
      Recovery position \
      (on side, leg bent 90deg). \
      Monitor until EMS arrives.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 55mm, inset: 8pt),

    // NO -> continue
    edge((0, 7), (-1, 7), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 7), align(center)[
      #action[CONTINUE] CPR cycles \
      and AED use. \
      Do not stop until EMS \
      takes over or unable.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 55mm, inset: 8pt),
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
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Key CPR Parameters]
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 8pt,
      [#strong[Compression rate:] 100--120 / min],
      [#strong[Compression depth:] 5--6 cm (2--2.4 in)],
      [#strong[Compression:breath ratio:] 30 : 2],
      [#strong[Reassess interval:] Every 2 min (~5 cycles)],
      [#strong[Max pause:] < 10 seconds],
      [#strong[Breath duration:] 1 second each],
      [#strong[Emergency number:] 101 (MDA)],
      [#strong[AED re-analysis:] Every 2 minutes],
    )
  ]
]

#v(10pt)

// --- DO NOT List ---
#do-not-box((
  "Do not delay calling 101 -- early activation of EMS is critical for survival.",
  "Do not spend more than 10 seconds checking for breathing.",
  "Do not interrupt chest compressions for more than 10 seconds for any reason.",
  "Do not lean on the chest between compressions -- allow full recoil.",
  "Do not compress deeper than 6 cm (2.4 inches) to avoid internal injury.",
  "Do not over-ventilate -- deliver each breath over 1 second only, just enough for visible chest rise.",
  "Do not touch the person while the AED is analysing the rhythm or delivering a shock.",
  "Do not delay AED use -- apply it as soon as it arrives, even if CPR is in progress.",
  "Do not wait for the AED to re-analyse before resuming compressions after a shock.",
  "Do not move the person unnecessarily -- perform CPR where they are unless the scene is unsafe.",
  "Do not assume gasping (agonal breathing) is normal breathing -- it is a sign of cardiac arrest.",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "AED (Automated External Defibrillator)",
  "Barrier device or pocket mask (for rescue breaths, if available)",
  "Phone (to call 101 and use speakerphone for dispatcher-guided CPR)",
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
  #strong[Source:] Magen David Adom (MDA) — "MDA CPR Protocol -- synthesised from MDA public CPR page, Maccabi Health adult resuscitation guide, and AHA 2025 Guidelines for CPR and ECC (adopted by MDA)" \
  #strong[URL:] https://www.mdais.org/101/cpr-hands-only \
  #strong[Publication date:] 2025-01-01 · #strong[Edition:] AHA 2025 Guidelines \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah reference material. No protocol-level differences were identified between the two organisations; both follow AHA guidelines. MDA is used as the authoritative default per project rules.
]
