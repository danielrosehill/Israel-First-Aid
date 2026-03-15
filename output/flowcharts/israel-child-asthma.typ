// First Aid Protocol Flowchart — Asthma Attack — Child — Israel
// Generated from: IL-CHILD-ASTHMA-001
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

// === PAGE 1: INITIAL RESPONSE & INHALER ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[ASTHMA ATTACK — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 if the child does not improve after using rescue inhaler, if the child cannot speak in full sentences, if lips or fingernails turn blue, if breathing becomes very rapid or laboured, if the child becomes drowsy (dangerous sign of CO2 buildup), or if this is a first-time asthma attack without a prescribed inhaler. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Help the child sit upright to maximise lung expansion.",
  detail: "An upright or slightly forward-leaning position opens the airways and makes breathing easier. Do not lay the child down. Allow the child to find their most comfortable breathing position. Allow the child to sit with a parent for comfort."
)

#arrow-down()

#step-box(2, "Calm and reassure the child.",
  detail: "Speak directly to the child (not only to parents) in a calm, reassuring voice. Anxiety worsens bronchospasm. Introduce yourself by name and ask the child their name. Use age-appropriate explanations. Never lie about procedures.",
  warning: "Stress and anxiety are common asthma triggers and worsen an active attack. Keeping the child calm is a therapeutic intervention."
)

#arrow-down()

#step-box(3, "Assist the child with their prescribed rescue inhaler (Ventolin/salbutamol).",
  detail: "Help the child use their rescue inhaler. Typically 2-4 puffs, one at a time, with 30-60 seconds between puffs. For children under 6 years: use the inhaler with a spacer device (Volumatic or similar) for more effective medication delivery to small airways. In gan (kindergarten) or school settings, ask staff for the child's asthma action plan."
)

#arrow-down()

#decision-box("Does the child have a prescribed rescue inhaler available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Assist with inhaler use. For children under 6, use with a spacer device if available. Administer 2-4 puffs as per the child's action plan.],
  no-branch[Keep the child calm and upright. Call 101 immediately. Do not administer someone else's inhaler without medical direction.],
)

#arrow-down()

#step-box(4, "Administer high-concentration oxygen if available.",
  detail: "If supplemental oxygen is available, administer at 10 litres per minute via face mask. This is typically only available to trained first responders with equipment."
)

#arrow-down()

#step-box(5, "Obtain the child's medical history.",
  detail: "Ask the parent or child: Is the child a known asthmatic? What medications do they take? Have they been hospitalised for asthma before? What triggered this attack? When did symptoms start? Common triggers include allergens, air pollution, weather changes, physical exertion, cold air, and stress."
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2024-04-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: MONITORING & SEVERE ATTACK ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[ASTHMA ATTACK — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Monitoring, Severe Attack & Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(6, "Monitor for improvement or worsening.",
  detail: "Reassess breathing after 5-10 minutes. Monitor for signs of severe attack: inability to complete sentences, SpO2 below 92% (if pulse oximeter available), rapid breathing, central cyanosis. Drowsiness is a late and dangerous sign indicating CO2 buildup."
)

#arrow-down()

#decision-box("Has the child's breathing improved after inhaler use?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. A second dose of inhaler may be given after 10-15 minutes if needed. Advise parents to follow up with the child's doctor.],
  no-branch[Call 101 (MDA) immediately if not already done. The child needs advanced medical care. Continue to keep the child upright and calm while waiting for emergency services.],
)

#arrow-down()

#step-box(7, "Assess for life-threatening attack (status asthmaticus).",
  detail: "A life-threatening attack is characterised by severe hypoxia, inability to speak, exhaustion, silent chest (no wheeze despite distress -- airways too constricted for air movement), drowsiness or confusion, and cyanosis. This requires immediate advanced life support.",
  warning: "A 'silent chest' (no wheezing despite obvious distress) is a dangerous sign -- it means airways are too constricted for air movement. This is worse than audible wheezing."
)

#arrow-down()

#decision-box("Is the child showing signs of a life-threatening attack (silent chest, drowsiness, exhaustion, inability to speak)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[This is a life-threatening emergency. Call 101 immediately if not already done. Be prepared to perform CPR if the child stops breathing. Continue rescue inhaler every 5-10 minutes until help arrives.],
  no-branch[Continue monitoring and supportive care. Transport to medical facility if symptoms persist.],
)

#arrow-down()

#step-box(8, "Transport to medical facility if symptoms do not resolve.",
  detail: "Keep the child upright during transport. Bring the child's inhaler and any medication documentation. Report the number of inhaler puffs given and the times administered."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Lay the child down -- upright position is essential for breathing.",
  "Give the child cold drinks during an attack -- cold can worsen bronchospasm.",
  "Leave the child alone during an attack.",
  "Administer someone else's prescription inhaler without medical direction.",
  "Delay calling 101 if the child is not improving.",
  "Ignore drowsiness during an asthma attack -- this is a dangerous sign of CO2 buildup requiring immediate intervention.",
  "Assume a quiet chest means improvement -- a silent chest during distress is a life-threatening sign.",
))

#v(6pt)

#equipment-box((
  "Rescue inhaler (Ventolin/salbutamol) -- child's own prescribed inhaler",
  "Spacer device (for children under 6)",
  "Supplemental oxygen and face mask (if available -- typically first responder equipment)",
  "Pulse oximeter (if available)",
  "Phone (to call 101)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2024-04-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-ASTHMA-001
]
