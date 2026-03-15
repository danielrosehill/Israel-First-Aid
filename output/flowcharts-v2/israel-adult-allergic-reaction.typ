// Israel Adult Anaphylaxis Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-ALLERGIC-REACTION-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-ALLERGIC-REACTION-001"
#let protocol-title = "Anaphylaxis / Allergic Reaction — Adult"
#let protocol-subject = "ANAPHYLAXIS"
#let age-group = "ADULT"
#let country = "Israel"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom"
#let source-date = "2024-04-01"
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
// PAGE 1: Title, Assessment, Steps 1-4
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
    CALL #emergency-number (#emergency-service) — CALL IMMEDIATELY IF IN DOUBT
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

// --- When to Apply ---
#when-to-apply[
  Severe allergic reaction with involvement of breathing, circulation, or consciousness. High probability when: acute onset with skin/mucosal involvement plus respiratory compromise or hypotension; or two or more of skin symptoms, respiratory compromise, hypotension, persistent GI symptoms after allergen exposure.
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
  Recognition and first aid treatment of anaphylaxis in adults, including EpiPen administration and monitoring until EMS arrival.
]

#v(8pt)

// --- Recognition and Initial Steps ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Recognition and Initial Response]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Recognise
    node((0, 0), align(center)[
      *Step 1:* #action[CHECK] for signs \
      of severe allergic reaction. \
      Skin: rash, hives, swelling \
      Breathing: wheeze, stridor \
      Circulation: weak pulse, pallor \
      GI: nausea, vomiting
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: anaphylaxis?
    node((0, 1), align(center)[
      *Signs of anaphylaxis?* \
      (breathing difficulty, \
      circulatory compromise, \
      altered consciousness)
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> call 101
    edge((0, 1), (0, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    // NO -> monitor
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 1), align(center)[
      #action[MONITOR] for worsening. \
      Mild skin reaction only: \
      observe closely. \
      #action[CALL] 101 if worsens.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    // Step 2: Call 101
    node((0, 2), align(center)[
      *Step 2:* #action[CALL] 101 (MDA) \
      immediately. Speaker mode. \
      #action[FOLLOW] dispatcher \
      instructions.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Remove allergen
    node((0, 3), align(center)[
      *Step 3:* #action[REMOVE] the \
      offending agent if possible. \
      Scrape bee stinger sideways. \
      Stop infusion/medication.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 4: Manage airway
    node((0, 4), align(center)[
      *Step 4:* Manage the airway. \
      #action[OPEN] airway, clear debris. \
      #action[LOOSEN] tight clothing \
      around neck and chest.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Airway swelling can \
      progress rapidly. \
      Continuous monitoring \
      is essential.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]

// ============================================================
// PAGE 2: Positioning, EpiPen, Reassessment (Steps 5-9)
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Positioning and Epinephrine]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 5: Position
    node((0, 0), align(center)[
      *Is the patient conscious?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> position based on symptoms
    edge((0, 0), (1, 0), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 0), align(center)[
      Breathing difficulty: \
      sit upright. \
      Hypotension/shock: \
      #action[POSITION] supine, \
      #action[ELEVATE] legs.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> assess breathing
    edge((0, 0), (0, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    // Step 6: Unconscious
    node((0, 1), align(center)[
      *Is the unconscious* \
      *patient breathing?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> recovery
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[PLACE] in recovery \
      position. Continue \
      to #action[MONITOR] \
      breathing.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> CPR
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      #action[BEGIN] CPR \
      immediately. \
      Continue until \
      EMS arrives.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 7: EpiPen
    node((0, 2), align(center)[
      *Is an EpiPen available?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> administer
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      *Step 7:* #action[ADMINISTER] EpiPen: \
      Remove blue cap. \
      Orange tip to outer thigh. \
      Jab firmly (through clothing). \
      Hold 10 seconds. \
      Massage site 10 seconds.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> wait
    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      Maintain airway \
      and positioning. \
      Inform 101 dispatcher: \
      no EpiPen available. \
      Wait for EMS.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    // Warning about epinephrine
    node((0, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[CRITICAL] \
      #text(size: 8pt)[Over 50% of anaphylaxis deaths \
      occur within the first 60 minutes. \
      Do NOT delay epinephrine.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 60mm, inset: 6pt),

    edge((0, 2), (0, 4), "->"),

    // Step 8: Reassess
    node((0, 4), align(center)[
      *Step 8:* Reassess after 5 minutes. \
      #action[CHECK] airway, breathing, \
      circulation, consciousness.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: improved?
    node((0, 5), align(center)[
      *Has the patient's condition* \
      *improved after 5 minutes?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> monitor
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      Continue monitoring. \
      Effects last ~20 min. \
      Symptoms may recur \
      (biphasic reaction).
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> second dose
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      #action[ADMINISTER] 2nd dose \
      if available. \
      Continue monitoring.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(6pt)

// Step 9: Continuous monitoring
#keep-together[
  #rect(
    fill: clr-step,
    stroke: 1pt + clr-step-stroke,
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    *Step 9:* #action[MONITOR] continuously until EMS arrives. Be prepared to #action[BEGIN] CPR if patient loses consciousness and stops breathing. All patients with suspected anaphylaxis require hospital evaluation, even if symptoms fully resolve.
  ]
]

#v(4pt)

#keep-together[
  #rect(
    fill: clr-warning-fill,
    stroke: 2pt + clr-warning,
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: clr-warning, weight: "bold", size: 10pt)[WARNING:] Biphasic reactions can occur hours after the initial event. Hospital observation is mandatory.
  ]
]

// ============================================================
// PAGE 3: DO NOT, Equipment, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- DO NOT List ---
#do-not-box((
  "Do not delay calling 101 -- anaphylaxis is a life-threatening emergency.",
  "Do not delay epinephrine administration if anaphylaxis is suspected. Epinephrine is the only effective first-line treatment.",
  "Do not substitute antihistamines (e.g., diphenhydramine) for epinephrine. Antihistamines are not effective against anaphylaxis.",
  "Do not make the patient stand or sit up suddenly if they are hypotensive -- this can cause cardiac arrest.",
  "Do not leave the patient unattended after epinephrine administration -- symptoms may recur.",
  "Do not assume the patient is safe after symptoms resolve -- all suspected anaphylaxis requires hospital evaluation.",
  "Do not waste time removing clothing before injecting the EpiPen -- it can be administered through trousers.",
  "Do not administer the EpiPen into a vein -- it is an intramuscular injection into the outer thigh only.",
  "Do not give food or drink to a patient experiencing anaphylaxis.",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "Epinephrine auto-injector (EpiPen) -- adult 0.3 mg",
  "Phone to call MDA at 101",
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
  #strong[Source:] Magen David Adom (MDA) — "MDA First Aid Guidance on Allergies and ALS Protocol (April 2024); Israeli Ministry of Health Anaphylaxis Guidance" \
  #strong[URL:] https://www.mdais.org/101/allergy \
  #strong[Publication date:] 2024-04-01 · #strong[Edition:] ALS Manual April 2024 \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Both protocols are substantially aligned on Sampson diagnostic criteria and EpiPen technique. MDA is used as the authoritative default per project rules.
]
