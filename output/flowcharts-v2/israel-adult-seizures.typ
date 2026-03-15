// Israel Adult Seizures Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-SEIZURES-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-SEIZURES-001"
#let protocol-title = "Seizures (Epileptic Seizure / Convulsions) — Adult"
#let protocol-subject = "SEIZURES"
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
// PAGE 1: Title, During Seizure (Steps 1-6)
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
    CALL #emergency-number (#emergency-service) IF SEIZURE LASTS OVER 5 MINUTES
  ]
]
#v(4pt)
#emergency-numbers-strip()
#v(6pt)

// --- When to Apply ---
#when-to-apply[
  Person is having a tonic-clonic (grand mal) seizure: sudden loss of consciousness, body stiffening, rhythmic jerking of limbs, eyes rolling upward, jaw clenching, excessive salivation/foaming, possible loss of bladder/bowel control, bluish skin around lips.
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
  Protect the person from injury during the seizure, time the seizure, place in recovery position after it ends, and call 101 if the seizure lasts more than 5 minutes or meets other emergency criteria.
]

#v(8pt)

// --- During Seizure: Steps 1-6 ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[During the Seizure]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Stay calm, time it
    node((0, 0), align(center)[
      *Step 1:* Stay calm. Note the \
      time the seizure started. \
      Most end within 1--3 min.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 2: Clear area
    node((0, 1), align(center)[
      *Step 2:* #action[REMOVE] sharp objects, \
      furniture, hard items from \
      around the person. Guide \
      to ground if standing.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 3: Protect head
    node((0, 2), align(center)[
      *Step 3:* #action[PLACE] something \
      soft and flat under the \
      person's head (jacket, \
      towel, cushion).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 4: Loosen clothing
    node((0, 3), align(center)[
      *Step 4:* #action[LOOSEN] tight \
      clothing around neck \
      (ties, scarves, collars).
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 5: Vomiting?
    node((0, 4), align(center)[
      *Is the person vomiting or* \
      *producing excessive saliva?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> recovery position
    edge((0, 4), (1, 4), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 4), align(center)[
      #action[TURN] person onto \
      their side (recovery \
      position), mouth \
      pointing downward.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> let it run
    edge((0, 4), (-1, 4), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 4), align(center)[
      Allow seizure to \
      run its course. \
      Do not move unless \
      in immediate danger.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 6: Duration check
    node((0, 5), align(center)[
      *Has the seizure lasted* \
      *more than 5 minutes?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> call 101
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      #action[CALL] 101 (MDA) \
      immediately. This is \
      *status epilepticus* -- \
      a medical emergency.
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 8pt),

    // NO -> continue
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Continue monitoring. \
      Most seizures end \
      within 1--3 minutes.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 2: After Seizure (Steps 7-12)
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[After the Seizure]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 7: Recovery position
    node((0, 0), align(center)[
      *Step 7:* After seizure ends, \
      #action[PLACE] person in \
      recovery position (on side) \
      if not already done.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 8: Check breathing
    node((0, 1), align(center)[
      *Is the person breathing* \
      *normally after the seizure?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> monitor
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      Continue to #action[MONITOR]. \
      Stay with person until \
      fully alert and oriented.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> call 101
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      #action[CALL] 101 (MDA). \
      If person stops \
      breathing, \
      #action[BEGIN] CPR.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Step 9: Reassure
    node((0, 2), align(center)[
      *Step 9:* Speak calmly as \
      person regains consciousness. \
      They will be confused \
      (postictal state). Tell them \
      calmly what happened.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 10: First-time seizure?
    node((0, 3), align(center)[
      *Is this the person's first* \
      *seizure, or different from* \
      *their typical pattern?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> call 101
    edge((0, 3), (1, 3), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 3), align(center)[
      #action[CALL] 101 (MDA). \
      First-time seizure \
      always requires \
      medical evaluation.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> stay with them
    edge((0, 3), (-1, 3), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 3), align(center)[
      Known epilepsy, \
      typical seizure, \
      resolved within 5 min. \
      Stay until recovered. \
      Ensure accompaniment.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 11: Nothing by mouth
    node((0, 4), align(center)[
      *Step 11:* Do not offer food, \
      water, or medication until \
      person is fully conscious \
      and can swallow safely.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning
    node((1, 4), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Offering food/drink \
      before fully conscious \
      can cause choking \
      or aspiration.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 4), (0, 5), "->"),

    // Step 12: Rescue medication
    node((0, 5), align(center)[
      *Prescribed rescue medication* \
      *available with trained caregiver?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> administer
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      #action[ADMINISTER] rescue \
      medication at prescribed \
      dose if seizure over 3 min. \
      If seizure persists, \
      #action[CALL] 101.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> no meds
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Do not administer \
      any medication. \
      #action[CALL] 101 if seizure \
      lasts over 5 min.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]

// ============================================================
// PAGE 3: DO NOT, Equipment, Source
// ============================================================
#pagebreak()

#text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Reference]
#v(6pt)

// --- Call 101 Criteria ---
#keep-together[
  #rect(
    fill: rgb("#eff6ff"),
    stroke: 2pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 12pt,
  )[
    #text(fill: rgb("#1e40af"), weight: "bold", size: 13pt)[Call 101 (MDA) if:]
    #v(6pt)
    #set text(size: 10pt)
    - Seizure lasts more than 5 minutes \
    - A second seizure follows without regaining consciousness \
    - This is a first-time seizure \
    - Person has difficulty breathing after the seizure \
    - Person is pregnant or has diabetes \
    - Injury occurs during the seizure
  ]
]

#v(10pt)

// --- DO NOT List ---
#do-not-box((
  "DO NOT restrain the person or try to hold them down. You cannot stop a seizure by force. Restraining can cause fractures, dislocations, or soft tissue injury.",
  "DO NOT put anything in the person's mouth -- no spoons, wallets, sticks, fingers, or any object. The person cannot swallow their tongue. Objects risk breaking teeth or causing jaw injuries.",
  "DO NOT attempt mouth-to-mouth during the seizure. People usually resume breathing on their own once the seizure ends.",
  "DO NOT pour water on the person or attempt to 'wake them up'.",
  "DO NOT offer food, drinks, or medication by mouth during or immediately after the seizure until the person is fully alert and able to swallow safely.",
  "DO NOT crowd around the person -- give them space and privacy. Ask bystanders to step back.",
  "DO NOT move the person unless they are in immediate danger (e.g., in the middle of a road, near a ledge, next to fire or water).",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "Soft padding for under the head (jacket, towel, cushion, blanket)",
  "Watch or phone to time the seizure duration",
  "Prescribed rescue medication if available (Buccolam, Stesolid, or Rivotril -- prescription only)",
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
  #strong[Source:] Magen David Adom (MDA) — "Seizure First Aid Protocol (synthesised from MDA course materials, Israeli Epilepsy Association, and corroborating Israeli medical sources)" \
  #strong[URL:] https://www.mdais.org/101/first-aid \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. No significant divergence between the two organisations for seizure management. Status epilepticus defined as seizure lasting over 5 minutes. Israeli Epilepsy Association support line: 02-5000283.
]
