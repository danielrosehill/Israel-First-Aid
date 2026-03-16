// Israel Child Fractures Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-FRACTURES-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

#let protocol-id = "IL-CHILD-FRACTURES-001"
#let protocol-title = "Fractures and Sprains — Child"
#let protocol-subject = "FRACTURES"
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
  #align(center)[CALL #emergency-number FOR OPEN FRACTURES, SPINAL INJURY, OR SEVERE DEFORMITY]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Suspected fracture or sprain: severe pain worsening with movement, visible swelling/bruising, limb deformity, inability to move or bear weight, tenderness, audible snap at injury. In young children: sudden refusal to use arm/leg, inconsolable crying. Note: sprains in children may actually be growth plate fractures.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Assessment (Steps 1--4)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[CALM] the child. \
      Speak at eye level. Explain \
      simply. Use distraction. \
      Involve parent/caregiver.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* #action[ASSESS] injury severity.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Is bone visible through skin* \
      *(open/compound fracture)?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 2), align(center)[
      Medical emergency. \
      #action[CALL] 101 immediately. \
      Go to Step 8 (open \
      fracture management).
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((0, 3), align(center)[
      *Step 3:* #action[CALL] 101 if emergency \
      criteria met (open fracture, \
      spinal injury, severe deformity, \
      loss of sensation/circulation).
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Suspected spinal or* \
      *neck injury?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 4), align(center)[
      Do NOT move the child. \
      #action[CALL] 101 immediately. \
      Hold head steady. \
      Wait for professionals.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),

    node((0, 5), align(center)[
      *Step 4:* Do NOT move or \
      #action[REALIGN] the injury. \
      Never straighten, pull, or \
      push a bone back into place.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 5), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Realigning can damage \
      arteries, nerves, and \
      growth plates -- \
      potentially affecting \
      future bone development.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),
  )
]

// ============================================================
// PAGE 2: Immobilisation, Cold, Open Fracture
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Immobilisation and Treatment (Steps 5--9)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 5:* #action[IMMOBILISE] the injury. \
      "Minimum movement, \
      maximum stability."
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Arm or leg?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[ARM], label-side: center),
    node((-1, 1), align(center)[
      Improvised sling from \
      shirt/scarf/fabric. \
      Tie around neck. \
      Secure to chest.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[LEG], label-side: center),
    node((1, 1), align(center)[
      Pad both sides with \
      pillows/blankets. \
      Bandage injured leg \
      to healthy leg. \
      Hip: do NOT move, \
      call for ambulance.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 6:* Improvised splint: must \
      extend beyond joints above \
      and below fracture. Pad with \
      soft material. Check circulation.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Check fingers/toes below \
      splint for warmth, colour, \
      sensation. If blue, cold, \
      or numb: loosen immediately.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 7:* #action[APPLY] cold compress. \
      Ice pack wrapped in towel. \
      15 min on, 15 min off. \
      Never ice directly on skin.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Step 8:* Open fracture: #action[CONTROL] \
      bleeding through indirect \
      pressure AROUND the wound. \
      #action[COVER] exposed bone \
      with sterile dressing. Do NOT \
      push bone back in.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    node((0, 5), align(center)[
      *Severe uncontrollable bleeding?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 5), align(center)[
      Apply tourniquet if \
      available. Contact 101 \
      dispatcher.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),
    node((-1, 5), align(center)[
      Continue indirect pressure. \
      Cover wound. Keep \
      immobilised.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    node((0, 6), align(center)[
      *Step 9:* #action[REMOVE] constrictive \
      items (jewellery, watches, shoes) \
      before swelling occurs.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: Shock Prevention, DO NOT, Equipment
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Shock Prevention and Monitoring (Steps 10--12)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 10:* #action[PREVENT] shock. \
      Keep child warm with blanket. \
      Keep lying down if possible.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Spinal injury suspected* \
      *or child vomiting?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES], label-side: center),
    node((1, 1), align(center)[
      Do NOT elevate legs. \
      Keep in position found \
      (spinal) or on side \
      (vomiting).
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO], label-side: center),
    node((-1, 1), align(center)[
      Elevate legs slightly. \
      Continue monitoring.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 11:* Do NOT give food or drink. \
      Surgery may be needed. \
      #action[MOISTEN] lips if thirsty.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 12:* #action[MONITOR] until EMS \
      arrives or reach hospital. \
      Watch for shock signs \
      (pale skin, rapid breathing, \
      confusion). Keep immobilised.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),
  )
]

#v(10pt)

#do-not-box((
  "Do NOT attempt to straighten, pull, or realign a broken bone -- damages arteries, nerves, growth plates.",
  "Do NOT move the child unnecessarily, especially if spinal injury suspected.",
  "Do NOT apply heat to the injury (no hot compresses, no warm water).",
  "Do NOT apply ice directly to the child's skin -- always wrap in cloth.",
  "Do NOT tie splints or bandages too tightly -- monitor circulation below.",
  "Do NOT allow the child to bear weight on an injured leg.",
  "Do NOT remove clothing by pulling over the injury -- cut it away.",
  "Do NOT give aspirin to children (Reye's syndrome risk) -- use paracetamol or ibuprofen.",
  "Do NOT push a protruding bone back into the wound.",
  "Do NOT give the child food or drink -- surgery may be required.",
))

#v(10pt)

#equipment-box((
  "Improvised sling material (shirt, scarf, triangular bandage)",
  "Improvised splint (cardboard, newspapers, rulers, rigid material)",
  "Padding (clothing, towels, blankets) for splint and leg immobilisation",
  "Ice pack or cold compress (or frozen vegetables) + cloth for wrapping",
  "Sterile dressings or clean cloth (for open fractures)",
  "Bandages or fabric strips for securing splints",
  "Blanket for warmth and shock prevention",
  "Tourniquet (for severe uncontrollable bleeding, if available)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA 101 Public First Aid Guidance Series \
  #strong[URL:] https://www.mdais.org/101/first-aid \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] MDA principle: "Minimum movement, maximum stability." What appears to be a sprain in a child may be a growth plate fracture. All suspected sprains should be evaluated by a doctor.
]
