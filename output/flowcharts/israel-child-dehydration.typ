// First Aid Protocol Flowchart — Dehydration — Child — Israel
// Generated from: IL-CHILD-DEHYDRATION-001
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

// === PAGE 1: ASSESSMENT & ORAL REHYDRATION ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[DEHYDRATION — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child (including Infants)]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 if the child refuses to drink, has persistent vomiting, has blood in stool, has fever above 40C, shows signs of severe dehydration (lethargy, sunken fontanelle, no tears, rapid weak pulse, cool/mottled extremities, altered consciousness), or is an infant under 3 months with any signs of dehydration. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Move the child to a cool, shaded environment.",
  detail: "Remove the child from heat exposure. Move indoors to an air-conditioned space if possible, or to the nearest shade. Remove excess clothing."
)

#arrow-down()

#step-box(2, "Assess the severity of dehydration.",
  detail: "Mild: dry mouth, decreased urine output, slightly sunken eyes, thirst. Moderate: no tears when crying, sunken fontanelle in infants under 18 months, decreased skin turgor (skin pinch stays tented), lethargy. Severe: very sunken fontanelle, very dry mucous membranes, rapid weak pulse, cool or mottled extremities, altered consciousness."
)

#arrow-down()

#decision-box("Does the child show signs of severe dehydration (altered consciousness, rapid weak pulse, very sunken fontanelle, cool/mottled extremities)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 immediately. This is a medical emergency. The child likely needs IV fluids. Continue with supportive care while waiting for emergency services.],
  no-branch[Begin oral rehydration. Proceed to Step 3.],
)

#arrow-down()

#step-box(3, "Check the fontanelle in infants under 18 months.",
  detail: "The anterior fontanelle (soft spot on top of the head) is open until approximately 18 months of age. Gently palpate it. A sunken fontanelle is a key indicator of dehydration in infants. A bulging fontanelle may indicate other conditions (increased intracranial pressure) -- seek immediate medical care."
)

#arrow-down()

#step-box(4, "Begin oral rehydration with electrolyte-containing fluids.",
  detail: "Use ORS (Oral Rehydration Solution) packets available at Israeli pharmacies (beit mirkachat). Mix as directed on the packet. For infants: give small frequent sips using a spoon or oral syringe. For older children: encourage frequent small sips. Continue breastfeeding if the infant is breastfed.",
  warning: "Do NOT give cola, fruit juice, plain water alone, or tea -- these do not adequately replace lost electrolytes and can worsen dehydration."
)

#arrow-down()

#decision-box("Is ORS available?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Prepare ORS as directed on the packet and give small frequent sips.],
  no-branch[Use electrolyte-containing sports drinks diluted with equal parts water as a temporary alternative. Do NOT use homemade salt/sugar solutions unless no other option exists.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: MONITORING & TRANSPORT ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[DEHYDRATION — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Monitoring, Feeding & Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(5, "Assess whether the child can drink.",
  detail: "Monitor the child's ability to tolerate oral fluids. Vomiting is common with gastroenteritis but small frequent sips are often still effective."
)

#arrow-down()

#decision-box("Can the child keep fluids down (not vomiting everything)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue oral rehydration with small frequent sips. Give 5-10 ml every 2-5 minutes for young children.],
  no-branch[Call 101. The child may need IV fluids. Do not force oral intake if the child is vomiting persistently.],
)

#arrow-down()

#step-box(6, "Monitor vital signs and urine output.",
  detail: "Check pulse rate, skin colour, alertness, and whether the child produces urine. Improvement signs include: resumption of urination, moist mouth, return of tears, improved alertness. Continue offering fluids until these signs appear."
)

#arrow-down()

#step-box(7, "Provide moderate salt-containing food if the child is alert and able to eat.",
  detail: "Once the child is tolerating fluids, offer salty crackers or pretzels to help replace sodium. Do not force food. Priority is fluids first."
)

#arrow-down()

#step-box(8, "Transport to hospital if dehydration is moderate or severe, or if the child does not improve.",
  detail: "All infants under 3 months with any signs of dehydration should be taken to hospital. Children with moderate dehydration who are not improving with oral rehydration need medical evaluation. Children with fever above 40C, blood in stool, or yellow/green vomit require emergency evaluation."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Give cola, fruit juice, plain water alone, or tea -- these do not replace electrolytes adequately and can worsen dehydration.",
  "Use homemade salt/sugar solutions unless ORS is completely unavailable.",
  "Force large volumes of fluid at once -- small frequent sips are more effective and better tolerated.",
  "Delay calling 101 for an infant under 3 months with any signs of dehydration.",
  "Ignore a sunken fontanelle in an infant -- this is a key dehydration indicator.",
  "Give anti-diarrhoea medications to children without medical direction.",
  "Stop breastfeeding -- continue breastfeeding alongside ORS.",
))

#v(6pt)

#equipment-box((
  "ORS (Oral Rehydration Solution) packets",
  "Spoon or oral syringe (for infant fluid administration)",
  "Phone (to call 101)",
  "Thermometer (to check for fever)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-DEHYDRATION-001
]
