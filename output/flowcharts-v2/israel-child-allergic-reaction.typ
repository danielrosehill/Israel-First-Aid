// Israel Child Anaphylaxis Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA) — ALS Manual 2024 / BLS Guide 2016
// Protocol ID: IL-CHILD-ALLERGIC-REACTION-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let protocol-id = "IL-CHILD-ALLERGIC-REACTION-001"
#let protocol-title = "Anaphylaxis (Severe Allergic Reaction) — Child"
#let protocol-subject = "ANAPHYLAXIS"
#let age-group = "CHILD"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2024-04-01"
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
  #align(center)[CALL #emergency-number (#emergency-service) — EPIPEN FIRST, THEN CALL]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child showing signs of severe allergic reaction: hives, facial/throat swelling, wheezing, stridor, difficulty breathing, weak/rapid pulse, confusion, loss of consciousness. Any involvement of breathing, circulation, or consciousness indicates anaphylaxis -- do not wait.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Recognition and Initial Response (Steps 1--5)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[RECOGNISE] anaphylaxis. \
      Breathing difficulty, swelling, \
      cardiovascular compromise, \
      or multi-system involvement?
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Are signs of anaphylaxis present?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 1), align(center)[
      Proceed immediately. \
      Do not wait for \
      symptoms to worsen.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 1), align(center)[
      Monitor closely. \
      Be ready to escalate \
      if symptoms progress.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 2:* #action[CALL] 101 immediately. \
      State child's age, weight, \
      known allergy, EpiPen status.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 3:* #action[REMOVE] allergen. \
      Food from mouth, bee stinger \
      (scrape sideways). Do not \
      induce vomiting.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 4:* #action[MANAGE] airway. \
      Loosen clothing. Check tongue.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Infants: neutral head \
      position only. Do NOT \
      over-extend the neck.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 4), (0, 5), "->"),

    node((0, 5), align(center)[
      *Step 5:* #action[POSITION] child.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    node((0, 6), align(center)[
      *Is the child conscious?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 6), (1, 6), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 6), align(center)[
      Breathing difficulty: \
      allow upright/comfort. \
      No difficulty: lie flat, \
      elevate legs.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 6), (-1, 6), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 6), align(center)[
      Breathing: recovery position. \
      Not breathing: begin CPR.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: EpiPen and Monitoring
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[EpiPen Administration (Steps 6--7)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 6:* #action[ADMINISTER] EpiPen \
      immediately. Do not delay.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Is an EpiPen available?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((-1, 1), align(center)[
      #action[ADMINISTER] now. \
      Go to Step 7 technique.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((1, 1), align(center)[
      Wait for EMS. Monitor \
      airway, breathing, \
      circulation. Be ready \
      for CPR.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 7:* EpiPen technique: \
      1. Remove blue cap ("blue to sky") \
      2. Orange tip down ("orange to thigh") \
      3. 90 degrees to outer thigh \
      4. Small child: #action[PINCH] thigh first \
      5. Press until click, hold 10 sec \
      6. Can go through clothing \
      7. Massage site 10 sec after
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT touch orange tip. \
      Outer thigh ONLY. \
      Never inject into fingers, \
      hands, feet, or buttocks.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),
  )
]

#v(6pt)

#keep-together[
  #rect(fill: rgb("#eff6ff"), stroke: 2pt + rgb("#2563eb"), radius: 6pt, width: 100%, inset: 12pt)[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 11pt)[EpiPen Dosing by Weight]
    #v(4pt)
    #set text(size: 10pt)
    #strong[15--30 kg:] EpiPen Junior 0.15 mg (green label) \
    #strong[Over 30 kg:] EpiPen 0.3 mg (yellow label) \
    #strong[Under 15 kg:] No auto-injector for this range, but 0.15 mg EpiPen Junior is still recommended over withholding treatment. \
    #text(size: 9pt, fill: rgb("#6b7280"))[Note: Some Israeli allergists prescribe 0.3 mg from 20 kg -- follow individual prescription.]
  ]
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reassessment and Monitoring (Steps 8--9)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 8:* #action[REASSESS] after 5 minutes. \
      Epinephrine lasts ~20 min. \
      Biphasic reactions possible \
      up to 72 hours.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Has the child's condition* \
      *improved after 5 minutes?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),

    node((1, 1), align(center)[
      Continue monitoring. \
      Hospital evaluation \
      still required.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((-1, 1), align(center)[
      If 2nd EpiPen available, \
      #action[ADMINISTER] 2nd dose. \
      Continue monitoring.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 9:* #action[MONITOR] continuously \
      until EMS arrives. Be ready \
      for CPR. Hospital evaluation \
      mandatory (4--6 hrs minimum).
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Never allow a child \
      with anaphylaxis to \
      leave without hospital \
      evaluation. Biphasic \
      reactions can be fatal.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),
  )
]

#v(10pt)

#do-not-box((
  "Do not delay epinephrine -- it is the only effective treatment for anaphylaxis.",
  "Do not substitute antihistamines (Benadryl) for epinephrine in anaphylaxis.",
  "Do not force the child to lie down if having breathing difficulty -- allow upright position.",
  "Do not over-extend an infant's neck -- use neutral position only.",
  "Do not inject epinephrine into fingers, hands, feet, or buttocks -- outer thigh only.",
  "Do not touch the orange tip of the EpiPen.",
  "Do not induce vomiting if allergen was ingested.",
  "Do not allow a child with anaphylaxis to leave without hospital evaluation.",
  "Do not store EpiPen in refrigerator, car, or direct sunlight -- Israeli heat risk.",
  "Do not give oral medications to a child with throat swelling or difficulty swallowing.",
))

#v(10pt)

#equipment-box((
  "EpiPen Junior 0.15 mg (green label) -- for children 15-30 kg",
  "EpiPen 0.3 mg (yellow label) -- for children over 30 kg",
  "Phone to call MDA at 101",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — ALS Manual 2024 / BLS Guide 2016 \
  #strong[URL:] https://www.mdais.org/media/5033/als-2024.pdf \
  #strong[Publication date:] 2024-04-01 · #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah. Israeli Ministry of Education directive requires epinephrine availability in schools/ganim.
]
