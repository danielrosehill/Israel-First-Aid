// Israel Child Dehydration Flowchart -- V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-DEHYDRATION-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-DEHYDRATION-001"
#let protocol-title = "Dehydration First Aid -- Child"
#let protocol-subject = "DEHYDRATION"
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
  #align(center)[CALL #emergency-number (#emergency-service) FOR SEVERE DEHYDRATION]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  When a child shows signs of dehydration from any cause: insufficient fluid intake, excessive sweating, vomiting, diarrhoea, or fever. Particularly relevant during Israeli summer (May--October), sharav heat waves, school field trips in desert areas (Negev, Arava, Dead Sea), and during childhood gastroenteritis.
]

#v(6pt)

#rect(fill: rgb("#f0fdf4"), stroke: 1pt + rgb("#16a34a"), radius: 6pt, width: 100%, inset: 10pt)[
  #text(fill: rgb("#166534"), weight: "bold", size: 10pt)[Summary:]
  Move to cool environment. Assess severity. Check fontanelle in infants. Oral rehydration with ORS (not cola, juice, or plain water). Small frequent sips. Hospital for severe cases, all infants under 3 months, or persistent vomiting.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment and Rehydration -- Steps 1-5]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[MOVE] child to \
      cool, shaded environment. \
      Remove excess clothing.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* #action[ASSESS] severity. \
      #text(size: 8pt)[Mild: dry mouth, decreased urine. \
      Moderate: no tears, sunken fontanelle, \
      skin tenting. \
      Severe: rapid weak pulse, cool \
      mottled skin, altered consciousness.]
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Signs of severe dehydration?* \
      #text(size: 8pt)[(altered consciousness, rapid weak \
      pulse, very sunken fontanelle, \
      cool/mottled extremities)]
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[CALL] 101 immediately. \
      Medical emergency. \
      Child likely needs \
      IV fluids.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((0, 3), align(center)[
      *Step 3:* #action[CHECK] fontanelle \
      in infants under 18 months. \
      Sunken = dehydration. \
      Bulging = seek immediate care.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Is ORS available?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      *Step 4:* #action[PREPARE] ORS \
      as directed on packet. \
      Small frequent sips. \
      Infants: spoon or \
      oral syringe.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Use diluted sports \
      drinks (equal parts \
      water) as temporary \
      alternative.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Fluid Tolerance and Transport -- Steps 5-8]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 5:* Can the child \
      *keep fluids down?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (1, 0), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 0), align(center)[
      Continue ORS. \
      5--10 mL every 2--5 \
      minutes for young \
      children.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 0), (-1, 0), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 0), align(center)[
      #action[CALL] 101. Child may \
      need IV fluids. Do not \
      force oral intake.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 6:* #action[MONITOR] vital signs \
      and urine output. \
      Improvement: urination, moist \
      mouth, tears, alertness.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 7:* When tolerating fluids, \
      #action[OFFER] salty crackers or \
      pretzels to replace sodium. \
      Priority: fluids first.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 8:* #action[TRANSPORT] to hospital \
      if: moderate/severe dehydration, \
      no improvement, infant under 3 \
      months, fever above 40 C, blood \
      in stool, yellow/green vomit.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT give cola, fruit \
      juice, plain water alone, \
      or tea -- these do not \
      replace electrolytes and \
      can worsen dehydration.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]

#v(10pt)

#do-not-box((
  "Do NOT give cola, fruit juice, plain water alone, or tea -- do not replace electrolytes adequately.",
  "Do NOT use homemade salt/sugar solutions unless ORS is completely unavailable.",
  "Do NOT force large volumes of fluid at once -- small frequent sips are more effective.",
  "Do NOT delay calling 101 for an infant under 3 months with any signs of dehydration.",
  "Do NOT ignore a sunken fontanelle in an infant -- key dehydration indicator.",
  "Do NOT give anti-diarrhoea medications to children without medical direction.",
  "Do NOT stop breastfeeding -- continue breastfeeding alongside ORS.",
))

#v(10pt)

#equipment-box((
  "ORS (Oral Rehydration Solution) packets",
  "Spoon or oral syringe (for infant fluid administration)",
  "Phone (to call 101)",
  "Thermometer (to check for fever)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) -- supplemented by Ichud Hatzalah hot climate injuries and Hatzalah Without Borders dehydration guide \
  #strong[URL:] https://www.mdais.org/101/first-aid \
  #strong[Publication date:] 2026-01-01 \
  #strong[Imported:] 2026-03-16 · #strong[Last verified:] 2026-03-16 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Israeli climate context: sharav heat waves, Negev field trips, summer months May--October.
]
