// First Aid Protocol Flowchart — Spider Bites — Child — Israel
// Generated from: IL-CHILD-SPIDER-BITES-001
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

// === PAGE 1: INITIAL CARE & MONITORING ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[SPIDER BITES — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child (including Infants)]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[Brown Recluse & Black Widow]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 if the child develops systemic symptoms: severe pain, abdominal cramps, difficulty breathing, chest tightness, excessive sweating, altered consciousness, or if a black widow bite is suspected. Call for any spider bite in an infant or toddler. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Move the child away from the spider. If safely possible, capture or photograph the spider for identification.",
  detail: "Do not attempt to handle the spider directly. If the spider can be safely trapped under a glass or container, do so for hospital identification. A photograph from a safe distance is also helpful. Knowing the species guides hospital treatment decisions (antivenom for black widow).",
  warning: "Do NOT attempt to catch the spider if there is any risk of additional bites."
)

#arrow-down()

#step-box(2, "Wash the bite area with water and soap.",
  detail: "Clean the bite site gently with water and soap to reduce infection risk. Do not apply antiseptic, alcohol, or any other substance."
)

#arrow-down()

#step-box(3, "Apply a cold compress to reduce pain and swelling.",
  detail: "Apply ice or a cold compress wrapped in cloth to the bite area for 10-15 minutes. This helps reduce pain and local swelling. Remove for 10 minutes, then reapply.",
  warning: "Wrap ice in cloth -- do not apply ice directly to skin, especially on a child's sensitive skin."
)

#arrow-down()

#step-box(4, "Keep the bitten limb immobilised and at heart level.",
  detail: "Immobilise the bitten limb to slow venom distribution. Keep the limb at approximately heart level. Have the child lie down or sit still."
)

#arrow-down()

#step-box(5, "Monitor for systemic symptoms.",
  detail: "Watch closely for: severe or spreading pain, redness spreading along lymph pathways, abdominal cramps, difficulty breathing or swallowing, excessive sweating, muscle cramps (spreading to abdomen, back, chest), nausea/vomiting, elevated blood pressure, altered consciousness. In children, systemic symptoms develop faster due to lower body weight. Infants and toddlers cannot describe symptoms -- watch for irritability, unusual crying, poor feeding, and changes in behaviour."
)

#arrow-down()

#decision-box("Is the child developing systemic symptoms (severe pain, abdominal cramps, breathing difficulty, sweating, muscle cramps)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 immediately if not already done. This may be a black widow bite requiring antivenom. Keep the child calm and still. Prepare for transport to hospital.],
  no-branch[Continue monitoring closely. Seek medical evaluation for all spider bites in children, even if no systemic symptoms are present.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: IDENTIFICATION & TRANSPORT ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[SPIDER BITES — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Species Identification & Hospital Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(6, "Identify the spider species if possible.",
  detail: "Brown Recluse (shshan chum): small, brown, long legs, lives indoors. Bite barely felt initially, effects appear hours later. Causes local tissue damage and potentially necrotic ulcer. Black Widow (almana shchora): black with markings, found outdoors in gardens and stone walls. Bite causes immediate pain, burning, and rapid systemic symptoms. Female bite is the dangerous one."
)

#arrow-down()

#decision-box("Is the spider identified as or suspected to be a Black Widow?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 immediately. Black widow antivenom is available at Israeli hospitals. Transport urgently. Black widow venom effects can be more severe in children, including respiratory distress.],
  no-branch[Seek medical evaluation. Brown recluse bites require monitoring for delayed necrotic wound development. Hospital observation may be recommended for young children even with mild bites.],
)

#arrow-down()

#step-box(7, "Transport to hospital for medical evaluation.",
  detail: "All spider bites in children should receive medical evaluation due to the greater venom-to-body-weight ratio. Bring the captured/photographed spider if available. Report the time of bite, symptoms observed, and any changes in the child's condition. Hospital may check tetanus vaccination status. The first 6-8 hours are critical for determining recovery and preventing permanent tissue damage."
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Apply a tourniquet -- tourniquets worsen envenomation outcomes by concentrating venom in the limb.",
  "Cut the bite site -- causes additional injury and does not remove venom.",
  "Attempt to suck out the venom -- ineffective and risks infection.",
  "Apply antiseptic, alcohol, or any substance other than water and soap to the bite.",
  "Bandage tightly over the bite site.",
  "Delay medical evaluation for any spider bite in a child -- children are more vulnerable to venom effects.",
  "Ignore a painless bite -- brown recluse bites are often painless initially but can develop serious necrotic wounds hours later.",
  "Give the child medications (painkillers, antihistamines) without medical direction.",
))

#v(6pt)

#equipment-box((
  "Water and soap (for wound cleaning)",
  "Ice or cold compress wrapped in cloth",
  "Container or glass (to safely capture the spider for identification)",
  "Phone (to call 101 and photograph the spider)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-SPIDER-BITES-001
]
