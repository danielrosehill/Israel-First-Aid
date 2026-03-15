// Israel Adult Burns Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-BURNS-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-BURNS-001"
#let protocol-title = "Burns First Aid Protocol — Adult"
#let protocol-subject = "BURNS"
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
// PAGE 1: Title, Assessment, Initial Treatment (Steps 1-5)
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
  When an adult has sustained a burn from heat, chemicals, electricity, or radiation. Signs: redness, swelling, blisters, white/grey/black discolouration of skin, or pain at injury site.
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
  First aid for thermal, chemical, and electrical burns: cooling, protecting the wound, and recognising when to call emergency services.
]

#v(8pt)

// --- Initial Treatment Steps 1-4 ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Initial Assessment and Treatment]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Scene safety
    node((0, 0), align(center)[
      *Step 1:* #action[CHECK] scene safety. \
      #action[REMOVE] casualty from \
      heat source.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 2: Assess severity
    node((0, 1), align(center)[
      *Step 2:* Assess burn severity. \
      1st: red, painful, no blisters \
      2nd: blisters, severe pain \
      3rd: white/grey/black, stiff, \
      reduced pain
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: severe?
    node((0, 2), align(center)[
      *Is the burn severe?* \
      (3rd degree, larger than palm, \
      face/hands/feet/genitals, \
      chemical/electrical/inhalation)
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> call 101
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[CALL] 101 (MDA) \
      immediately. \
      Continue first aid \
      while waiting.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> continue
    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 3: Cool
    node((0, 3), align(center)[
      *Step 3:* #action[COOL] burn under \
      cool (not cold) running water \
      for at least 10 minutes.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT apply ice or \
      ice-cold water. Extreme \
      cold causes additional \
      tissue damage.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    // Step 4: Remove jewellery
    node((0, 4), align(center)[
      *Step 4:* #action[REMOVE] rings, \
      bracelets, watches, loose \
      clothing before swelling.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: clothing stuck?
    node((0, 5), align(center)[
      *Is clothing stuck to the burn?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> cut around
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      Cut around stuck \
      clothing. Do NOT \
      pull it off.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> remove gently
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Gently remove \
      clothing from \
      the burn area.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Cover, Chemical/Electrical Burns (Steps 5-9)
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Wound Protection and Special Burns]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 5: Cover
    node((0, 0), align(center)[
      *Step 5:* #action[COVER] burn loosely \
      with cling film, clean plastic \
      bag, or non-fluffy dressing. \
      Do not wrap tightly.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT apply toothpaste, \
      coffee, raw egg, yogurt, \
      butter, or home remedies. \
      They trap heat.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 6: Position
    node((0, 1), align(center)[
      *Step 6:* #action[POSITION] patient \
      lying down. Keep warm \
      to prevent hypothermia.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 7: Chemical burn?
    node((0, 2), align(center)[
      *Was the burn caused by* \
      *a chemical substance?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> chemical treatment
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[REMOVE] contaminated \
      clothing (protect yourself). \
      #action[FLUSH] with massive \
      cool water 15--20 min. \
      Eyes: flush 15 min. \
      Do NOT neutralise. \
      #action[CALL] 101.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> check electrical
    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 8: Electrical burn?
    node((0, 3), align(center)[
      *Was the burn caused* \
      *by electricity?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> electrical treatment
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Ensure power source \
      disconnected first. \
      #action[CALL] 101. \
      Be prepared for CPR. \
      Internal injuries may \
      not be visible.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> monitor
    edge((0, 3), (0, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 9: Monitor
    node((0, 4), align(center)[
      *Step 9:* #action[MONITOR] for \
      complications: infection, \
      respiratory issues, shock. \
      For mild 1st-degree burns: \
      ibuprofen or paracetamol \
      for pain relief.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

#v(10pt)

// --- DO NOT List ---
#do-not-box((
  "Do NOT apply ice or ice-cold water to the burn -- extreme cold causes additional tissue and blood vessel damage.",
  "Do NOT apply toothpaste, ground coffee, raw egg, yogurt, butter, or other home remedies -- these trap heat and increase infection risk.",
  "Do NOT rupture or pop blisters -- the fluid inside protects the underlying tissue during healing.",
  "Do NOT use fat-based creams or ointments on fresh burns.",
  "Do NOT remove clothing that is stuck to the burn -- cut around it instead.",
  "Do NOT attempt chemical neutralisation on chemical burns.",
  "Do NOT approach an electrical burn casualty until the power source is confirmed disconnected.",
))

// ============================================================
// PAGE 3: Equipment, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- Equipment ---
#equipment-box((
  "Cool running water source",
  "Cling film (food wrap) or clean plastic bag",
  "Clean non-fluffy dressings or bandages",
  "Scissors (to cut clothing around stuck areas)",
  "Blanket (to keep patient warm and prevent hypothermia)",
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
  #strong[Source:] Magen David Adom (MDA) — "MDA Burns First Aid Guidelines" \
  #strong[URL:] https://www.mdais.org/101/burns \
  #strong[Publication date:] 2026-01-01 \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. MDA specifies "cool (not cold) running water" for at least 10 minutes. MDA is used as the authoritative default per project rules.
]
