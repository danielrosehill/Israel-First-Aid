// First Aid Protocol Flowchart — Scorpion Stings (Child) — Israel
// Generated from: IL-CHILD-SCORPION-STINGS-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SCORPION STING — CHILD"
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
      CALL #number (#service) — CALL IMMEDIATELY FOR EVERY SCORPION STING IN A CHILD
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO] #content
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

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(4pt)

// Poison center callout
#rect(
  fill: rgb("#fef9c3"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #set text(size: 11pt)
  #align(center)[
    #strong[Israel Poison Information Center:] 04-7771900 (Rambam Medical Center)
  ]
]

#v(4pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// Context box
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[WARNING: Children are at significantly higher risk from scorpion stings due to lower body weight and faster systemic venom progression. The deathstalker scorpion (Leiurus quinquestriatus) can be deadly for young children. All scorpion stings in children require emergency medical evaluation -- do not "wait and see." The common belief that black scorpions are harmless is incorrect -- black scorpions can also be dangerous and potentially lethal.]
]

#v(6pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety. Move the child away from the scorpion immediately.",
  detail: "Do not attempt to catch or handle the scorpion. If safe to do so, photograph or note the scorpion's appearance (colour, size) for identification at hospital.",
  warning: "Do NOT attempt to catch or handle the scorpion. This risks additional stings.")

#v(6pt)

// Step 2
#step-box(2, "Call 101 (MDA) immediately.",
  detail: "Request an ambulance. All scorpion stings in children require emergency medical evaluation -- do not 'wait and see.' Report the child's age, approximate weight, time of sting, sting location on the body, and any symptoms. Also consider calling the Israel Poison Information Center at 04-7771900 for real-time guidance.",
  warning: "Do NOT delay calling 101 for children. Children deteriorate faster than adults due to higher venom-to-body-weight ratio.")

#v(6pt)

// Step 3
#step-box(3, "Keep the child calm and still. Have the child lie down or sit still.",
  detail: "Reassure the child by speaking calmly and confidently. Minimise all movement. Movement accelerates venom distribution through the lymphatic and circulatory systems. Anxiety and crying can increase heart rate, which further accelerates venom spread.",
  warning: "Immobility is critical. Any movement accelerates venom distribution.")

#v(6pt)

// Step 4
#step-box(4, "Cool the sting area with an ice pack or cold compress wrapped in cloth.",
  detail: "Apply ice or a cold compress wrapped in cloth to the sting site. Cooling relieves pain and slows venom absorption via vasoconstriction. Apply for 10 minutes on, 10 minutes off. Most effective during the first 2 hours following the sting.",
  warning: "Do NOT apply ice directly to the child's skin -- always wrap in cloth. This is different from snakebite protocol, where ice is NOT recommended.")

#v(4pt)

#decision-box("Is ice or a cold compress available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Wrap the ice or cold compress in cloth and apply to the sting site. Apply for 10 minutes on, 10 minutes off.],
  no-branch[Skip cooling. Focus on keeping the child calm, still, and the limb immobilised. Proceed to next step.],
)

#v(6pt)

// Step 5
#step-box(5, "Immobilise the stung limb. Keep it still and below heart level.",
  detail: "Immobilise the stung limb against the body as you would for a fracture. Keeping it below heart level slows venom distribution.")

#v(4pt)

#decision-box("Is a splint or rigid object available to immobilise the limb?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply the splint to immobilise the stung limb, keeping it below heart level.],
  no-branch[Immobilise the limb by positioning it against the child's body. Use clothing or fabric to secure it in place if possible. Keep it below heart level.],
)

#v(6pt)

// Step 6
#step-box(6, "Monitor the child closely for signs of systemic envenomation.",
  detail: "Watch for: Neurological -- restlessness, agitation, altered consciousness, drowsiness, confusion, seizures, numbness/tingling, breathing difficulties. Cardiovascular -- rapid heartbeat, irregular rhythms, chest pain. Autonomic -- excessive sweating, salivation/drooling, tearing, vomiting, nausea, abdominal pain, muscle twitching. Delayed reactions may occur -- even if the child initially appears well, hospital observation is essential.",
  warning: "Systemic symptoms can progress rapidly in children. Do not assume the child is fine based on initial appearance.")

#v(4pt)

#decision-box("Is the child showing systemic symptoms? (breathing difficulty, altered consciousness, seizures, rapid heartbeat, excessive sweating/salivation, vomiting)")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Relay all symptoms to the 101 dispatcher immediately. If the child loses consciousness and stops breathing, begin CPR. Continue monitoring and prepare for rapid transport.],
  no-branch[Continue monitoring closely. Symptoms can develop with delay. Maintain calm, immobilisation, and cooling. Hospital evaluation is still required.],
)

#v(6pt)

// Step 7
#step-box(7, "Prepare for and facilitate rapid transport to hospital.",
  detail: "All pediatric scorpion stings require hospital evaluation regardless of symptom severity. At hospital, the child may receive: pain relief, supportive treatment for cardiovascular and respiratory systems, monitoring for arrhythmias and delayed reactions, and scorpion antivenom in cases with significant systemic symptoms. Minimum observation period at hospital is 6 hours. If the scorpion was photographed, have the photo ready for medical staff.")

#v(4pt)

#decision-box("Has the ambulance arrived?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Hand over to paramedics. Provide the child's age, weight, time of sting, sting location, any symptoms observed, and scorpion photo if available.],
  no-branch[Continue monitoring, cooling, and keeping the child calm and still. If the child's condition deteriorates rapidly and no ambulance is imminent, consider rapid private transport to the nearest hospital emergency department.],
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT apply a tourniquet -- concentrates venom in the limb and causes tissue damage.",
  "Do NOT cut or incise the sting site -- causes additional injury and does not remove venom.",
  "Do NOT attempt to suck out the venom -- ineffective and risks infection.",
  "Do NOT apply alcohol or antiseptic to the wound -- interferes with medical assessment.",
  "Do NOT give the child medication without medical advice -- may interact with venom effects or mask symptoms.",
  "Do NOT underestimate a sting based on scorpion colour -- black scorpions can be as dangerous as yellow ones and can be potentially lethal.",
  "Do NOT delay calling 101 for children -- children deteriorate faster than adults due to higher venom-to-body-weight ratio.",
  "Do NOT apply ice directly to the child's skin -- always wrap in cloth.",
  "Do NOT allow the child to walk or move -- movement accelerates venom distribution.",
  "Do NOT 'wait and see' with children -- all scorpion stings in children require emergency medical evaluation.",
))

#v(6pt)

// === EQUIPMENT ===
#equipment-box((
  "Ice pack or cold compress (wrapped in cloth)",
  "Splint or rigid object for limb immobilisation",
  "Phone (to call 101 / 04-7771900 and photograph the scorpion)",
  "Cloth or towel (to wrap ice pack)",
  "Blanket or clothing (to keep child comfortable while lying still)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · Protocol ID: IL-CHILD-SCORPION-STINGS-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
