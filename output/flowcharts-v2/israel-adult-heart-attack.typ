// Israel Adult Heart Attack Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-HEART-ATTACK-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-HEART-ATTACK-001"
#let protocol-title = "Heart Attack / Chest Pain — Adult"
#let protocol-subject = "HEART ATTACK"
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
  An adult presents with chest pain or pressure (tightness, squeezing, heaviness, or burning) lasting more than 15 minutes, possibly with radiating pain to arms, neck, jaw, back, or upper abdomen; shortness of breath; cold sweating; nausea; dizziness; or feeling of impending doom. Atypical presentations (especially in women) may include extreme fatigue, upper back pain, or symptoms resembling heartburn.
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
  First aid protocol for suspected heart attack in adults, following MDA guidelines with Israel-specific considerations.
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
      immediately. State you suspect \
      a heart attack. Stay on line. \
      Also call 1221 (Hatzalah).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 2: Stop activity
    node((0, 1), align(center)[
      *Step 2:* #action[STOP] all physical \
      activity. Patient must rest \
      completely. No walking.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 1), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Any physical activity, \
      even minor, can worsen \
      heart muscle damage.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 1), (0, 2), "->"),

    // Step 3: Position
    node((0, 2), align(center)[
      *Step 3:* #action[POSITION] patient \
      in half-sitting position \
      (semi-reclined), back supported, \
      knees slightly bent. \
      Loosen tight clothing.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 4: Aspirin allergy check
    node((0, 3), align(center)[
      *Step 4:* #action[ASK] patient about \
      aspirin allergy.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Decision: allergic to aspirin?
    node((0, 4), align(center)[
      *Is the patient allergic* \
      *to aspirin?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> no aspirin
    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      Do NOT give aspirin. \
      Inform MDA team \
      about the allergy. \
      Skip to Step 6.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> give aspirin
    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Proceed to Step 5: \
      #action[GIVE] aspirin.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 5: Aspirin
    node((0, 5), align(center)[
      *Step 5:* #action[GIVE] 100--300 mg \
      aspirin. Patient must CHEW \
      the tablet, not swallow whole. \
      #text(size: 8pt)[Israel: 100 mg Micro-Aspirin, give 1--3 tablets.]
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 5), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Paracetamol (Acamol) \
      is NOT a substitute. \
      Only aspirin provides \
      the antiplatelet effect.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
  )
]


// ============================================================
// PAGE 2: Steps 6-11 — Nitroglycerin, Monitoring, CPR
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Monitoring and Escalation]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 6: Nitroglycerin check
    node((0, 0), align(center)[
      *Step 6:* #action[CHECK] for patient's \
      prescribed nitroglycerin.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: has nitroglycerin?
    node((0, 1), align(center)[
      *Does patient have their* \
      *own prescribed nitroglycerin?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      #action[HELP] patient take \
      their nitroglycerin as \
      directed by physician.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Do NOT administer \
      nitroglycerin. \
      Proceed to Step 7.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 7: Monitor
    node((0, 2), align(center)[
      *Step 7:* #action[MONITOR] patient \
      continuously. Stay with them. \
      Watch consciousness, breathing, \
      skin colour.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 8: AED
    node((0, 3), align(center)[
      *Step 8:* Send someone to \
      #action[RETRIEVE] nearest AED. \
      Do not apply unless patient \
      becomes unresponsive.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 9: Consciousness check
    node((0, 4), align(center)[
      *Step 9:* If patient loses \
      consciousness, #action[CHECK] \
      responsiveness and breathing. \
      (Max 10 seconds)
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: unconscious and not breathing?
    node((0, 5), align(center)[
      *Is patient unconscious and* \
      *not breathing normally?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> CPR
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      #action[BEGIN] CPR immediately. \
      Go to Step 10.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> continue monitoring
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Continue monitoring. \
      Maintain half-sitting \
      position. Keep calm.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

#v(10pt)

// Steps 10-11: CPR and AED
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR and AED (if cardiac arrest)]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 10: CPR
    node((0, 0), align(center)[
      *Step 10:* #action[BEGIN] CPR. \
      Heel of hand centre of chest. \
      Compress 5+ cm, 100--120/min. \
      30:2 if trained, or \
      hands-only if not.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do not stop CPR until \
      MDA arrives, AED applied, \
      or patient regains \
      consciousness.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 0), (0, 1), "->"),

    // Step 11: AED
    node((0, 1), align(center)[
      *Step 11:* If AED available and \
      patient in cardiac arrest, \
      #action[APPLY] immediately. \
      Follow voice prompts.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: shock advised?
    node((0, 2), align(center)[
      *Does the AED advise a shock?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 2), align(center)[
      Ensure all clear. \
      #action[PRESS] shock button. \
      #action[RESUME] CPR \
      immediately after.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO
    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 2), align(center)[
      #action[RESUME] CPR \
      immediately. AED \
      re-analyses after \
      ~2 minutes.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]


// ============================================================
// PAGE 3: DO NOT List, Equipment, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- DO NOT List ---
#do-not-box((
  "Do not allow the patient to walk, exert themselves, or dismiss their symptoms.",
  "Do not give the patient food or beverages.",
  "Do not leave the patient alone (except briefly to call for help).",
  "Do not give aspirin if the patient is allergic to it.",
  "Do not give nitroglycerin that was not prescribed to this specific patient.",
  "Do not wait to see if symptoms resolve on their own -- every minute of delay increases irreversible heart muscle damage.",
  "Do not drive the patient to hospital yourself -- call 101 and wait for the ambulance. MDA has cardiac monitoring equipment and can begin treatment en route.",
  "Do not substitute paracetamol (Acamol) for aspirin -- only aspirin provides the needed antiplatelet effect.",
  "Do not give aspirin as a whole tablet -- it must be chewed for rapid absorption.",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "Aspirin tablets (100 mg, 1-3 tablets for 100-300 mg total)",
  "AED (Automated External Defibrillator) -- if available",
  "Phone (to call 101 MDA and optionally 1221 United Hatzalah)",
  "Nitroglycerin (only if prescribed to the patient)",
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
  #strong[Source:] Magen David Adom (MDA) — "MDA Heart Attack Protocol -- synthesised from MDA public heart attack page, MDA BLS guide (2016), MDA ALS protocol (2024), and corroborating Israeli medical sources" \
  #strong[URL:] https://www.mdais.org/101/mi-signs \
  #strong[Publication date:] 2024-04-01 · #strong[Edition:] MDA ALS Protocol 2024 / BLS Guide 2016 \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah reference material. Aspirin dosage of 100-300 mg is consistent across all Israeli sources and aligns with international guidelines.
]
