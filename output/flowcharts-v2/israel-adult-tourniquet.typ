// Israel Adult Tourniquet Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-TOURNIQUET-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-TOURNIQUET-001"
#let protocol-title = "Tourniquet Application — Adult"
#let protocol-subject = "TOURNIQUET"
#let age-group = "ADULT"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2026-03-16"
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
// PAGE 1: Title, Assessment, Steps 1-6
// ============================================================

#align(center)[
  #text(size: 20pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[#country — #age-group]
]
#v(6pt)
#rect(fill: rgb("#dc2626"), radius: 6pt, width: 100%, inset: 10pt)[
  #set text(fill: white, weight: "bold", size: 16pt)
  #align(center)[CALL #emergency-number (#emergency-service) — LOSS OF LIMB IS PREFERABLE TO LOSS OF LIFE]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Life-threatening bleeding from a limb that cannot be controlled by direct pressure. Specific indications: direct pressure fails, partial or complete amputation, severe crushing injury, multi-casualty situations where sustained direct pressure is not feasible.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment and Application]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Direct pressure first
    node((0, 0), align(center)[
      *Step 1:* #action[ATTEMPT] direct \
      pressure first (unless immediate \
      tourniquet is needed).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: direct pressure working?
    node((0, 1), align(center)[
      *Is direct pressure* \
      *controlling the bleeding?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Continue with direct \
      pressure. Apply Israeli \
      bandage. Verify distal \
      pulse. Monitor.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 2: Expose wound
    node((0, 2), align(center)[
      *Step 2:* #action[EXPOSE] the wound. \
      Cut or remove clothing to \
      identify bleeding source.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Position tourniquet
    node((0, 3), align(center)[
      *Step 3:* #action[POSITION] tourniquet \
      above the injury site, between \
      wound and heart. Prefer upper \
      arm or upper thigh.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[NOT suitable for groin, \
      armpit, neck, head, or \
      abdomen. Use direct \
      pressure for these areas.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    // Step 4: Tighten
    node((0, 4), align(center)[
      *Step 4:* #action[TIGHTEN] the strap \
      and secure it.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: CAT or improvised?
    node((0, 5), align(center)[
      *Using a commercial* \
      *tourniquet (CAT)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      *Step 5:* #action[TWIST] windlass \
      rod until bleeding stops. \
      Lock rod in clip.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Improvised (shirt, towel, \
      belt): apply as tightly \
      as possible. Less reliable \
      but can be effective.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    // Step 6: Verify
    node((0, 6), align(center)[
      *Step 6:* #action[VERIFY] bleeding \
      has stopped completely.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 6), (0, 7), "->"),

    // Decision: stopped?
    node((0, 7), align(center)[
      *Has bleeding stopped* \
      *completely?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 7), (1, 7), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 7), align(center)[
      Proceed to document \
      time (*Step 7*).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 7), (-1, 7), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 7), align(center)[
      #action[APPLY] a second \
      tourniquet above the \
      first one. Tighten \
      and verify again.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Steps 7-9, DO NOT, Equipment
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Documentation and Monitoring]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 7: Document time
    node((0, 0), align(center)[
      *Step 7:* #action[DOCUMENT] the time \
      of tourniquet application. \
      Write on tourniquet tab, \
      patient's skin, or visible location.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[CRITICAL] \
      #text(size: 8pt)[Time documentation is \
      critical for limb viability \
      assessment at hospital.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 8: Call 101
    node((0, 1), align(center)[
      *Step 8:* #action[CALL] 101. Mention \
      tourniquet has been applied. \
      Report location, injury, \
      and time of application.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 9: Monitor
    node((0, 2), align(center)[
      *Step 9:* #action[MONITOR] the victim. \
      Watch for shock (rapid pulse, \
      pale/cold skin, confusion). \
      Keep calm and still.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: conscious?
    node((0, 3), align(center)[
      *Is the victim conscious* \
      *and breathing?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Continue monitoring \
      and reassurance. \
      Keep warm until \
      MDA arrives.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Unconscious + breathing: \
      recovery position. \
      Not breathing: \
      #action[BEGIN] CPR.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(10pt)

#do-not-box((
  "Do NOT remove the tourniquet once applied -- only medical professionals should decide to release or convert.",
  "Do NOT apply a tourniquet to junctional zones (groin, armpit, neck), head, or abdomen.",
  "Do NOT apply the tourniquet over a joint -- place on the limb above the wound.",
  "Do NOT loosen or adjust the tourniquet to 'check if bleeding has stopped' -- this can restart hemorrhage.",
  "Do NOT delay tourniquet application in life-threatening hemorrhage due to fear of limb loss.",
  "Do NOT allow the victim to walk or move the affected limb after tourniquet application.",
  "Do NOT attempt tourniquet conversion -- this is a professional-level decision under medical direction only.",
))

#v(10pt)

#equipment-box((
  "CAT tourniquet (Combat Application Tourniquet) -- preferred",
  "Improvised tourniquet material (shirt, towel, belt) as last resort",
  "Scissors or Leatherman Raptor for cutting clothing",
  "Pen or marker to document tourniquet application time",
  "Phone to call 101 (MDA)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA First Aid Guidelines and 'First Seven Minutes' initiative \
  #strong[URL:] https://www.mdais.org/media/4954/mda-first-aid-guidelines-en.pdf \
  #strong[Imported:] 2026-03-16 · #strong[Last verified:] 2026-03-16 \
  #strong[Notes:] Approximately 500,000 people trained by MDA in 2024. MDA presents tourniquet as part of a progressive hemorrhage control sequence.
]
