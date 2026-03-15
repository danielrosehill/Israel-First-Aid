// Israel Child Diabetic Emergencies Flowchart -- V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-DIABETIC-EMERGENCIES-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-DIABETIC-EMERGENCIES-001"
#let protocol-title = "Diabetic Emergency First Aid -- Child"
#let protocol-subject = "DIABETIC EMERGENCY"
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
// PAGE 1: Title, Mild/Moderate Hypoglycemia (Steps 1-5)
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
    CALL #emergency-number (#emergency-service) — WHEN IN DOUBT, GIVE SUGAR
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child with known or suspected diabetes showing signs of hypoglycemia (paleness, sweating, trembling, rapid heartbeat, irritability, confusion, seizures) or hyperglycemia/DKA (excessive thirst, vomiting, rapid deep breathing, fruity breath, lethargy).
]

#v(6pt)

#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#166534"), weight: "bold", size: 10pt)[Key Principle:]
  When in doubt whether hypoglycemia or hyperglycemia: *give sugar*. Sugar saves a hypoglycemic child's life. Sugar will not cause immediate harm to a hyperglycemic child.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment and Mild Hypoglycemia]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Assess
    node((0, 0), align(center)[
      *Step 1:* #action[ASSESS] consciousness \
      and ability to swallow safely. \
      Check for medical alert bracelet.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: conscious and can swallow?
    node((0, 1), align(center)[
      *Is the child conscious* \
      *and able to swallow safely?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Proceed to Step 2 \
      (mild/moderate hypo \
      treatment).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Skip to Step 7 \
      (severe hypo -- \
      unconscious child). \
      See page 2.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 2: Age-based sugar dose
    node((0, 2), align(center)[
      *Is the child under 6?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      *Step 2:* #action[GIVE] 10g of \
      fast-acting sugar.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      *Step 2:* #action[GIVE] 15g of \
      fast-acting sugar. \
      #text(size: 8pt)[(juice, glucose tablets, \
      sugar in water, honey)]
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Wait and reassess
    node((0, 3), align(center)[
      *Step 3:* #action[WAIT] 15 minutes. \
      Recheck blood glucose. \
      Target: 70 mg/dL (6+) \
      or 80 mg/dL (under 6).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: improved?
    node((0, 4), align(center)[
      *Has blood glucose risen* \
      *above target and symptoms* \
      *improving?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      *Step 4:* #action[GIVE] complex \
      carbs (bread, crackers, \
      fruit) to sustain glucose.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Repeat sugar dose. \
      If still below 54 mg/dL \
      after 30 min, \
      #action[CALL] 101.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Severe Hypo (Steps 7-13), Insulin Pump, DKA
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Severe Hypoglycemia -- Unconscious Child]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 7: Do NOT give food/drink
    node((0, 0), align(center)[
      *Step 7:* Do #text(fill: clr-warning, weight: "bold")[NOT] give \
      food or drink by mouth. \
      Life-threatening emergency.
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 8: Disconnect pump
    node((0, 1), align(center)[
      *Step 8:* #action[DISCONNECT] insulin \
      pump if child has one \
      (usually on abdomen/thigh).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 9: Glucagon?
    node((0, 2), align(center)[
      *Is a glucagon kit available* \
      *AND a trained person present?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      *Step 10:* #action[ADMINISTER] \
      glucagon IM/SC. \
      Under 6 or under 25 kg: \
      0.5 mL (half vial). \
      Over 6 or over 25 kg: \
      1.0 mL (full vial).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      #action[CALL] 101 immediately. \
      #action[PLACE] child in \
      recovery position. \
      Monitor breathing.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Steps 11-12
    node((0, 3), align(center)[
      *Step 11:* #action[PLACE] child in \
      recovery position (on side). \
      *Step 12:* #action[CALL] 101 always \
      after glucagon.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 13: Regained consciousness?
    node((0, 4), align(center)[
      *Has the child regained* \
      *consciousness and can* \
      *swallow safely?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      *Step 13:* #action[GIVE] complex \
      carbs. Continue \
      monitoring until \
      MDA arrives.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Maintain recovery \
      position. Monitor \
      breathing. Wait \
      for MDA.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(8pt)

// DKA Assessment
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[DKA Assessment (Step 14)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Signs of DKA present?* \
      #text(size: 8pt)[(vomiting, abdominal pain, rapid \
      deep breathing, fruity breath, \
      decreased consciousness)]
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (1, 0), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 0), align(center)[
      #action[CALL] 101 immediately. \
      Medical emergency. \
      Do NOT administer \
      insulin.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 0), (-1, 0), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 0), align(center)[
      Arrange transport \
      to hospital for \
      evaluation.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: Reference
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// Key parameters
#block(breakable: false)[
  #rect(
    fill: rgb("#eff6ff"),
    stroke: 2pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 12pt,
  )[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Key Parameters -- Rule of 15]
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 8pt,
      [#strong[Under 6:] 10g sugar, target 80 mg/dL],
      [#strong[6 and over:] 15g sugar, target 70 mg/dL],
      [#strong[Reassess interval:] 15 minutes],
      [#strong[Call 101 if:] below 54 mg/dL after 30 min],
      [#strong[Glucagon (under 6 / under 25 kg):] 0.5 mL],
      [#strong[Glucagon (6+ / over 25 kg):] 1.0 mL],
      [#strong[Glucagon onset:] 10--15 minutes],
      [#strong[Glucagon duration:] ~30 minutes],
    )
  ]
]

#v(10pt)

#keep-together[
  #rect(
    fill: rgb("#f0fdf4"),
    stroke: 2pt + rgb("#16a34a"),
    radius: 6pt,
    width: 100%,
    inset: 12pt,
  )[
    #text(fill: rgb("#166534"), weight: "bold", size: 13pt)[Step 15: When in Doubt -- GIVE SUGAR]
    #v(6pt)
    Giving sugar to a hypoglycemic child is *life-saving*. \
    Giving sugar to a hyperglycemic child will *not cause immediate harm*. \
    Withholding sugar from a hypoglycemic child *can be fatal*. \
    #v(4pt)
    #text(fill: clr-warning, weight: "bold")[Only if conscious and can swallow safely. Never give anything by mouth to an unconscious child.]
  ]
]

#v(10pt)

#do-not-box((
  "DO NOT administer insulin -- strictly a medical intervention, can be fatal if given inappropriately.",
  "DO NOT give food, drink, or oral medication to an unconscious or seizing child -- choking hazard.",
  "DO NOT use chocolate as initial sugar source -- fat/protein slows absorption.",
  "DO NOT administer glucagon unless trained and authorised.",
  "DO NOT delay calling 101 for severe hypoglycemia, seizures, or loss of consciousness.",
  "DO NOT attempt to manage hyperglycemia/DKA with first aid -- requires medical intervention.",
  "DO NOT use diet drinks or sugar-free products as a sugar source.",
))

#v(10pt)

#equipment-box((
  "Glucose gel syringe (15g glucose)",
  "Fast-acting sugar source (juice, glucose tablets, sugar cubes, honey)",
  "Complex carbohydrate snack (bread, crackers, fruit)",
  "Glucagon emergency kit (Hypo-Kit) if available and authorised to use",
  "Blood glucose meter (glucometer) if available",
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
  #strong[Source:] Magen David Adom (MDA) -- How to Treat a Diabetes Patient, corroborated by Shamir Medical Center paediatric endocrinology guidance \
  #strong[URL:] https://www.mdais.org/101/diabetes \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Child-specific dosing (Rule of 15 with 10g modification for under-6) sourced from MDA-aligned Israeli hospital guidance.
]
