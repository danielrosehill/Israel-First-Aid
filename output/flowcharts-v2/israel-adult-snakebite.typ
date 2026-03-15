// Israel Adult Snakebite Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-SNAKEBITE-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-SNAKEBITE-001"
#let protocol-title = "Snakebite — Adult"
#let protocol-subject = "SNAKEBITE"
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

#let warning-box(content) = {
  keep-together[
    #rect(
      fill: clr-warning-fill,
      stroke: 2pt + clr-warning,
      radius: 4pt,
      width: 100%,
      inset: 8pt,
    )[
      #text(fill: clr-warning, weight: "bold", size: 10pt)[WARNING: #content]
    ]
  ]
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
// PAGE 1: Title, Emergency Numbers, Steps 1-5
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
    CALL #emergency-number (#emergency-service) — CALL IMMEDIATELY
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

// --- When to Apply ---
#when-to-apply[
  Person has been bitten or suspected bitten by a snake. Signs include: puncture marks on skin, pain and swelling at bite site, redness or bruising around the wound. May progress to nausea, vomiting, abdominal pain, tachycardia, hypotension, difficulty breathing, or altered consciousness.
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
  Immobilise the victim and bitten limb, call 101 immediately, clean wound with soap and water only, monitor for systemic reaction, and transport to hospital for evaluation and possible antivenom.
]

#v(8pt)

// --- Initial Response: Steps 1-5 ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Initial Response]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Call 101
    node((0, 0), align(center)[
      *Step 1:* #action[CALL] 101 (MDA) \
      immediately. MDA will provide \
      phone guidance until arrival.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 2: Keep calm
    node((0, 1), align(center)[
      *Step 2:* #action[KEEP] victim calm \
      and completely still. \
      Have them lie down. \
      Immobility slows venom spread.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 3: Immobilise limb
    node((0, 2), align(center)[
      *Step 3:* #action[IMMOBILISE] bitten limb. \
      Position below heart level. \
      Splint against the body.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 4: Remove constrictive items
    node((0, 3), align(center)[
      *Step 4:* #action[REMOVE] jewellery, \
      watches, rings, tight clothing \
      from bite area and limb.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Swelling can progress \
      rapidly. Remove all \
      constrictive items \
      as early as possible.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    // Step 5: Clean wound
    node((0, 4), align(center)[
      *Step 5:* #action[CLEAN] bite wound \
      with soap and water only. \
      Do NOT use alcohol-based \
      disinfectants.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning for step 5
    node((-1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT use alcohol- \
      based disinfectants \
      on the bite wound.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]


// ============================================================
// PAGE 2: Identification and Monitoring — Steps 6-8
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Identification and Monitoring]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 6: Identify snake
    node((0, 0), align(center)[
      *Step 6:* #action[IDENTIFY] the snake \
      if it can be done safely. \
      Do NOT approach or catch it.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: can photograph safely?
    node((0, 1), align(center)[
      *Can the snake be safely* \
      *photographed from at* \
      *least 2 metres away?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> photograph
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[PHOTOGRAPH] snake. \
      Note colour, pattern, \
      size. Share with \
      arriving paramedics.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> note details
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Do not approach. \
      Note any observed \
      details (colour, size, \
      head shape). Report \
      to paramedics.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 7: Monitor
    node((0, 2), align(center)[
      *Step 7:* #action[MONITOR] for systemic \
      reaction or anaphylaxis. \
      Watch for: difficulty breathing, \
      spreading swelling, rash, nausea, \
      changes in consciousness.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: severe reaction?
    node((0, 3), align(center)[
      *Severe systemic reaction?* \
      *(breathing difficulty, altered* \
      *consciousness, hypotension)*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> escalate
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      #action[REPORT] to MDA \
      dispatch immediately. \
      Prepare to manage \
      airway. If breathing \
      stops, begin CPR. \
      Legs elevated if \
      blood pressure drops.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> continue monitoring
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Continue monitoring. \
      Keep victim calm \
      and still. Await \
      paramedic arrival.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 8: Hospital transport
    node((0, 4), align(center)[
      *Step 8:* #action[WAIT] for MDA and \
      prepare for hospital transport. \
      Hospital evaluation and possible \
      antivenom administration required.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: remote location?
    node((0, 5), align(center)[
      *Is the victim in a remote* \
      *location with delayed* \
      *MDA response?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> transport
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      Begin moving to \
      nearest hospital. \
      Keep victim immobile, \
      limb below heart. \
      Maintain phone contact \
      with MDA dispatch.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> wait
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Wait for MDA. \
      Do not move the \
      victim unnecessarily.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]


// ============================================================
// PAGE 3: DO NOT List, Equipment, Israel Species Info, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- Israel Venomous Snakes ---
#keep-together[
  #rect(
    fill: rgb("#eff6ff"),
    stroke: 2pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 12pt,
  )[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Dangerous Venomous Snakes in Israel]
    #v(6pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 8pt,
      [#strong[Daboia palaestinae] \ (Palestine viper) \ Antivenom: available],
      [#strong[Echis coloratus] \ (Painted saw-scaled viper) \ Antivenom: available],
      [#strong[Atractaspis engaddensis] \ (Israeli mole viper) \ Antivenom: NONE],
    )
    #v(4pt)
    #text(size: 9pt, fill: rgb("#6b7280"))[Peak snakebite season: spring/summer. Poison Center: 04-7771900]
  ]
]

#v(10pt)

// --- DO NOT List ---
#do-not-box((
  "Do NOT apply a tourniquet -- it traps venom locally and causes severe tissue damage.",
  "Do NOT suck the venom out of the wound -- this is ineffective and dangerous.",
  "Do NOT cut or incise the bite area -- this increases infection risk and does not help remove venom.",
  "Do NOT cool or apply ice to the bite area -- this can worsen tissue damage.",
  "Do NOT give the victim food or drink -- this may complicate hospital treatment.",
  "Do NOT induce vomiting.",
  "Do NOT give aspirin, ibuprofen, or naproxen -- these can worsen bleeding because viper venom is often anticoagulant.",
  "Do NOT use alcohol-based disinfectants on the wound.",
  "Do NOT attempt to catch or kill the snake -- snakes are protected under Israeli law and approaching them risks additional bites.",
  "Do NOT allow the victim to walk or move the bitten limb -- movement accelerates venom circulation.",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "Splint or improvised immobilisation material",
  "Soap and clean water for wound cleaning",
  "Phone or camera to photograph the snake",
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
  #strong[Source:] Magen David Adom (MDA) — "How to Treat a Snake Bite -- MDA 101 Public First Aid Guidance Series; corroborated by Israeli Ministry of Health guidelines" \
  #strong[URL:] https://www.mdais.org/101/snake-bite \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Israel Poison Information Center 24/7 hotline: 04-7771900.
]
