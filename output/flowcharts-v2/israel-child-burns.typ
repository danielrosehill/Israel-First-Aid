// Israel Child Burns Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-BURNS-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let protocol-id = "IL-CHILD-BURNS-001"
#let protocol-title = "Burns First Aid — Child"
#let protocol-subject = "BURNS"
#let age-group = "CHILD"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2026-01-01"
#let last-verified = "2026-03-15"
#let generation-date = "2026-03-16"
#let version = "2.0"

#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2cm, left: 1.5cm, right: 1.5cm),
  header: context {
    let page-num = counter(page).get().first()
    let page-total = counter(page).final().first()
    grid(columns: (1fr, auto, 1fr), gutter: 0pt,
      align(left)[#text(size: 14pt, weight: "bold", fill: rgb("#1e40af"))[#upper(age-group) — #upper(protocol-subject)]],
      align(center)[#rect(fill: rgb("#dc2626"), radius: 4pt, inset: (x: 8pt, y: 3pt))[#text(fill: white, weight: "bold", size: 10pt)[CALL #emergency-number]]],
      align(right)[#rect(fill: rgb("#fbbf24"), radius: 4pt, inset: (x: 8pt, y: 3pt))[#text(weight: "bold", size: 11pt)[Pg #page-num / #page-total]]],
    )
    line(length: 100%, stroke: 1pt + rgb("#d1d5db"))
  },
  footer: context {
    let page-num = counter(page).get().first()
    let page-total = counter(page).final().first()
    line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
    v(3pt)
    grid(columns: (1fr, auto, 1fr), gutter: 0pt,
      align(left)[#text(size: 7pt, fill: rgb("#9ca3af"))[#protocol-id · v#version · Generated: #generation-date · Source: #source-authority (#source-date)]],
      align(center)[#text(size: 7pt, fill: rgb("#9ca3af"), weight: "bold")[Personal reference only — not medical advice]],
      align(right)[#rect(fill: rgb("#fbbf24"), radius: 3pt, inset: (x: 6pt, y: 2pt))[#text(weight: "bold", size: 8pt)[#page-num / #page-total]]],
    )
  },
)

#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 10pt, dir: ltr)

#let action(word) = {
  text(weight: "bold", fill: rgb("#1e40af"), size: 11pt)[#upper(word)]
}
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
  #align(center)[CALL #emergency-number (#emergency-service) FOR SERIOUS BURNS]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child has sustained a burn from heat, hot liquids (scalds), chemicals, electricity, or radiation. ~84% of paediatric burns in Israel are scalds. All burns in infants under 1 year require immediate medical attention.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Initial Response (Steps 1--4)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[REMOVE] child from \
      heat source. Ensure scene safety.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* #action[REMOVE] saturated clothing. \
      Remove constrictive items \
      (shoes, watches, rings).
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Is clothing stuck to the burn?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 2), align(center)[
      #action[LEAVE] stuck clothing. \
      Cut around it with scissors.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 2), align(center)[
      Gently remove clothing \
      and constrictive items.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 3:* #action[COOL] burn under lukewarm \
      running water for *minimum* \
      *20 minutes*. Not ice-cold.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT use ice or \
      ice-cold water. Extreme \
      cold causes additional \
      tissue damage.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 4:* #action[MONITOR] for hypothermia. \
      Cool the BURN, not the whole child.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    node((0, 5), align(center)[
      *Is the child showing signs* \
      *of hypothermia (shivering)?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 5), align(center)[
      Switch to cold-soaked \
      cloths on burn area. \
      Keep rest of body warm.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 5), align(center)[
      Continue cooling under \
      lukewarm water until \
      full 20 min elapsed.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment and Treatment (Steps 5--9)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 5:* #action[ASSESS] burn severity.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Is the burn severe?* \
      (2nd-degree w/ large blisters, \
      3rd-degree, large area, \
      sensitive areas, or under 1yr)
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 1), align(center)[
      #action[CALL] 101 immediately. \
      Continue first aid.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 1), align(center)[
      Continue first aid. \
      Monitor for worsening.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 6:* #action[COVER] burn with sterile, \
      loosely-applied, non-adherent \
      dressings. No gauze pads \
      or cotton wool directly.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 7:* #action[ADMINISTER] pain relief \
      (ibuprofen or paracetamol \
      dosed by weight, if conscious).
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 8:* #action[OFFER] water in small \
      sips to prevent dehydration.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    node((0, 5), align(center)[
      *Step 9:* #action[CALL] 101 for guidance.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    node((0, 6), align(center)[
      *Infant under 1yr, sensitive* \
      *areas, or worse than minor?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 6), (1, 6), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 6), align(center)[
      #action[CALL] 101 immediately. \
      All burns in infants \
      under 1 require medical \
      attention.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 6), (-1, 6), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 6), align(center)[
      Mild 1st-degree only: \
      Apply relief cream \
      after cooling. Monitor \
      for infection.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: Chemical/Electrical, DO NOT, Equipment
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Chemical and Electrical Burns (Steps 10--12)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 10:* Was the burn \
      caused by a chemical?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (1, 0), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 0), align(center)[
      #action[REMOVE] contaminated \
      clothing carefully. \
      #action[RINSE] with massive \
      cool water 20+ min. \
      Eyes: flush 15+ min. \
      No chemical neutralisation.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 0), (0, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((0, 1), align(center)[
      *Step 11:* Was the burn \
      caused by electricity?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 1), align(center)[
      #action[DISCONNECT] power first. \
      #action[CALL] 101 immediately. \
      Internal damage may \
      not be visible. \
      Be prepared for CPR.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((0, 2), align(center)[
      *Step 12:* #action[MONITOR] for \
      complications. Watch for \
      infection, respiratory issues, \
      shock, hypothermia.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),
  )
]

#v(10pt)

#do-not-box((
  "Do NOT apply ice or ice-cold water -- extreme cold causes additional tissue damage.",
  "Do NOT apply toothpaste, coffee grounds, raw eggs, yogurt, or butter.",
  "Do NOT puncture or pop blisters -- fluid protects tissue.",
  "Do NOT apply ointments, oils, or powders to serious burns before medical evaluation.",
  "Do NOT use gauze pads or cotton wool directly on burns -- fibres adhere.",
  "Do NOT leave the child unattended if unconscious.",
  "Do NOT remove clothing stuck to the burn -- cut around it.",
  "Do NOT immerse the whole child in cold water -- cool the burn, not the child.",
  "Do NOT attempt chemical neutralisation on chemical burns.",
))

#v(10pt)

#equipment-box((
  "Cool (lukewarm) running water source",
  "Sterile non-adherent dressings or clean dry sheet",
  "Scissors (to cut clothing around stuck areas)",
  "Blanket or towel (warmth during cooling)",
  "Age-appropriate pain relief (ibuprofen or paracetamol, dosed by weight)",
  "Drinking water (for hydration)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA Burns First Aid Guidelines \
  #strong[URL:] https://www.mdais.org/101/burns \
  #strong[Publication date:] 2026-01-01 · #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Key child difference: minimum 20 minutes cooling (vs 10 for adults). Cool the burn, not the whole child. All burns in infants under 1 year require immediate medical attention.
]
