// Israel Adult AED Operation Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA) — AHA 2025 Guidelines
// Protocol ID: IL-ADULT-AED-OPERATION-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-AED-OPERATION-001"
#let protocol-title = "AED Operation (Automated External Defibrillator) — Adult"
#let protocol-subject = "AED OPERATION"
#let age-group = "ADULT"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2025-01-01"
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
// PAGE 1: Title, Confirm Arrest, CPR, Locate AED (Steps 1-5)
// ============================================================

#align(center)[
  #text(size: 20pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[#country — #age-group]
]
#v(6pt)
#rect(fill: rgb("#dc2626"), radius: 6pt, width: 100%, inset: 10pt)[
  #set text(fill: white, weight: "bold", size: 16pt)
  #align(center)[CALL #emergency-number (#emergency-service) — EVERY MINUTE OF DELAY REDUCES SURVIVAL BY 7--10%]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

#when-to-apply[
  An adult (age 8+) is found unresponsive, not breathing normally (absent breathing or only gasping/agonal breathing), and suspected to be in cardiac arrest.
]

#v(8pt)

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Confirm Cardiac Arrest and Begin CPR]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Confirm arrest
    node((0, 0), align(center)[
      *Step 1:* #action[CONFIRM] cardiac arrest. \
      Check responsiveness (call out, \
      shake shoulders). Check breathing \
      (max 10 seconds). Gasping is \
      NOT normal breathing.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: unresponsive and not breathing?
    node((0, 1), align(center)[
      *Unresponsive and not* \
      *breathing normally?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Proceed to *Step 2:* \
      Call 101 and begin \
      emergency response.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Do NOT apply AED. \
      If unconscious but \
      breathing: recovery \
      position. Call 101.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 2: Call 101
    node((0, 2), align(center)[
      *Step 2:* #action[CALL] 101 immediately. \
      Speakerphone. MDA provides \
      real-time CPR/AED coaching \
      and can unlock smart stands.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Begin CPR
    node((0, 3), align(center)[
      *Step 3:* #action[BEGIN] CPR immediately. \
      100--120 compressions/min, \
      5--6 cm depth, full recoil. \
      30:2 ratio if trained.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: helper available?
    node((0, 4), align(center)[
      *Is another person available* \
      *to retrieve the AED?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      #action[SEND] them to retrieve \
      nearest AED. You continue \
      CPR without interruption.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      If AED is seconds away, \
      retrieve quickly. Otherwise \
      continue CPR until \
      help arrives.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 4-5: Locate and open AED
    node((0, 5), align(center)[
      *Step 4-5:* #action[LOCATE] AED \
      (Eifo-Defi app, call 101 to \
      unlock smart stands). \
      #action[OPEN] cover -- device \
      provides voice instructions.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: Prepare Chest, Apply Pads, Analyse, Shock (Steps 6-9)
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[AED Application and Shock Delivery]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 6: Prepare chest
    node((0, 0), align(center)[
      *Step 6:* #action[PREPARE] chest: \
      expose bare chest, ensure dry. \
      Remove medication patches. \
      Shave excessive hair.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 7: Apply pads
    node((0, 1), align(center)[
      *Step 7:* #action[APPLY] electrode pads: \
      Pad 1: below right collarbone. \
      Pad 2: left side below armpit. \
      Follow diagrams on pads.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 8: Analyse
    node((0, 2), align(center)[
      *Step 8:* AED analyses rhythm. \
      #action[STOP] CPR. Ensure nobody \
      is touching the patient.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 2), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT touch patient \
      during analysis. Any \
      contact may produce \
      inaccurate results.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: shock advised?
    node((0, 3), align(center)[
      *Does the AED advise a shock?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      Proceed to *Step 9:* \
      deliver shock.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Rhythm not shockable. \
      #action[RESUME] CPR immediately. \
      AED re-analyses after \
      2 minutes.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 9: Deliver shock
    node((0, 4), align(center)[
      *Step 9:* Ensure all clear. \
      Call out "Hitrachku!" \
      (Stand clear!) \
      #action[PRESS] shock button.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Visually confirm nobody \
      is in contact with \
      the patient before \
      pressing shock button.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 4), (0, 5), "->"),

    // Step 10: Resume CPR
    node((0, 5), align(center)[
      *Step 10:* #action[RESUME] CPR \
      immediately after shock. \
      Continue for 2 minutes \
      (~5 cycles of 30:2).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: Cycles, Continuation (Steps 11-12), DO NOT, Equipment
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR/AED Cycles and Continuation]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 11: Re-analyse
    node((0, 0), align(center)[
      *Step 11:* After 2 min of CPR, \
      AED re-analyses. #action[STOP] CPR. \
      Ensure nobody touches patient. \
      Follow prompts (shock if advised, \
      then resume CPR).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 12: Continue
    node((0, 1), align(center)[
      *Step 12:* #action[CONTINUE] CPR and \
      AED cycles until: MDA arrives, \
      person shows signs of life, \
      or you are unable to continue.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: signs of life?
    node((0, 2), align(center)[
      *Does the person show signs* \
      *of life (breathing, movement)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      #action[STOP] CPR. Recovery \
      position. Keep AED pads \
      attached and device on. \
      Monitor until MDA arrives.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      #action[CONTINUE] CPR and \
      AED cycles without \
      stopping.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(6pt)

// Key parameters
#keep-together[
  #rect(fill: rgb("#eff6ff"), stroke: 2pt + rgb("#2563eb"), radius: 6pt, width: 100%, inset: 12pt)[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Key AED Parameters]
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: 8pt,
      [#strong[Compression rate:] 100--120 / min],
      [#strong[Compression depth:] 5--6 cm],
      [#strong[CPR cycle:] 2 min (~5 cycles of 30:2)],
      [#strong[AED re-analysis:] Every 2 minutes],
      [#strong[Pad 1:] Below right collarbone],
      [#strong[Pad 2:] Left side below armpit],
      [#strong[Emergency number:] 101 (MDA)],
      [#strong[AED locator:] Eifo-Defi app],
    )
  ]
]

#v(10pt)

#do-not-box((
  "Do NOT use the AED on a person who is conscious and breathing normally.",
  "Do NOT apply pads while the person is in water -- move to dry ground first.",
  "Do NOT use near flammable gases or oxygen-enriched atmospheres.",
  "Do NOT place pads directly over a pacemaker -- place at least 2.5 cm away.",
  "Do NOT place pads over medication patches -- remove and wipe skin first.",
  "Do NOT touch the patient during rhythm analysis or shock delivery.",
  "Do NOT turn off the AED or disconnect pads, even if the person regains consciousness.",
  "Do NOT delay defibrillation -- survival decreases by 7--10% per minute of delay.",
  "Do NOT interrupt compressions for more than 10 seconds for any reason.",
  "Do NOT allow pads to touch or overlap each other.",
))

#v(10pt)

#equipment-box((
  "AED (from MDA smart stands, public locations, or Eifo-Defi app locator)",
  "Razor (for shaving chest hair -- often included in AED kits)",
  "Towel or cloth (for drying the chest)",
  "Scissors (for cutting away clothing -- often included in AED kits)",
  "Phone (to call 101 and use speakerphone for dispatcher-guided CPR/AED use)",
))

#v(10pt)

#rect(fill: rgb("#f9fafb"), stroke: 0.5pt + rgb("#d1d5db"), radius: 4pt, width: 100%, inset: 10pt)[
  #set text(size: 8pt, fill: rgb("#6b7280"))
  #strong[Source:] Magen David Adom (MDA) — MDA AED Operation Protocol, AHA 2025 Guidelines \
  #strong[URL:] https://www.mdais.org/kursim/defibrillator \
  #strong[Publication date:] 2025-01-01 · #strong[Edition:] AHA 2025 Guidelines \
  #strong[Imported:] 2026-03-16 · #strong[Last verified:] 2026-03-16 \
  #strong[Notes:] Israeli AED law (2008): public spaces with 500+ daily visitors must have an AED. Eifo-Defi app locates nearest AED. MDA smart stands: call 101 to remotely unlock.
]
