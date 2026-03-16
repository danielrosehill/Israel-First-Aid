// Israel Adult Drowning Flowchart — V2
// Generated: 2026-03-16
// Source: Magen David Adom (MDA)
// Protocol ID: IL-ADULT-DROWNING-001

#import "@preview/fletcher:0.5.7": diagram, node, edge

// === METADATA ===
#let protocol-id = "IL-ADULT-DROWNING-001"
#let protocol-title = "Drowning (Near-Drowning) — Adult"
#let protocol-subject = "DROWNING"
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

#let step-box(number, instruction, detail: none, warning: none) = {
  keep-together[
    #rect(
      fill: clr-step,
      stroke: 1pt + clr-step-stroke,
      radius: 6pt,
      width: 100%,
      inset: 10pt,
    )[
      #set text(size: 10pt)
      #strong[Step #number:] #instruction
      #if detail != none [
        #v(4pt)
        #text(size: 9pt, fill: rgb("#6b7280"))[#detail]
      ]
      #if warning != none [
        #v(4pt)
        #rect(fill: clr-warning-fill, stroke: 1pt + clr-warning, radius: 4pt, inset: 6pt)[
          #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING: #warning]
        ]
      ]
    ]
  ]
}

#let decision-box(condition) = {
  rect(
    fill: clr-decision,
    stroke: 2pt + clr-decision-stroke,
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt, weight: "bold", fill: rgb("#1e40af"))
    #align(center)[#condition]
  ]
}

#let yes-branch(content) = {
  rect(
    fill: clr-yes-fill,
    stroke: 1pt + clr-yes,
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: clr-yes, weight: "bold")[YES ->] #content
  ]
}

#let no-branch(content) = {
  rect(
    fill: clr-no-fill,
    stroke: 1pt + clr-no,
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: clr-no, weight: "bold")[NO ->] #content
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
// PAGE 1: Title, Emergency Numbers, Assessment (Steps 1-4)
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
  Person found submerged or immersed in water, rescued from water who is unresponsive or not breathing, or who has experienced a near-drowning event in any body of water including pools, sea, lakes, or the Dead Sea.
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
  Rescue from water, assess breathing, perform CPR (ABC sequence preferred for trained rescuers), and transport to hospital -- even if the person recovers.
]

#v(8pt)

// --- Rescue and Initial Assessment: Steps 1-4 ---
#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[Rescue and Initial Assessment]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 1: Scene safety
    node((0, 0), align(center)[
      *Step 1:* #action[ENSURE] your own safety \
      before attempting rescue. \
      Use reaching aids if possible.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Decision: trained swimmer?
    node((0, 1), align(center)[
      *Are you a trained* \
      *swimmer or lifeguard?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> enter water
    edge((0, 1), (1, 1), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 1), align(center)[
      You may enter water \
      to perform rescue. \
      Use flotation aids.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> stay out
    edge((0, 1), (-1, 1), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 1), align(center)[
      Do NOT enter water. \
      Use pole, rope, or \
      throw buoyant object. \
      Wait for trained rescuer.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    // Warning
    node((-1, 0), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Untrained rescuers \
      who enter the water \
      frequently become \
      drowning victims.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 1), (0, 2), "->"),

    // Step 2: Call 101
    node((0, 2), align(center)[
      *Step 2:* #action[CALL] 101 (MDA) immediately. \
      Speakerphone. Provide location. \
      Send bystander for AED.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 3: Remove from water
    node((0, 3), align(center)[
      *Step 3:* #action[REMOVE] person from \
      water as quickly as possible. \
      Move to dry area.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 3), (0, 4), "->"),

    // Step 4: Check responsiveness
    node((0, 4), align(center)[
      *Step 4:* #action[CHECK] responsiveness \
      and breathing. Call out, \
      tap shoulder, observe chest.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Decision: responsive and breathing?
    node((0, 5), align(center)[
      *Is the person responsive* \
      *and breathing normally?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> recovery position
    edge((0, 5), (1, 5), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((1, 5), align(center)[
      Recovery position. \
      Monitor breathing. \
      Keep warm -- remove \
      wet clothing, cover \
      with dry blankets. \
      Go to Step 8.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> CPR needed
    edge((0, 5), (-1, 5), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((-1, 5), align(center)[
      Immediate CPR needed. \
      Proceed to Step 5.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),
  )
]


// ============================================================
// PAGE 2: CPR for Drowning — Steps 5-7
// ============================================================
#pagebreak()

#block(breakable: false)[
  #text(size: 13pt, weight: "bold", fill: rgb("#1e40af"))[CPR for Drowning]
  #v(4pt)

  #diagram(
    spacing: (12mm, 10mm),
    node-stroke: 1pt,
    edge-stroke: 1.5pt,

    // Step 5: Position
    node((0, 0), align(center)[
      *Step 5:* #action[POSITION] person \
      on back on firm, flat, \
      dry surface away from water.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 0), (0, 1), "->"),

    // Step 6: Begin CPR
    node((0, 1), align(center)[
      *Step 6:* #action[BEGIN] CPR. \
      Drowning is a hypoxic emergency -- \
      rescue breaths are especially important.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 1), (0, 2), "->"),

    // Decision: trained in rescue breaths?
    node((0, 2), align(center)[
      *Are you trained in full* \
      *CPR with rescue breaths?*
    ],
      shape: rect, fill: clr-decision, stroke: 2pt + clr-decision-stroke,
      width: 60mm, inset: 8pt),

    // YES -> ABC approach
    edge((0, 2), (-1, 2), "->",
      label: text(fill: clr-yes, weight: "bold", size: 11pt)[YES],
      label-side: center),

    node((-1, 2), align(center)[
      Use ABC approach: \
      #action[OPEN] airway, \
      give 2 rescue breaths, \
      then 30 compressions. \
      Continue 30:2 ratio. \
      Rate: 100/min.
    ],
      shape: rect, fill: clr-yes-fill, stroke: 1pt + clr-yes,
      width: 48mm, inset: 8pt),

    // NO -> hands-only
    edge((0, 2), (1, 2), "->",
      label: text(fill: clr-no, weight: "bold", size: 11pt)[NO],
      label-side: center),

    node((1, 2), align(center)[
      Hands-only CPR: \
      continuous compressions \
      at 100/min. \
      Do not stop until \
      MDA arrives.
    ],
      shape: rect, fill: clr-no-fill, stroke: 1pt + clr-no,
      width: 48mm, inset: 8pt),

    edge((0, 2), (0, 3), "->"),

    // Step 7: AED
    node((0, 3), align(center)[
      *Step 7:* #action[USE] AED if available. \
      Dry the chest thoroughly. \
      Ensure dry surface. \
      Follow AED voice prompts.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Warning for AED
    node((1, 3), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Using AED on wet \
      patient or wet surface \
      risks electrical injury. \
      Always dry chest and \
      move to dry area first.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),

    edge((0, 3), (0, 4), "->"),

    // Step 8: Continue until EMS
    node((0, 4), align(center)[
      *Step 8:* #action[CONTINUE] CPR or \
      monitoring until MDA arrives. \
      If person regains consciousness, \
      recovery position and monitor.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    edge((0, 4), (0, 5), "->"),

    // Step 9: Hospital transport
    node((0, 5), align(center)[
      *Step 9:* #action[ENSURE] hospital \
      transport regardless of \
      apparent recovery.
    ],
      shape: rect, fill: clr-step, stroke: 1pt + clr-step-stroke,
      width: 60mm, inset: 8pt),

    // Critical warning
    node((1, 5), align(center)[
      #text(fill: clr-warning, weight: "bold", size: 9pt)[WARNING] \
      #text(size: 8pt)[Do NOT allow person \
      to refuse treatment. \
      Secondary drowning can \
      cause death 1--24 hours \
      after the incident. \
      Electrolyte imbalances \
      can be fatal.]
    ],
      shape: rect, fill: clr-warning-fill, stroke: 2pt + clr-warning,
      width: 48mm, inset: 6pt),
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
  "Do NOT enter the water to rescue someone unless you are a trained swimmer or lifeguard -- untrained rescuers frequently become drowning victims.",
  "Do NOT attempt to remove water from the victim's lungs. MDA states this is impossible, dangerous, and a waste of critical time.",
  "Do NOT perform the Heimlich maneuver, turn the person upside down, or use any method to 'drain' water from the lungs.",
  "Do NOT use an AED on a wet patient or on a wet surface -- dry the chest and move to a dry area first.",
  "Do NOT allow a near-drowning victim to refuse hospital transport, even if they appear fully recovered. Secondary drowning and electrolyte imbalances can be fatal hours later.",
  "Do NOT stop CPR until the person is breathing on their own or professional medical help takes over.",
  "Do NOT delay calling 101 -- call immediately, even before attempting rescue if you are alone.",
))

#v(10pt)

// --- Equipment ---
#equipment-box((
  "AED (defibrillator) -- commonly available at lifeguard stations and public facilities in Israel",
  "Reaching aids (pole, rope, flotation device) for water rescue",
  "Dry blankets or clothing to keep the victim warm after extraction",
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
  #strong[Source:] Magen David Adom (MDA) — "Drowning -- MDA 101 Public First Aid Guidance Series; corroborated by MDA ALS Manual April 2024" \
  #strong[URL:] https://www.mdais.org/101/drowning \
  #strong[Imported:] 2026-03-15 · #strong[Last verified:] 2026-03-15 \
  #strong[Notes:] Unified from MDA and United Hatzalah sources. Includes Israel-specific context for Dead Sea, Mediterranean, and Kinneret hazards.
]
