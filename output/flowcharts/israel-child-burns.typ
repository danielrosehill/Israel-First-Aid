// First Aid Protocol Flowchart — Burns (Child) — Israel
// Generated from: IL-CHILD-BURNS-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "BURNS — FIRST AID (CHILD)"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-01-01"
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
  #text(size: 10pt, fill: rgb("#6b7280"))[ID: IL-CHILD-BURNS-001]
]

#v(8pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// When to call
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[Call 101 immediately for:]
  #v(4pt)
  #text(size: 9.5pt)[
    Any burn in an infant under 1 year; burns on face, eyes, mouth, tongue, hands, feet, genitals, groin, or inner thigh; circumferential burns encircling a limb; burns appearing white, grey, or black (third-degree); multiple large blisters; extensive burns; burns to neck, face, or airways; electrical burns; chemical burns; any burn worse than minor first-degree; burns in immunocompromised children.
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
  #text(weight: "bold", size: 11pt)[Summary:] First aid for thermal, chemical, and electrical burns in children. Key: cool with lukewarm water for minimum 20 minutes, prevent hypothermia, call emergency services early. Approx. 84% of pediatric burns in Israel are scalds from hot liquids.
]

#v(6pt)

// === STEPS ===

// Step 1
#step-box(1, "Ensure scene safety and remove the child from the heat source immediately.",
  detail: "Make sure the scene is safe for the rescuer before approaching. Remove the child from the source of the burn.")

#v(4pt)
#decision-box("What type of burn source?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Fire/Electrical/Chemical:* Fire -- roll child on floor, extinguish flames. Electrical -- use non-conductive object to separate child from source. Chemical -- remove contaminated clothing carefully.],
  no-branch[*Thermal/Scald:* Simply move the child away from the heat source.],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 2
#step-box(2, "Remove saturated clothing from the burn area immediately.",
  detail: "Hot liquid in fabric continues damaging skin. Gently remove affected clothing; use scissors if needed. Remove constrictive items (shoes, watches, jewellery, rings) before swelling occurs.",
  warning: "If clothing adheres to the skin, LEAVE IT ON. Do NOT force removal -- cut around it instead.")

#v(4pt)
#decision-box("Is clothing stuck to the burn?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Leave stuck clothing in place. Cut around it with scissors. Do NOT pull it off.],
  no-branch[Gently remove the clothing from the burn area. Remove constrictive items (shoes, watches, jewellery, rings).],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 3
#step-box(3, "Cool the burn under cool (lukewarm, NOT ice-cold) running water for a MINIMUM of 20 MINUTES.",
  detail: "Begin cooling as soon as possible. Use cool or lukewarm running water (mim poshrim). The 20-minute cooling period is critical -- this is the single most important first aid intervention.",
  warning: "Do NOT use ice or ice-cold water. Extreme cold can cause additional tissue and blood vessel damage, worsening the injury.")

#v(6pt)
#arrow-down()
#v(4pt)

// Step 4
#step-box(4, "Monitor the child for hypothermia during cooling.",
  detail: "Children are more susceptible to hypothermia from prolonged cooling. Cool the BURN, not the whole child -- avoid immersing the whole child in cold water. Keep the rest of the body warm.",
  warning: "Watch for shivering, which indicates the child is getting too cold. Infants and small children are at highest risk.")

#v(4pt)
#decision-box("Is the child showing signs of hypothermia (shivering, cold to touch)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Switch to cold-soaked cloths/bandages applied to the burn area, changing every few minutes. Keep the rest of the body covered and warm.],
  no-branch[Continue cooling the burn under lukewarm running water until the full 20 minutes have elapsed.],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 5
#step-box(5, "Assess burn severity.",
  detail: "First-degree: redness, mild swelling, pain (like sunburn), heals 1-2 weeks. Second-degree: blisters, bright red-pink, severe pain; deeper may appear white. Third-degree: white, grey, yellow-brown, or black with stiff dry texture, tissue may be exposed.")

#v(4pt)
#decision-box("Is the burn severe? (2nd-degree with large blisters, 3rd-degree, large area, sensitive areas, or child under 1 year)")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Call 101 (MDA) immediately.* Continue first aid steps while waiting for emergency services.],
  no-branch[Continue first aid steps. Monitor for worsening. Seek medical evaluation if concerned.],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 6
#step-box(6, "Cover the burn with sterile, loosely-applied bandages or a clean, dry sheet.",
  detail: "After the 20-minute cooling period, cover the burn loosely. Use material that does NOT stick to skin. If no sterile dressing available, wrap bandage in water-soaked cloth. Continue moistening until arrival at hospital.",
  warning: "Do NOT use gauze pads or cotton wool directly on burns -- fibres adhere to damaged skin and cause further injury.")

#v(6pt)
#arrow-down()
#v(4pt)

// Step 7
#step-box(7, "Administer age-appropriate pain relief medication.",
  detail: "Give ibuprofen or paracetamol (acetaminophen) dosed by weight for children. Do not delay pain relief.")

#v(4pt)
#decision-box("Is the child old enough for oral medication and conscious?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Administer ibuprofen or paracetamol dosed by weight. Offer water in small sips to prevent dehydration.],
  no-branch[Do not give oral medication. Keep child calm and comfortable. Ensure emergency services have been called.],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 8
#step-box(8, "Offer water in small sips to prevent dehydration.",
  detail: "Especially important for children with larger or multiple burns. Dehydration risk is higher in children due to smaller body mass.")

#v(6pt)
#arrow-down()
#v(4pt)

// Step 9
#step-box(9, "Call 101 (MDA) for guidance.",
  detail: "Call MDA immediately for serious burns. MDA dispatchers can guide through first aid steps while dispatching an ambulance.")

#v(4pt)
#decision-box("Is the child under 1 year, or does the burn affect sensitive areas, or is the burn worse than a minor first-degree burn?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Call 101 immediately.* All burns in infants under 1 year require immediate medical attention, regardless of apparent severity.],
  no-branch[For mild first-degree burns only: apply relief creams after cooling (trolamine/Biafine, bepanthen, or similar). Monitor for infection (redness, swelling, fever, pus). Seek medical attention if symptoms worsen.],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 10
#step-box(10, "Assess for chemical burn.")

#v(4pt)
#decision-box("Was the burn caused by a chemical substance?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Remove contaminated clothing carefully, protecting yourself. Rinse with massive amount of cool running water for at least 20 minutes. If chemical in eyes, flush eyes for at least 15 minutes. Do NOT attempt chemical neutralisation. *Call 101 immediately.*],
  no-branch[Assess for electrical burn (next step).],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 11
#step-box(11, "Assess for electrical burn.")

#v(4pt)
#decision-box("Was the burn caused by electricity?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Ensure power source is disconnected before approaching. *Call 101 immediately.* Electrical burns always require medical evaluation -- internal damage may not be visible. Be prepared to perform CPR if child becomes unresponsive.],
  no-branch[Continue monitoring the child until emergency services arrive or the child receives medical evaluation.],
)

#v(6pt)
#arrow-down()
#v(4pt)

// Step 12
#step-box(12, "Monitor for complications while waiting for emergency services.",
  detail: "Watch for signs of infection (redness, warmth, pus, fever), respiratory issues (if face/neck/airway burn is suspected), signs of shock, and continued hypothermia risk. Keep the child warm, calm, and reassured.")

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT apply ice or ice-cold water to the burn -- extreme cold causes additional tissue and blood vessel damage.",
  "Do NOT apply toothpaste, coffee grounds, raw eggs, yogurt, or butter -- these trap heat and increase infection risk.",
  "Do NOT puncture or pop blisters -- the fluid inside protects tissue and prevents infection.",
  "Do NOT apply ointments, oils, powders, or similar substances to serious burns before medical evaluation.",
  "Do NOT use gauze pads or cotton wool directly on burns -- fibres adhere to damaged skin.",
  "Do NOT leave the child unattended if unconscious -- call 101 immediately.",
  "Do NOT remove clothing that is stuck to the burn -- cut around it instead.",
  "Do NOT immerse the whole child in cold water -- cool the burn, not the child. High hypothermia risk.",
  "Do NOT attempt chemical neutralisation on chemical burns.",
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
    - Cool (lukewarm) running water source\
    - Sterile non-adherent dressings or clean dry sheet\
    - Scissors (to cut clothing around stuck areas)\
    - Blanket or towel (to keep child warm during cooling and prevent hypothermia)\
    - Age-appropriate pain relief medication (ibuprofen or paracetamol, dosed by weight)\
    - Drinking water (for hydration)
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
