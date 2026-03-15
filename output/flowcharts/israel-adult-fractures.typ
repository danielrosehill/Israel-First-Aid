// First Aid Protocol Flowchart — Fractures and Sprains (Adult) — Israel
// Generated from: protocols/adult/israel/fractures.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "FRACTURES AND SPRAINS FIRST AID PROTOCOL (ADULT)"
#let protocol-category = "fractures"
#let country = "Israel"
#let age-group = "Adult"
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES →] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO →] #content
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
]

#v(6pt)

// Emergency number — prominent
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 10pt)[Call 101 immediately for:] #text(size: 9pt)[any suspected fracture; open fractures (bone visible through skin); fractures involving the head, neck, spine, pelvis, or hip; loss of sensation or circulation below the injury; signs of shock; inability to immobilise the injury adequately; multiple injuries or high-energy mechanism (fall from height, road traffic accident); or any doubt about the severity of the injury.]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#7c3aed"))[When to apply:] #text(size: 9pt)[When an adult has sustained an injury to a bone or joint. Signs include severe pain worsening with movement, swelling and bruising, visible deformity, inability to move the affected limb, possible crepitus, or a popping sensation at the time of injury.]
]

#v(6pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Call MDA at 101.",
  detail: "Keep the call on speaker and provide your location. MDA can provide phone guidance on how to manage the injury at the scene."
)

#arrow-down()

// Step 2
#step-box(2, "Assess whether the injury is a fracture or a sprain.",
  detail: "A fracture typically presents with severe pain that worsens with movement, visible deformity, inability to move the limb, and rapid swelling. A sprain presents with joint pain, swelling, bruising, and limited joint movement but no deformity. If in doubt, treat as a fracture."
)

#v(4pt)

#decision-box("Does the injury show signs of a fracture (deformity, severe pain, inability to move the limb, crepitus)?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 3 to assess fracture type.],
  no-branch[If the injury appears to be a sprain (joint pain, swelling, no deformity), proceed to Step 9 for RICE protocol.],
)

#arrow-down()

// Step 3
#step-box(3, "Determine whether the fracture is open or closed.",
  detail: "An open fracture means the bone has pierced through the skin, creating a wound. A closed fracture means the bone is broken but the skin remains intact."
)

#v(4pt)

#decision-box("Is there a wound with bone visible or protruding through the skin (open fracture)?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[This is a medical emergency. Proceed to Step 4 for open fracture management.],
  no-branch[This is a closed fracture. Proceed to Step 6 for closed fracture management.],
)

#v(6pt)

// === OPEN FRACTURE PATH ===
#rect(
  fill: rgb("#fef2f2"),
  stroke: 2pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 6pt,
)[
  #align(center)[#text(fill: rgb("#dc2626"), weight: "bold", size: 12pt)[OPEN FRACTURE PATH]]
]

#v(4pt)

// Step 4
#step-box(4, "Open fracture: Control bleeding.",
  detail: "Apply direct pressure around (not on) the protruding bone to stop bleeding. If bleeding is severe and cannot be controlled with direct pressure, use a tourniquet.",
  warning: "Do NOT push the bone back in. Leave it as found."
)

#arrow-down()

// Step 5
#step-box(5, "Open fracture: Cover the wound and immobilise.",
  detail: "Cover the exposed bone and wound with a sterile dressing or clean cloth. Support the limb in the position found and do not attempt to realign. Monitor for shock -- keep the patient lying down, warm, and reassured. Open fractures carry a high risk of blood loss and shock. Continue to Step 8."
)

#arrow-down()

#text(size: 10pt, fill: rgb("#6b7280"))[Continue to Step 8 (cold therapy and monitoring).]

#v(6pt)

// === CLOSED FRACTURE PATH ===
#rect(
  fill: rgb("#f0f9ff"),
  stroke: 2pt + rgb("#3b82f6"),
  radius: 6pt,
  width: 100%,
  inset: 6pt,
)[
  #align(center)[#text(fill: rgb("#3b82f6"), weight: "bold", size: 12pt)[CLOSED FRACTURE PATH]]
]

#v(4pt)

// Step 6
#step-box(6, "Closed fracture: Do NOT move the limb unnecessarily.",
  detail: "Allow the injured person to sit or lie in the most comfortable position. Do NOT attempt to straighten the limb, pull it, or return a bone to its place -- such actions may tear arteries and nerves.",
  warning: "Do NOT attempt to straighten or realign the limb. This may cause further damage to blood vessels and nerves."
)

#arrow-down()

// Step 7
#step-box(7, "Closed fracture: Immobilise the injured area.",
  detail: "The core principle is 'minimum movement, maximum stability'."
)

#v(4pt)

#decision-box("Is the fracture in the arm or upper limb?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Support the injured arm with the person's healthy hand. Use an improvised sling (shirt, scarf, triangular bandage) and attach it to the chest. Place the apex of the triangle at the elbow, pass one side under the affected area and one above, and tie at the neck.],
  no-branch[For leg or lower limb fractures: ask the person not to move the leg. Place pillows or rolled blankets on both sides of the leg to prevent involuntary movement. For thigh fractures and below, use a triangular cloth above the injury site and tie firmly, securing the knot on the uninjured leg.],
)

#arrow-down()

// Step 8 — shared by both paths
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 2pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 6pt,
)[
  #align(center)[#text(fill: rgb("#7c3aed"), weight: "bold", size: 12pt)[BOTH FRACTURE PATHS CONVERGE HERE]]
]

#v(4pt)

#step-box(8, "Apply cold therapy and remove restrictive items.",
  detail: "Apply ice wrapped in a cloth (never directly on skin) to reduce swelling and pain. Apply for 15-minute intervals. Remove rings, bracelets, watches, and jewellery immediately from the affected limb to prevent tourniquet effects as swelling occurs. Monitor for signs of shock (pale skin, rapid breathing, weak pulse) and keep the patient warm and comfortable until MDA arrives.",
  warning: "Do NOT apply ice directly to skin -- always wrap in cloth."
)

#v(10pt)

// === SPRAIN PATH ===
#rect(
  fill: rgb("#f0fdf4"),
  stroke: 2pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 6pt,
)[
  #align(center)[#text(fill: rgb("#16a34a"), weight: "bold", size: 12pt)[SPRAIN PATH (RICE PROTOCOL)]]
]

#v(4pt)

// Step 9
#step-box(9, "Sprain: Apply the RICE protocol -- Rest.",
  detail: "Stop all activity involving the injured joint. Do not bear weight on the injured limb."
)

#arrow-down()

// Step 10
#step-box(10, "Sprain: Ice.",
  detail: "Apply an ice pack wrapped in a cloth to the injured area for 15--20 minutes every 2--3 hours. Continue for the first 48--72 hours after injury. Do NOT apply ice directly to skin.",
  warning: "Do NOT apply ice directly to skin -- always wrap in cloth."
)

#arrow-down()

// Step 11
#step-box(11, "Sprain: Compression.",
  detail: "Bandage the area firmly but not too tightly around, above, and below the injury using an elastic bandage if available. The bandage should reduce swelling without cutting off circulation."
)

#v(4pt)

#decision-box("Do the fingers or toes below the bandage become numb, pale, or blue?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Loosen the bandage immediately -- circulation is being compromised.],
  no-branch[Bandage tension is appropriate. Continue to elevation.],
)

#arrow-down()

// Step 12
#step-box(12, "Sprain: Elevation.",
  detail: "Elevate the injured limb above the level of the heart using pillows or cushions. This helps reduce swelling by promoting fluid drainage."
)

#arrow-down()

// Step 13
#step-box(13, "Determine whether the sprain requires emergency evaluation.",
  detail: "Some sprains may actually be fractures and cannot be distinguished without imaging."
)

#v(4pt)

#decision-box("Can the person bear no weight at all on the limb, is there visible deformity, is pain severe and unrelenting, has numbness developed below the injury, or is swelling extreme and not improving with RICE?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call MDA at 101 or go to an emergency department for further evaluation. Treat as a possible fracture.],
  no-branch[Continue RICE at home and seek medical evaluation if symptoms do not improve within 48--72 hours.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT attempt to straighten or realign a broken limb -- this may tear arteries and nerves.",
  "Do NOT push a protruding bone back in during an open fracture.",
  "Do NOT apply ice directly to skin -- always wrap in cloth first.",
  "Do NOT apply heat to a fresh fracture or sprain -- heat increases swelling.",
  "Do NOT allow the patient to walk on a suspected leg fracture.",
  "Do NOT remove embedded objects from a wound associated with a fracture.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 11pt, weight: "bold", fill: rgb("#92400e"))[Equipment needed:]
  #v(4pt)
  #text(size: 9pt)[
    - Triangular bandage or improvised sling (shirt, scarf) \
    - Ice pack or cooling spray (wrapped in cloth) \
    - Elastic bandage (for compression of sprains) \
    - Pillows, blankets, or rolled towels (for leg immobilisation and elevation) \
    - Sterile dressings or clean cloth (for open fracture wounds) \
    - Tourniquet (for severe bleeding in open fractures)
  ]
]

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · Protocol ID: IL-ADULT-FRACTURES-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
