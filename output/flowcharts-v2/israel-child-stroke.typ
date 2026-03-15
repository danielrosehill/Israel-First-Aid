// Israel Child Stroke Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-STROKE-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let protocol-id = "IL-CHILD-STROKE-001"
#let protocol-title = "Stroke (Cerebrovascular Event) — Child"
#let protocol-subject = "STROKE"
#let age-group = "CHILD"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2024-11-18"
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
  #align(center)[CALL #emergency-number — TIME IS BRAIN]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Child showing: facial drooping, arm weakness/drift, slurred speech, sudden severe headache with vomiting, new-onset seizure (especially one-sided), sudden altered mental status, sudden loss of balance, sudden vision loss. Children may present atypically: seizures at onset, gradual symptoms, irritability, feeding difficulty, lethargy in young children.
]

#v(4pt)

#keep-together[
  #rect(fill: rgb("#eff6ff"), stroke: 2pt + rgb("#2563eb"), radius: 6pt, width: 100%, inset: 12pt)[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[FAST Assessment]
    #v(4pt)
    #set text(size: 11pt)
    #strong[F]ace: Ask child to smile -- check for drooping/asymmetry \
    #strong[A]rms: Ask child to raise both arms -- check if one drifts down \
    #strong[S]peech: Ask child to repeat a phrase -- check for slurring \
    #strong[T]ime: Note exact time symptoms began \
    #v(4pt)
    #text(size: 9pt, fill: rgb("#6b7280"))[Note: FAST is not validated for the paediatric population and may miss atypical presentations.]
  ]
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Response Steps (1--7)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[APPLY] FAST assessment. \
      Also check for atypical signs: \
      seizures, headache with vomiting, \
      sudden behavioural changes.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[In children, stroke may \
      present differently. \
      Seizures at onset, \
      gradual symptoms, \
      irritability in young \
      children.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* #action[CALL] 101 immediately. \
      State: suspect child stroke.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 3:* #action[NOTE] exact time \
      symptoms began. Critical for \
      treatment decisions. \
      Alteplase: within 4.5 hrs. \
      Clot removal: within 6--24 hrs.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 4:* Is the child conscious?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 3), align(center)[
      Lay down with head \
      and shoulders slightly \
      elevated. Keep calm/still.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),
    node((-1, 3), align(center)[
      *Step 5:* Breathing? \
      Yes: recovery position. \
      No: #action[BEGIN] CPR.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 6:* Is the child \
      having a seizure?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 4), align(center)[
      Clear area. Do NOT \
      restrain. Do NOT insert \
      anything in mouth. \
      After: recovery position. \
      Note duration/type.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),
    node((-1, 4), align(center)[
      Continue monitoring.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    node((0, 5), align(center)[
      *Step 7:* #action[MONITOR] continuously \
      until EMS arrives. Watch for \
      changes in consciousness, \
      breathing, symptoms. Be ready \
      for CPR.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),
  )
]

#v(10pt)

#do-not-box((
  "Do NOT delay calling 101 to wait and see if symptoms resolve.",
  "Do NOT give any food or drink -- stroke impairs swallowing, risk of aspiration.",
  "Do NOT give any medications, especially not aspirin -- if haemorrhagic, aspirin will worsen it.",
  "Do NOT attempt to drive to hospital -- MDA ambulances begin treatment en route.",
  "Do NOT assume a child cannot have a stroke -- children can have strokes at any age.",
  "Do NOT restrain the child during a seizure.",
  "Do NOT put anything in the child's mouth during a seizure.",
  "Do NOT rely solely on FAST -- adult screening tools are not validated for children.",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA Stroke Recognition Protocol (FAST); AHA 2024/2026 \
  #strong[URL:] https://www.mdais.org/101/stroke \
  #strong[Publication date:] 2024-11-18 · #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Treatment windows: alteplase ~4.5 hrs (ages 28 days--18 yrs), mechanical clot removal 6--24 hrs (age 6+).
]
