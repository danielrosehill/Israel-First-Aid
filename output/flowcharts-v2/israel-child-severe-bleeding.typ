// Israel Child Severe Bleeding Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-CHILD-SEVERE-BLEEDING-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-CHILD-SEVERE-BLEEDING-001"
#let protocol-title = "Severe Bleeding (Hemorrhage Control) — Child"
#let protocol-subject = "SEVERE BLEEDING"
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
      [#strong[MDA:] 101], [#strong[Police:] 100], [#strong[Fire:] 102], [#strong[Hatzalah:] 1221], [#strong[Poison:] 04-7771900])
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
  #align(center)[CALL #emergency-number (#emergency-service) IMMEDIATELY]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  Severe or uncontrolled external bleeding in a child (~1--12 years). Children have significantly smaller blood volumes (a 3-year-old has only ~1,200 mL total) -- what appears moderate in an adult may be life-threatening in a child.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Initial Response (Steps 1--5)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 1:* #action[ENSURE] scene safety. \
      Wear gloves if available. \
      Involve parent/caregiver.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Step 2:* #action[CALL] 101 immediately. \
      State child's age and weight. \
      Children deteriorate faster.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    node((0, 2), align(center)[
      *Step 3:* #action[CALM] the child. \
      Speak softly, involve parent. \
      Shield from sight of blood.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Step 4:* #action[CHECK] for embedded objects.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    node((0, 4), align(center)[
      *Is there an embedded or* \
      *impaled object in the wound?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      Do NOT remove it. \
      #action[STABILISE] with padding. \
      Apply pressure AROUND \
      it, not on it. \
      Skip to shock monitoring.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((0, 5), align(center)[
      *Step 5:* #action[APPLY] strong direct \
      pressure to the wound \
      with gloved hand or gauze. \
      Maintain continuous pressure.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Escalation
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Escalation (Steps 6--11)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 6:* If dressing soaks through, \
      #action[ADD] layers on top. \
      Never remove original dressing.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Has direct pressure* \
      *controlled the bleeding?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Maintain pressure. \
      #action[ELEVATE] limb if possible. \
      Monitor for shock.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((0, 2), align(center)[
      *Step 8:* #action[APPLY] Israeli Emergency \
      Bandage (pressure dressing). \
      Verify distal pulse after.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Elastic can occlude \
      arteries in small limbs. \
      Check for warmth, colour, \
      pulse below bandage.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    node((0, 3), align(center)[
      *Has the Israeli bandage* \
      *controlled the bleeding?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Maintain dressing. \
      Monitor for shock.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((0, 4), align(center)[
      *Step 9:* #action[ESCALATE] -- \
      is wound on a limb?
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      *Step 11:* #action[APPLY] tourniquet \
      5--10 cm above wound. \
      Tighten until bleeding stops. \
      Record time (e.g. TQ 1430).
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      *Step 10:* Junctional wound \
      (groin/neck/axilla). \
      #action[PACK] wound with gauze \
      in sunburst pattern. \
      Apply pressure 1--2 min.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),
  )
]

#v(8pt)

#keep-together[
  #rect(fill: rgb("#eff6ff"), stroke: 2pt + rgb("#2563eb"), radius: 6pt, width: 100%, inset: 12pt)[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 11pt)[Tourniquet by Age]
    #v(4pt)
    #set text(size: 9pt)
    #strong[Age 2+, limb circumference 13 cm+:] CAT Gen 7 tourniquet. \
    #strong[Age 6+, limb circumference 16 cm+:] Reliable upper and lower extremity. \
    #strong[Under age 2:] No evidence for manufactured tourniquets. Use sustained direct pressure.
  ]
]

// ============================================================
// PAGE 3: Shock Monitoring, DO NOT, Equipment
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Shock Monitoring (Step 12)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    node((0, 0), align(center)[
      *Step 12:* #action[MONITOR] for shock. \
      Tachycardia is earliest sign. \
      Also: pale/cool/mottled skin, \
      rapid breathing, confusion.
    ], shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke, width: 60mm, inset: 8pt),

    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Hypotension is a LATE \
      sign in children. \
      Children compensate \
      then decompensate \
      rapidly.]
    ], shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning, width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    node((0, 1), align(center)[
      *Is the child showing* \
      *signs of shock?*
    ], shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke, width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[LAY] child down. \
      Elevate legs (if conscious). \
      Recovery position (if not). \
      Cover with blanket. \
      Moisten lips only. \
      Update 101 dispatcher.
    ], shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes, width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Continue monitoring. \
      Keep child warm, calm. \
      Reassess frequently -- \
      sudden decompensation \
      is possible.
    ], shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no, width: 48mm, inset: 8pt),
  )
]

#v(10pt)

#do-not-box((
  "Do not remove an embedded or impaled object from the wound.",
  "Do not lift or remove a blood-soaked dressing -- add layers on top.",
  "Do not remove or loosen a tourniquet once applied unless instructed by a paramedic or physician.",
  "Do not loosen a tourniquet because the child is screaming -- pain is expected.",
  "Do not give food or drink to a child with severe bleeding or suspected shock.",
  "Do not use wound packing for penetrating stab wounds.",
  "Do not enlarge wound openings to facilitate wound packing.",
  "Do not assume tachycardia is caused only by anxiety -- suspect significant blood loss.",
  "Do not wait for hypotension to suspect shock -- it is a late, pre-arrest sign.",
  "Do not delay calling 101 for severe or uncontrolled bleeding.",
  "Do not apply a tourniquet directly over a joint.",
  "Do not attempt a manufactured tourniquet on a child under 2 years -- use direct pressure.",
))

#v(10pt)

#equipment-box((
  "Disposable gloves",
  "Sterile gauze or clean cloth",
  "Israeli Emergency Bandage (pressure dressing)",
  "Tourniquet (CAT Gen 7 -- for children aged 2+ with limb circumference 13 cm+)",
  "Wound packing material (hemostatic gauze preferred)",
  "Blanket or coat (for shock management and warmth)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA 101 First Aid Public Guidance (Bleeding Control) \
  #strong[URL:] https://www.mdais.org/101/first-aid \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah. Children have 80--90 mL/kg blood volume but much smaller total volume. Compensate longer, then decompensate rapidly.
]
