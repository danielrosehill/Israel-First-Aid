// First Aid Protocol Flowchart — Snakebite (Child) — Israel
// Generated from: protocols/child/israel/snakebite.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SNAKEBITE FIRST AID (CHILD)"
#let protocol-category = "snakebite"
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
      CALL #number (#service) — CALL IMMEDIATELY FOR EVERY SNAKEBITE
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES -> ] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO -> ] #content
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
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[Primary venomous species: Palestine viper (Daboia palaestinae)]
]

#v(6pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// Summary
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #set text(size: 10pt)
  #text(weight: "bold")[When to apply:] When a child has been bitten or suspected bitten by a snake. Treat every snakebite as venomous until proven otherwise -- do not wait for symptoms to appear. Common bite locations in Israeli children: 63% lower limbs, 33% upper limbs, 4% head/neck.
  #v(2pt)
  #text(fill: rgb("#dc2626"), weight: "bold")[Children are at higher risk due to lower body weight and faster symptom progression.]
]

#v(6pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety. Move the child away from the snake.",
  detail: "Maintain at least 2 metres distance from the snake. Do not attempt to catch, kill, or handle the snake. If safe to do so from a distance, photograph the snake for hospital identification.",
  warning: "Do NOT approach, chase, or attempt to catch the snake. This risks additional bites.")

#v(6pt)

// Step 2
#step-box(2, "Call 101 (MDA) immediately.",
  detail: "Request an ambulance. Report the child's age, approximate weight, bite location, time of bite, and any symptoms. Treat every snakebite as venomous until proven otherwise.",
  warning: "Do NOT wait for symptoms before calling. Children can deteriorate rapidly due to lower body weight.")

#v(6pt)

// Step 3
#step-box(3, "Keep the child calm and still. Have the child lie down.",
  detail: "Reassure the child by speaking calmly and confidently. Minimise all movement. Snake venom travels through the lymphatic system, which is activated by body movement, not heartbeat. Children may be frightened and want to run -- gently but firmly prevent this.",
  warning: "Immobility is critical. Any movement accelerates venom distribution through the lymphatic system.")

#v(6pt)

// Step 4
#step-box(4, "Position the bitten limb below heart level and immobilise it.",
  detail: "Keep the bitten limb lower than the heart to slow venom distribution. Immobilise the limb against the body as you would for a fracture.")

#v(4pt)

#decision-box("Is a splint or rigid object available to immobilise the limb?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply the splint to immobilise the bitten limb as for a fracture, keeping it below heart level.],
  no-branch[Immobilise the limb by positioning it against the child's body. Use clothing or fabric to secure it in place if possible. Keep it below heart level.],
)

#v(6pt)

// Step 5
#step-box(5, "Remove all constrictive items from the affected limb.",
  detail: "Remove rings, bracelets, watches, anklets, and tight clothing from the bitten limb. Swelling can develop rapidly and constrictive items can cause secondary injury by cutting off circulation.")

#v(6pt)

// Step 6
#step-box(6, "Clean the bite wound gently if materials are available.",
  detail: "Clean the bite site with water and soap only. Do not apply antiseptic, alcohol, or any other substance to the wound.",
  warning: "Do NOT apply alcohol, antiseptic, or any other substance to the bite site.")

#v(4pt)

#decision-box("Are water and soap available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Gently clean the bite site with water and soap only.],
  no-branch[Leave the wound as is. Do not apply any substances. Cleaning can be done at hospital.],
)

#v(6pt)

// Step 7
#step-box(7, "Monitor the child for signs of systemic envenomation.",
  detail: "Watch for: swelling spreading beyond the bite site, rapid heartbeat (tachycardia), vomiting, nausea, abdominal pain, difficulty breathing or swallowing, altered consciousness, pallor, hypotension (dizziness, fainting), rash or itching. In children, systemic signs may develop more rapidly than in adults.")

#v(4pt)

#decision-box("Has the child lost consciousness and stopped breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[#text(fill: rgb("#dc2626"), weight: "bold")[Begin CPR immediately.] Continue until emergency services arrive.],
  no-branch[Continue monitoring. Keep the child calm, still, and lying down with the bitten limb below heart level. Wait for emergency services.],
)

#v(6pt)

// Step 8
#step-box(8, "Prepare for transport to hospital.",
  detail: "All snakebite victims require urgent medical evaluation, even if no symptoms are present. Antivenom (monovalent equine anti-V. palaestinae) is stocked at Israeli hospitals. If the snake was photographed, have the photo ready to show medical staff.")

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT apply a tourniquet -- concentrates venom and causes tissue damage.",
  "Do NOT cut the bite site -- causes additional injury and does not remove venom.",
  "Do NOT attempt to suck out the venom -- ineffective and risks infection.",
  "Do NOT apply ice or cold compresses -- can cause tissue damage, does not slow venom absorption.",
  "Do NOT apply alcohol, antiseptic, or any substance to the wound.",
  "Do NOT give the child food or drink -- risk of vomiting, child may need anaesthesia at hospital.",
  "Do NOT give the child hot liquids or alcohol.",
  "Do NOT induce vomiting.",
  "Do NOT chase, catch, kill, or handle the snake -- risk of additional bites.",
  "Do NOT use a pressure immobilisation bandage -- not recommended for viper bites in the Israeli protocol.",
  "Do NOT allow the child to walk or move -- movement accelerates venom spread.",
  "Do NOT wait for symptoms before seeking emergency care -- treat every snakebite as venomous.",
))

#v(6pt)

// === EQUIPMENT ===
#equipment-box((
  "Splint or rigid object for limb immobilisation",
  "Water and soap (for wound cleaning)",
  "Phone (to call 101 and photograph the snake)",
  "Blanket or clothing (to keep child warm and comfortable while lying still)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  Protocol ID: IL-CHILD-SNAKEBITE-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
