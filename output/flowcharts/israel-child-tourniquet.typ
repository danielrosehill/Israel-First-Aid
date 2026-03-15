// First Aid Protocol Flowchart — Tourniquet Application — Child — Israel
// Generated from: IL-CHILD-TOURNIQUET-001
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

// === PAGE 1: ASSESSMENT & APPLICATION ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[TOURNIQUET APPLICATION — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child (including Infants)]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 immediately for any child with life-threatening bleeding. Apply the tourniquet while waiting for emergency services -- do not delay haemorrhage control to make the call. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Identify life-threatening limb haemorrhage requiring a tourniquet.",
  detail: "A tourniquet is needed when bleeding from a limb is massive and uncontrollable with direct pressure, when the wound involves an amputation or near-amputation, or when direct pressure is impractical (multiple casualties, other injuries requiring attention)."
)

#arrow-down()

#decision-box("Is the bleeding from a limb and cannot be controlled with direct pressure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply a tourniquet immediately. Proceed to Step 2.],
  no-branch[Use direct pressure with sterile gauze or clean cloth to control bleeding. If bleeding is from the torso, neck, or junctional area, pack the wound and apply maximum direct pressure.],
)

#arrow-down()

#step-box(2, "Select the appropriate tourniquet for the child's limb size.",
  detail: "CAT (Combat Application Tourniquet) Gen 7: effective for most children aged approximately 2 years and above, with limb circumference of approximately 13-16 cm or greater. SWAT-T (elastic wrap) or RATS (ratcheting) tourniquet: effective across all pediatric sizes including very small limbs. For infants or very small toddlers with limbs under 13 cm circumference: use direct pressure and wound packing as primary method, or SWAT-T/RATS if available."
)

#arrow-down()

#decision-box("Is the child's limb large enough for a CAT tourniquet (approx. 13 cm circumference or greater, typically age 2+)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use the CAT tourniquet. Proceed to Step 3.],
  no-branch[Use a SWAT-T or RATS tourniquet if available. If no pediatric tourniquet is available, apply maximum direct pressure with wound packing, or improvise a tourniquet using a triangular bandage and windlass.],
)

#arrow-down()

#step-box(3, "Apply the tourniquet 5-7 cm (2-3 inches) proximal to the wound.",
  detail: "Place the tourniquet on the limb between the wound and the heart, approximately 5-7 cm (2-3 inches) above the wound. Apply it over a single bone (upper arm or upper leg) when possible, not over a joint. Do not apply directly over the wound.",
  warning: "Do NOT apply the tourniquet over a joint (elbow, knee). Place it on the upper arm or upper thigh for best effectiveness."
)

#arrow-down()

#step-box(4, "Tighten the tourniquet until bleeding stops.",
  detail: "For CAT tourniquet: pull the strap tight, then turn the windlass rod until bleeding stops. Secure the windlass in the clip. For SWAT-T: stretch and wrap the elastic band tightly around the limb, overlapping each layer, until bleeding stops. Check that distal bleeding has stopped completely.",
  warning: "Tourniquet application is extremely painful. Warn the child and parent. Pain is expected and necessary -- an insufficiently tight tourniquet is worse than no tourniquet (venous bleeding without arterial occlusion)."
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: POST-APPLICATION & MONITORING ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[TOURNIQUET — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Recording, Monitoring & Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(5, "Record the time of tourniquet application.",
  detail: "Write the time of application clearly on the tourniquet, on the child's skin near the tourniquet, or on a piece of tape attached to the child. Use 24-hour format. This information is critical for hospital staff.",
  warning: "Recording the time is essential. Prolonged tourniquet application can cause tissue damage, and hospital staff need this information to plan care."
)

#arrow-down()

#step-box(6, "Do NOT remove the tourniquet once applied.",
  detail: "Only hospital personnel should remove a tourniquet. Premature removal can cause recurrence of life-threatening bleeding and release of accumulated toxins into the bloodstream."
)

#arrow-down()

#step-box(7, "Re-assess and monitor the child frequently.",
  detail: "Check that bleeding has stopped. Check the tourniquet has not loosened. Monitor the child for signs of shock (rapid weak pulse, pallor, cool mottled skin, altered consciousness). Children decompensate rapidly from blood loss. Keep the child warm to prevent hypothermia."
)

#arrow-down()

#decision-box("Has the bleeding stopped after tourniquet application?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain the tourniquet in place. Monitor for shock. Transport urgently.],
  no-branch[Apply a second tourniquet proximal (closer to the body) to the first one. Tighten both. If bleeding still continues, apply maximum direct pressure in addition to the tourniquets.],
)

#arrow-down()

#step-box(8, "Transport urgently to hospital.",
  detail: "All tourniquet patients require urgent hospital care. Transport as quickly as possible. Report the time of tourniquet application, the device used, and the child's condition to arriving emergency services or hospital staff."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Remove a tourniquet once applied -- only hospital personnel should remove it.",
  "Apply a tourniquet for venomous animal bites (snakes, scorpions, spiders) -- tourniquets worsen envenomation outcomes.",
  "Apply a tourniquet over a joint (elbow, knee) -- place on upper arm or upper thigh.",
  "Apply a tourniquet too loosely -- an insufficiently tight tourniquet causes venous bleeding without arterial occlusion, worsening blood loss.",
  "Use a standard CAT tourniquet on very small infant limbs (under approx. 13 cm circumference) -- it will not be effective.",
  "Delay tourniquet application to attempt prolonged direct pressure on massive haemorrhage -- apply the tourniquet immediately.",
  "Forget to record the time of application.",
))

#v(6pt)

#equipment-box((
  "CAT (Combat Application Tourniquet) Gen 7 -- for children aged approx. 2+ with sufficient limb size",
  "SWAT-T tourniquet -- for all pediatric sizes including very small limbs",
  "RATS tourniquet -- alternative for all pediatric sizes",
  "Improvised tourniquet materials (triangular bandage + rigid windlass object) -- if no manufactured device available",
  "Marker or pen (to record time of application)",
  "Sterile gauze (for wound packing if needed)",
  "Phone (to call 101)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2026-01-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-TOURNIQUET-001
]
