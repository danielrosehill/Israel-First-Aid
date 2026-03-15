// Israel Adult Poisoning Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-POISONING-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-POISONING-001"
#let protocol-title = "Poisoning — Adult"
#let protocol-subject = "POISONING"
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
// PAGE 1: Title, Scene Safety, Initial Steps 1-5
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
  #set text(fill: white, weight: "bold", size: 14pt)
  #align(center)[
    CALL #emergency-number (#emergency-service) + Poison Center 04-7771900
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

// --- When to Apply ---
#when-to-apply[
  Suspected poisoning through any route: ingestion (medications, cleaning products, chemicals, plants), inhalation (carbon monoxide, chlorine gas, chemical fumes), skin or eye contact with hazardous chemicals, or injection (venomous bites/stings, IV drug use). Signs include nausea, vomiting, confusion, drowsiness, breathing difficulty, seizures, chemical burns, or loss of consciousness.
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
  Scene safety, call for help, identify route of exposure, provide route-specific first aid, preserve the substance, and monitor until emergency services arrive.
]

#v(8pt)

// --- Initial Response: Steps 1-5 ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Scene Safety and Ingestion Path]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Scene safety
    node((0, 0), align(center)[
      *Step 1:* #action[ENSURE] scene safety. \
      Protect yourself from \
      contamination. Do NOT enter \
      areas with toxic fumes.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT enter areas \
      with potential toxic \
      gas exposure. You \
      cannot help if you \
      become a casualty.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 2: Call
    node((0, 1), align(center)[
      *Step 2:* #action[CALL] 101 (MDA) and \
      Poison Center 04-7771900. \
      Provide: substance, amount, \
      time, age, symptoms, route.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 3: Preserve substance
    node((0, 2), align(center)[
      *Step 3:* #action[PRESERVE] the substance \
      container, packaging, or \
      remaining material. \
      Bring to hospital.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 4: Route determination
    node((0, 3), align(center)[
      *Step 4:* #action[DETERMINE] route \
      of exposure.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: ingested?
    node((0, 4), align(center)[
      *Was the poison ingested* \
      *(swallowed)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> ingestion path
    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      Go to Step 5: \
      ingestion treatment.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> check inhalation
    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Go to Step 7: \
      check inhalation.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 5: Ingestion - caustic check
    node((0, 5), align(center)[
      *Step 5:* For ingestion: \
      determine if caustic/corrosive.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 5), (0, 6), "->"),

    // Decision: caustic?
    node((0, 6), align(center)[
      *Was a caustic/corrosive* \
      *substance ingested?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> dilute
    edge((0, 6), (1, 6), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 6), align(center)[
      NEVER induce vomiting. \
      If conscious: give ~250ml \
      water or milk to dilute. \
      Go to Step 10.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> do not induce vomiting
    edge((0, 6), (-1, 6), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 6), align(center)[
      Do NOT induce vomiting \
      unless directed by \
      Poison Center. \
      No food or drink \
      unless directed. \
      Go to Step 10.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]


// ============================================================
// PAGE 2: Inhalation, Skin/Eye, Breathing — Steps 7-9
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Inhalation and Contact Exposure]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 7: Inhalation check
    node((0, 0), align(center)[
      *Step 7:* #action[CHECK] for \
      inhalation exposure.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: inhaled?
    node((0, 1), align(center)[
      *Was the poison inhaled* \
      *(toxic fumes, gases, CO)?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> fresh air
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[MOVE] patient to \
      fresh air immediately. \
      Do NOT enter area \
      yourself if toxic gas \
      risk. Go to Step 9.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> check skin/eye
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Go to Step 8: \
      check skin/eye contact.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    // Warning
    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Never mix bleach \
      (Economica) with other \
      cleaning products, \
      especially acids -- \
      releases toxic \
      chlorine gas.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 1), (0, 2), "->"),

    // Step 8: Skin/eye contact
    node((0, 2), align(center)[
      *Step 8:* #action[CHECK] for skin \
      or eye contact exposure.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: skin/eye?
    node((0, 3), align(center)[
      *Did the poison contact* \
      *the skin or eyes?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> flush
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      #action[REMOVE] contaminated \
      clothing. Skin: flush \
      with cool water 15--20 min. \
      Eyes: rinse 15+ min, \
      hold eyelids open. \
      Do NOT neutralise. \
      Go to Step 10.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> other route
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Exposure may be \
      through injection \
      (bites, stings, IV). \
      Go to Step 10.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 9: Inhalation breathing check
    node((0, 4), align(center)[
      *Step 9:* For inhalation: \
      #action[ASSESS] breathing \
      after moving to fresh air.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: breathing?
    node((0, 5), align(center)[
      *Is the patient breathing?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      Monitor breathing and \
      vital signs. Keep calm \
      and warm. Go to Step 10.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> CPR
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      #action[BEGIN] CPR \
      immediately. Continue \
      until EMS arrives.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]


// ============================================================
// PAGE 3: Consciousness Assessment, Recovery — Steps 10-13
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Consciousness Assessment and Monitoring]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 10: Consciousness
    node((0, 0), align(center)[
      *Step 10:* #action[ASSESS] patient's \
      level of consciousness.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: conscious?
    node((0, 1), align(center)[
      *Is the patient conscious?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> monitor
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Keep calm and warm. \
      #action[MONITOR] breathing, \
      pulse, consciousness. \
      Do not leave alone. \
      Wait for EMS.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> step 11
    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 11: Unconscious breathing check
    node((0, 2), align(center)[
      *Step 11:* Unconscious patient: \
      #action[CHECK] breathing.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Decision: breathing?
    node((0, 3), align(center)[
      *Is the unconscious* \
      *patient breathing?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> recovery
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      #action[PLACE] in recovery \
      position (on side) to \
      prevent aspiration. \
      Monitor breathing. \
      Go to Step 12.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> CPR
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      #action[BEGIN] CPR \
      immediately. Continue \
      until EMS arrives.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 12: Recovery position detail
    node((0, 4), align(center)[
      *Step 12:* Recovery position: \
      kneel beside patient, place \
      near arm at right angle, \
      bring far arm across chest, \
      pull far knee up, roll \
      towards you onto side. \
      Tilt head back for airway.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 13: Continue monitoring
    node((0, 5), align(center)[
      *Step 13:* #action[CONTINUE] monitoring \
      until EMS arrives. Watch \
      breathing and pulse. Be ready \
      for CPR. Keep warm and calm. \
      Provide substance info to \
      arriving medical team.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),
  )
]

#v(10pt)

// --- Step 6 note ---
#keep-together[
  #rect(
    fill: rgb("#eff6ff"),
    stroke: 1pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 10pt)[Step 6 Note — Activated Charcoal:]
    Do NOT give activated charcoal unless directed by medical professionals. It is effective only within 1--2 hours and only for certain substances. This is a medical-level intervention, not a first aid action.
  ]
]


// ============================================================
// PAGE 4: DO NOT List, Equipment, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- DO NOT List ---
#do-not-box((
  "Do NOT induce vomiting unless specifically directed by the Poison Information Center (04-7771900) or a physician.",
  "Do NOT give food or drink unless directed by medical professionals (exception: water or milk for conscious patients who ingested caustic substances).",
  "Do NOT attempt to neutralise the poison (e.g., giving acid for base ingestion or vice versa).",
  "Do NOT use home remedies (salt water, mustard, raw eggs, etc.).",
  "Do NOT give activated charcoal without medical direction.",
  "Do NOT enter a confined space with potential toxic fumes without proper protection.",
  "Do NOT delay calling for help -- even if symptoms appear mild, they can deteriorate rapidly.",
  "Do NOT administer antidotes -- this is a hospital-level intervention only.",
  "Do NOT leave the patient alone.",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "Gloves (to protect against contamination)",
  "Running water source (for skin or eye decontamination)",
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
  #strong[Source:] Magen David Adom (MDA) — "Poisoning First Aid Guidance -- MDA 101 Public First Aid Guidance Series; corroborated by Rambam National Poison Information Center guidance" \
  #strong[URL:] https://www.mdais.org/101/poisoningn \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Israel Poison Information Center: 04-7771900 (Rambam Health Care Campus, Haifa).
]
