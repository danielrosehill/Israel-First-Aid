// First Aid Protocol Flowchart — Hypothermia / Cold Exposure — Child — Israel
// Generated from: IL-CHILD-HYPOTHERMIA-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-16

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === HEBREW HELPER ===
#let heb(content) = {
  text(font: "IBM Plex Sans Hebrew", dir: rtl)[#content]
}

// === STYLES ===
#let emergency-box(number, service) = {
  rect(
    fill: rgb("#dc2626"),
    radius: 8pt,
    width: 100%,
    inset: 12pt,
  )[
    #set text(fill: white, weight: "bold", size: 18pt)
    #align(center)[
      CALL #number (#service) — CALL IMMEDIATELY IF IN DOUBT
    ]
  ]
}

#let all-emergency-numbers() = {
  rect(
    fill: rgb("#fef2f2"),
    stroke: 1pt + rgb("#dc2626"),
    radius: 6pt,
    width: 100%,
    inset: 8pt,
  )[
    #set text(size: 10pt)
    #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 8pt,
      [#strong[MDA (#heb[מד״א]):] 101],
      [#strong[Police (#heb[משטרה]):] 100],
      [#strong[Fire (#heb[כיבוי]):] 102],
      [#strong[Hatzalah (#heb[הצלה]):] 1221],
    )
  ]
}

#let step-box(number, instruction, detail: none, warning: none) = {
  rect(
    fill: rgb("#f0f9ff"),
    stroke: 1pt + rgb("#3b82f6"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt)
    #strong[Step #number:] #instruction
    #if detail != none [
      #v(4pt)
      #text(size: 9pt, fill: rgb("#6b7280"))[#detail]
    ]
    #if warning != none [
      #v(4pt)
      #rect(fill: rgb("#fef2f2"), stroke: 1pt + rgb("#dc2626"), radius: 4pt, inset: 6pt, width: 100%)[
        #text(fill: rgb("#dc2626"), weight: "bold", size: 10pt)[WARNING: #warning]
      ]
    ]
  ]
}

#let decision-box(condition) = {
  rect(
    fill: rgb("#eff6ff"),
    stroke: 2pt + rgb("#2563eb"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 12pt, weight: "bold", fill: rgb("#1e40af"))
    #align(center)[#condition]
  ]
}

#let yes-branch(content) = {
  rect(
    fill: rgb("#f0fdf4"),
    stroke: 1pt + rgb("#16a34a"),
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: rgb("#16a34a"), weight: "bold", size: 11pt)[YES:] #content
  ]
}

#let no-branch(content) = {
  rect(
    fill: rgb("#fff7ed"),
    stroke: 1pt + rgb("#ea580c"),
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #text(fill: rgb("#ea580c"), weight: "bold", size: 11pt)[NO:] #content
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[#sym.arrow.b]
  ]
}

#let do-not-box(items) = {
  rect(
    fill: rgb("#fef2f2"),
    stroke: 2pt + rgb("#dc2626"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 10pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

#let equipment-box(items) = {
  rect(
    fill: rgb("#fefce8"),
    stroke: 1pt + rgb("#ca8a04"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 10pt)
    #text(fill: rgb("#92400e"), weight: "bold", size: 11pt)[Equipment needed:]
    #v(4pt)
    #for item in items [
      — #item \
    ]
  ]
}

// === PAGE 1 ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[HYPOTHERMIA / COLD EXPOSURE — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child (including Infants)]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 immediately for any child showing signs of moderate or severe hypothermia (confusion, loss of consciousness, severe shivering or paradoxical cessation of shivering, muscle rigidity). Call for any infant with suspected hypothermia. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

// --- Steps ---
#step-box(1, "Remove the child from the cold environment immediately.",
  detail: "Move the child to a warm, sheltered location. Handle the child very gently -- rough movement can trigger cardiac arrhythmias in a cold heart.",
  warning: "Minimise all movement and jostling. A cold heart is extremely sensitive to movement and can develop fatal arrhythmias."
)

#arrow-down()

#step-box(2, "Remove any wet clothing.",
  detail: "Carefully cut or remove wet clothing. Wet clothing accelerates heat loss. Replace with dry clothing or blankets."
)

#arrow-down()

#step-box(3, "Dry the child and wrap in warm blankets.",
  detail: "Dry the child thoroughly. Position the child horizontally. Cover with warmed blankets, focusing on the head, neck, chest, and groin areas where major blood vessels are close to the surface."
)

#arrow-down()

#step-box(4, "Perform ABC assessment (Airway, Breathing, Circulation).",
  detail: "Check airway patency, breathing, and pulse. For infants, maintain nasal patency as they are obligate nasal breathers. Take up to 60 seconds to assess pulse and breathing in hypothermic patients, as vital signs may be very slow."
)

#arrow-down()

#decision-box("Is the child breathing and has a pulse?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue rewarming. Monitor breathing and pulse continuously. Place in recovery position if unconscious but breathing.],
  no-branch[Begin CPR immediately. Continue CPR and rewarming until emergency services arrive. A hypothermic patient may appear dead but can recover with proper rewarming.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2024-04-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2 ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[HYPOTHERMIA — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Rewarming, Severity Assessment & Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(5, "Apply passive and active rewarming to the core body areas.",
  detail: "Apply warmed blankets or heat packs (wrapped in cloth to avoid burns) to the head, neck, chest, and groin. Warm the core first, not the extremities. For infants, ensure thorough coverage of the entire body.",
  warning: "Do NOT apply direct heat sources (hot water bottles, heating pads) directly against skin -- risk of burns. Always wrap heat sources in cloth."
)

#arrow-down()

#step-box(6, "Assess severity of hypothermia.",
  detail: "Stage 1 (37-35C): shivering, normal judgement. Stage 2 (35-32C): severe shivering, confusion, slurred speech, pallor. Stage 3 (32-28C): deteriorating consciousness, muscle rigidity, weakening reflexes. Stage 4 (below 28C): unconsciousness, absent reflexes, severely slowed or absent breathing."
)

#arrow-down()

#decision-box("Is the child conscious and able to swallow safely?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Offer warm (not hot) sweet drinks. No alcohol or caffeine.],
  no-branch[Do not give any fluids by mouth. Maintain airway and continue rewarming. Transport urgently.],
)

#arrow-down()

#step-box(7, "Call 101 (MDA) and transport urgently to hospital.",
  detail: "All children with suspected hypothermia should be evaluated at hospital. During transport, continue to minimise movement and maintain rewarming. Keep the child horizontal during transport.",
  warning: "Minimise jostling during transport -- may trigger cardiac arrhythmias."
)

#arrow-down()

#step-box(8, "Monitor continuously until handover to emergency services.",
  detail: "Monitor breathing, pulse, and level of consciousness. Be prepared to perform CPR if the child deteriorates. Note: infants may NOT shiver even when hypothermic -- absence of shivering does not rule out hypothermia in infants."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Give alcohol, caffeine, or allow smoking -- these worsen hypothermia.",
  "Make excessive or rough movements -- risk of cardiac arrhythmias in a cold heart.",
  "Apply direct heat to skin without a cloth barrier -- risk of burns.",
  "Rewarm extremities before the core -- can cause dangerous drop in core temperature as cold blood returns to the heart.",
  "Give fluids by mouth to an unconscious or semi-conscious child -- aspiration risk.",
  "Assume a severely hypothermic child is dead -- 'no one is dead until they are warm and dead.'",
  "Use hot water immersion for rewarming in the field -- risk of burns and cardiac arrhythmias.",
  "Jostle or move the child unnecessarily during transport.",
))

#v(6pt)

#equipment-box((
  "Warm blankets or sleeping bags",
  "Dry clothing",
  "Heat packs or warm water bottles (wrapped in cloth)",
  "Phone (to call 101)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2024-04-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-HYPOTHERMIA-001
]
