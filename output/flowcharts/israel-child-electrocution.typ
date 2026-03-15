// First Aid Protocol Flowchart — Electrocution (Child) — Israel
// Generated from: IL-CHILD-ELECTROCUTION-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "ELECTROCUTION — FIRST AID (CHILD)"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-01-01"
#let last-verified = "2026-03-15"

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

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ V]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[ID: IL-CHILD-ELECTROCUTION-001]
]

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to apply
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[When to apply:]
  #v(4pt)
  #text(size: 9.5pt)[
    When a child has sustained an electric shock from any source: household outlet (220V in Israel), electrical cord (especially oral contact/biting in toddlers), faulty appliance, exposed wiring, or high-voltage source. Signs include burns at contact points, loss of consciousness, muscle rigidity or spasms, difficulty breathing, cardiac arrest, or the child being found unresponsive near an electrical source.
  ]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Summary:] First aid for electrical shock injuries in children, emphasising scene safety (disconnect power before touching the child), CPR readiness, burn care, and mandatory hospital evaluation for all cases.
]

#v(6pt)

// === STEPS ===

// Step 1
#step-box(1, "Ensure your own safety -- do NOT touch the child while they are in contact with the electrical source.",
  detail: "Touching a person who is still connected to an electrical source will cause chain electrocution. Assess the scene before approaching. Stand on a dry, insulating surface if possible.",
  warning: "You will become an additional victim if you touch the child while they are still in contact with the electrical source. Scene safety is the absolute first priority.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 2
#step-box(2, "Disconnect the electrical source.",
  detail: "The safest action is to turn off the main circuit breaker (#heb[מפסק ראשי]) or unplug the appliance at the wall socket. If you cannot reach the power source, use a long, dry, non-conductive object (wooden broom handle, dry wooden stick, plastic chair, dry rolled newspaper) to separate the child from the electrical source.",
  warning: "Never use metal objects or anything wet or damp to separate the child from the source.")

#v(4pt)
#decision-box("Is this a high-voltage source (power lines, transformer box, industrial equipment)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Do NOT approach.* Call 101 (MDA), 102 (Fire Services), and 103 (Israel Electric Corporation) immediately. Maintain a safe distance and keep bystanders away until emergency services arrive.],
  no-branch[Turn off the main circuit breaker or unplug the appliance. If that is not possible, use a dry non-conductive object to separate the child from the source.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 3
#step-box(3, "Call 101 (MDA) immediately once the child is separated from the electrical source.",
  detail: "Provide clearly: your phone number, exact address or location, your name, the child's approximate age, what happened (electrocution, type of source), and the child's current condition (conscious or unconscious, breathing or not breathing). MDA dispatchers can guide you through first aid steps while the ambulance is en route.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 4
#step-box(4, "Assess the child's responsiveness, breathing, and pulse.",
  detail: "Call the child's name and tap gently to check responsiveness. Look for chest rise and listen for breath sounds to check breathing. Check for a pulse.")

#v(4pt)
#decision-box("Is the child responsive?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Keep the child still and calm. Proceed to step 6 (burn assessment) and step 7 (treat for shock).],
  no-branch[Check breathing and pulse immediately. If the child is not breathing or has no pulse, proceed to step 5 (CPR).],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 5
#step-box(5, "Begin CPR immediately if the child is not breathing and/or has no pulse.",
  detail: "Child CPR (age 1--8): 30 compressions to 2 breaths; compress to a depth of approximately 5 cm using one or two hands on the lower half of the sternum. Infant CPR (under age 1): 30 compressions to 2 breaths; compress to a depth of approximately 4 cm using two fingers on the sternum, just below the nipple line. Continue CPR without stopping until MDA paramedics arrive.",
  warning: "Do not stop CPR based on apparent lack of vital signs. Electrocution victims can sometimes be resuscitated after prolonged efforts.")

#v(4pt)
#decision-box("Is an AED available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply the AED as soon as possible. Use pediatric pads if available; if only adult pads are available, use them. Follow AED voice prompts. Continue CPR between shocks.],
  no-branch[Continue manual CPR (30 compressions to 2 breaths) without interruption until MDA paramedics arrive.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 6
#step-box(6, "Assess and treat burns at current entry and exit points.",
  detail: "Look for burns where the current entered and exited the body. Cool visible burns with cool (not ice-cold) running water. Cover with sterile, non-adherent dressing. Remember: electrical burns are often internal and far more severe than what is visible on the skin surface.",
  warning: "Do NOT apply creams, ointments, toothpaste, or home remedies to electrical burns. Do NOT apply ice.")

#v(4pt)
#decision-box("Is the burn an oral electrical burn (from biting or sucking on an electrical cord)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[The burn may appear as a localised white or grey area on the lip, tongue, or inside the mouth. Cool the area if possible. Do NOT apply pressure to the wound. *Warn parents about delayed bleeding risk:* bleeding from the labial artery can occur hours or even days after the initial injury. If bleeding occurs later, apply firm pressure and call 101 immediately. Requires immediate medical evaluation.],
  no-branch[Cool visible burns with cool running water. Cover with sterile, non-adherent dressing. Do NOT apply creams or ointments.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 7
#step-box(7, "Treat the child for shock (#heb[הלם]).",
  detail: "Lay the child down if conscious and no spinal injury is suspected. Keep the child warm with a blanket. Elevate legs slightly if no spinal injury is suspected. Do not give food or drink.")

#v(4pt)
#decision-box("Is spinal injury suspected (child was thrown or fell during electrocution)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT move the child. Keep the child completely still and wait for MDA paramedics. Support the head and neck in the position found.],
  no-branch[Lay the child down, keep warm with a blanket, and elevate legs slightly.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 8
#step-box(8, "Minimise movement of the child.",
  detail: "Electrocution can cause involuntary muscle contractions that throw the child, potentially causing spinal or other traumatic injuries. Avoid unnecessary movement. If spinal injury is suspected, keep the child completely still and wait for MDA.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 9
#step-box(9, "Ensure the child is transported to hospital for evaluation -- this is MANDATORY.",
  detail: "Every child who experiences an electric shock, even if it appears minor, MUST be evaluated at a hospital. Internal injuries, cardiac arrhythmias, and organ damage (particularly kidneys from rhabdomyolysis) may not be immediately apparent. Delayed complications can occur hours after the incident. ECG monitoring is typically required to check for cardiac rhythm abnormalities. For oral electrical burns, warn parents about delayed bleeding from the labial artery which can occur hours or even days later.",
  warning: "Do NOT assume the child is fine because external injuries appear minor. Internal damage may be hidden. A seemingly small and superficial skin injury may conceal deep internal damage.")

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT touch the child while they are in contact with the electrical source -- you will become an additional victim (chain electrocution).",
  "Do NOT use metal objects or wet/damp materials to separate the child from the electrical source.",
  "Do NOT apply ice to electrical burns.",
  "Do NOT apply creams, ointments, toothpaste, or home remedies to electrical burns.",
  "Do NOT assume the child is fine because external injuries appear minor -- internal damage from electrical current may be hidden and far more severe than surface injuries suggest.",
  "Do NOT delay calling 101 -- every electrocution in a child requires professional medical evaluation and hospital assessment.",
  "Do NOT move the child unnecessarily -- spinal and traumatic injuries from being thrown or muscle contractions may be present.",
  "Do NOT approach high-voltage sources (power lines, transformer boxes) -- call 101, 102, and 103 and maintain a safe distance.",
  "Do NOT stop CPR based on apparent lack of vital signs -- electrocution victims can sometimes be resuscitated after prolonged efforts.",
  "Do NOT give food or drink to a child in shock after electrocution.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#f0f9ff"),
  stroke: 1pt + rgb("#3b82f6"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Equipment Needed:]
  #v(4pt)
  #text(size: 10pt)[
    - Non-conductive object for separating victim from source (wooden broom handle, dry stick, plastic chair)\
    - AED / defibrillator (with pediatric pads if available)\
    - Cool running water source (for burn cooling)\
    - Sterile non-adherent dressings (for burn coverage)\
    - Blanket (for warmth and shock treatment)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
