// First Aid Protocol Flowchart — Heatstroke and Heat Exhaustion (Adult, Israel)
// Generated from: IL-ADULT-HEATSTROKE-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "HEATSTROKE & HEAT EXHAUSTION"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-03-15"
#let last-verified = "2026-03-15"

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
      #rect(fill: rgb("#fef2f2"), stroke: 1pt + rgb("#dc2626"), radius: 4pt, inset: 6pt)[
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES ->] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO ->] #content
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
    #set text(size: 11pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"))[X] #item \
    ]
  ]
}

#let section-header(title) = {
  rect(
    fill: rgb("#1e40af"),
    radius: 6pt,
    width: 100%,
    inset: 8pt,
  )[
    #set text(fill: white, weight: "bold", size: 14pt)
    #align(center)[#title]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(8pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to use this protocol:* Person showing signs of heat-related illness after prolonged heat exposure or physical exertion in hot conditions. Signs include heavy sweating, dizziness, nausea, confusion, hot dry skin, or loss of consciousness.
]

#v(6pt)

// ========================================
// STEP 1 — Initial Assessment
// ========================================
#step-box(1, "Assess the person's condition to determine whether this is heat exhaustion or heat stroke.",
  detail: "Heat exhaustion: heavy sweating, warm moist skin, dizziness, nausea, headache, weakness, muscle cramps, rapid pulse. Heat stroke: body temperature above 40 C, hot dry skin (sweating may have stopped), confusion, disorientation, staggering gait, seizures, hallucinations, loss of consciousness."
)

#arrow-down()

#decision-box("Does the person show signs of HEAT STROKE?\n(confusion, hot dry skin, temperature above 40 C,\nseizures, loss of consciousness)")

#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Life-threatening emergency. Go to HEAT STROKE pathway below.],
  no-branch[Treat as heat exhaustion. Go to HEAT EXHAUSTION pathway below.],
)

#v(10pt)

// ========================================
// HEAT STROKE PATHWAY (Steps 2-7)
// ========================================
#section-header("HEAT STROKE PATHWAY — LIFE-THREATENING EMERGENCY")

#v(6pt)

#step-box(2, "HEAT STROKE: Call MDA immediately at 101.",
  detail: "Heat stroke is a life-threatening emergency. Do not delay calling emergency services.",
  warning: "Do not delay calling 101 for suspected heat stroke."
)

#arrow-down()

#step-box(3, "Move the person to shade or an air-conditioned area immediately.")

#arrow-down()

#step-box(4, "Remove unnecessary clothing.")

#arrow-down()

#step-box(5, "Begin aggressive cooling: apply wet towels to the body (especially neck, armpits, groin), spray or pour cool/cold water on the body, fan the person vigorously, and apply cold packs to neck, armpits, and groin if available.",
  detail: "Target the neck, armpits, and groin where major blood vessels are close to the skin surface for maximum cooling effect."
)

#arrow-down()

#step-box(6, "Assess whether the person is fully conscious and able to swallow.",
  warning: "Do not give fluids to a person who is not fully conscious -- aspiration risk."
)

#v(4pt)

#decision-box("Is the person fully conscious and able to swallow?")

#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Offer small sips of cool water continuously.],
  no-branch[Do NOT give any fluids. Place in recovery position if breathing. Monitor airway.],
)

#arrow-down()

#step-box(7, "Monitor the person continuously until MDA arrives.",
  detail: "Elevate legs if blood pressure drops (signs of shock). If the person becomes unresponsive and stops breathing, begin CPR."
)

#v(4pt)

#decision-box("Has the person become unresponsive and stopped breathing?")

#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Begin CPR immediately.],
  no-branch[Continue cooling and monitoring. Stay with the patient until ambulance arrives.],
)

#v(10pt)

// ========================================
// HEAT EXHAUSTION PATHWAY (Steps 8-13)
// ========================================
#section-header("HEAT EXHAUSTION PATHWAY")

#v(6pt)

#step-box(8, "HEAT EXHAUSTION: Move the person to a shaded or air-conditioned location.")

#arrow-down()

#step-box(9, "Have the person lie down. Elevate legs slightly if blood pressure appears low.")

#arrow-down()

#step-box(10, "Remove excess or tight clothing.")

#arrow-down()

#step-box(11, "Begin cooling: apply wet towels, spray with cool water, fan the person.")

#arrow-down()

#step-box(12, "Assess whether the person is fully conscious and able to swallow.")

#v(4pt)

#decision-box("Is the person fully conscious and able to swallow?")

#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Offer small sips of cool water continuously.],
  no-branch[Do NOT give fluids. Call MDA at 101 immediately.],
)

#arrow-down()

#step-box(13, "Monitor for deterioration.")

#v(4pt)

#decision-box("Are symptoms improving with first aid?")

#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue cooling and hydration. Keep monitoring.],
  no-branch[Call MDA at 101. Condition may be progressing to heat stroke. Return to Step 1 and reassess.],
)

#v(10pt)

// ========================================
// DO NOT LIST
// ========================================
#do-not-box((
  "Do not administer fever-reducing medications (paracetamol, ibuprofen) -- antipyretics do not work for environmental hyperthermia and may cause harm.",
  "Do not give fluids to a person who is not fully conscious or who cannot swallow safely.",
  "Do not delay calling 101 for suspected heat stroke.",
  "Do not ignore early signs of heat exhaustion -- it can progress to life-threatening heat stroke.",
  "Do not leave the person unattended while waiting for emergency services.",
))

#v(8pt)

// ========================================
// EQUIPMENT
// ========================================
#rect(
  fill: rgb("#f9fafb"),
  stroke: 1pt + rgb("#d1d5db"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Equipment needed:]
  #v(4pt)
  #text(size: 10pt)[
    - Wet towels or cloths \
    - Cool/cold water (for spraying, pouring, and drinking) \
    - Cold packs or ice packs (if available) \
    - Fan or other means of air circulation (if available)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · Protocol ID: IL-ADULT-HEATSTROKE-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
