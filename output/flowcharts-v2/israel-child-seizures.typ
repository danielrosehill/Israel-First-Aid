// Israel Child Seizures Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-SEIZURES-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let protocol-id = "IL-CHILD-SEIZURES-001"
#let protocol-title = "Seizures (Including Febrile Seizures) — Child"
#let protocol-subject = "SEIZURES"
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
  #set text(fill: white, weight: "bold", size: 14pt)
  #align(center)[CALL #emergency-number IF: FIRST SEIZURE, OVER 5 MIN, OR NO RECOVERY]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child experiencing a seizure: rhythmic jerking or stiffening, unresponsiveness, eyes rolling, loss of consciousness. Febrile seizures: ages 6 months to 5--6 years, in the context of fever. A seizure lasting 5+ minutes is a medical emergency (status epilepticus).
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[During the Seizure (Steps 1--7)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[ENSURE] safety. \
      Remove dangerous objects. \
      Pad area with pillows/blankets.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* #action[LAY] child on their side. \
      Support head, tilt slightly \
      down. Keep airway clear.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 3:* #action[LOOSEN] tight clothing \
      around neck.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 4:* #action[TIME] the seizure. \
      Note when it started.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[5+ minutes or multiple \
      seizures without recovery \
      = status epilepticus. \
      Risk of permanent brain \
      damage beyond 30 min.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 5:* Is this the \
      child's first seizure?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 4), align(center)[
      #action[CALL] 101 immediately. \
      First seizure always \
      requires evaluation.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((0, 5), align(center)[
      *Step 6:* Seizure over 5 min, \
      or breathing difficulty, \
      choking, cyanosis?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 5), align(center)[
      #action[CALL] 101 immediately. \
      Medical emergency.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),
    node((-1, 5), align(center)[
      Continue monitoring. \
      Stay with the child.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    node((0, 6), align(center)[
      *Step 7:* If prescribed medication \
      available (e.g. rectal diazepam), \
      #action[ADMINISTER] per doctor's \
      instructions. No oral meds \
      during seizure.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: After the Seizure
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[After the Seizure (Steps 8--12)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 8:* Febrile seizure: #action[WRAP] \
      child in lukewarm damp towel \
      to reduce fever. NOT cold \
      water or ice.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 9:* In a vehicle: #action[KEEP] \
      child in safety seat. Pull over. \
      Do not remove during seizure.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 10:* After seizure stops: \
      #action[PLACE] in recovery position. \
      Monitor breathing. Post-ictal \
      drowsiness is normal.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 11:* Does the child \
      regain consciousness?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 3), align(center)[
      Continue monitoring. \
      Febrile: see paediatrician. \
      First seizure: immediate \
      medical evaluation.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),
    node((-1, 3), align(center)[
      #action[CALL] 101 immediately. \
      Not regaining consciousness \
      is a medical emergency.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 12:* Febrile seizure recovery: \
      #action[ADMINISTER] paracetamol or \
      ibuprofen (dosed by weight, \
      per family doctor). Light \
      clothing, ventilate room, fluids. \
      Lukewarm bath (20 min) only \
      when NOT actively seizing.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[NOTE] \
      #text(size: 8pt)[Antipyretics may improve \
      comfort but have NOT \
      been proven to prevent \
      febrile seizures.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),
  )
]

#v(10pt)

#do-not-box((
  "DO NOT force the child's mouth open -- the child will not swallow their tongue.",
  "DO NOT insert anything into the mouth -- can injure teeth or jaw.",
  "DO NOT attempt CPR during the seizure -- this can only cause harm.",
  "DO NOT put the child in a bath or shower during the seizure.",
  "DO NOT splash water on the child during the seizure.",
  "DO NOT try to wake the child or restrain/hold them down.",
  "DO NOT give medications by mouth during the seizure.",
  "DO NOT attempt rapid cooling with cold water or ice.",
  "DO NOT insert an airway device during an active seizure.",
  "DO NOT attempt forced airway opening during an active seizure.",
))

#v(10pt)

#equipment-box((
  "Lukewarm damp towel (for febrile seizures)",
  "Pillows or blankets (to pad surroundings)",
  "Prescribed seizure-stopping medication if available (e.g. rectal diazepam)",
  "Fever-reducing medication for post-seizure (paracetamol or ibuprofen, per doctor)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA 101 Public First Aid Guidance Series \
  #strong[URL:] https://www.mdais.org/101/seizures \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Febrile seizures affect children aged 6 months to 5--6 years, peak at 18--22 months, prevalence ~3--4%.
]
