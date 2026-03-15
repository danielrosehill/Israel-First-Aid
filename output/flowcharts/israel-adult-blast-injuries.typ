// First Aid Protocol Flowchart — Blast / Shrapnel Injuries (Adult, Israel)
// Generated from protocol IL-ADULT-BLAST-INJURIES-001
// Source: Magen David Adom (MDA)
// Font: IBM Plex Sans with IBM Plex Sans Hebrew fallback

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

// === DOCUMENT HEADER ===

#align(center)[
  #text(size: 22pt, weight: "bold")[Blast / Shrapnel Injuries — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-BLAST-INJURIES-001]
]

#v(8pt)

// Primary emergency number
#emergency-box("101", [MDA (#heb[מד״א])])

#v(4pt)

// All emergency numbers strip
#all-emergency-numbers()

#v(6pt)

// When to apply
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt, fill: rgb("#5b21b6"))[When to apply:]
  #v(4pt)
  #text(size: 10pt)[Person has been injured by an explosion, blast, or shrapnel. Signs include: visible wounds from shrapnel or debris, active bleeding, burns, signs of shock (rapid pulse, pale/cold skin, confusion), difficulty breathing, hearing loss, visible embedded objects. Blast victims frequently have injuries from multiple mechanisms simultaneously.]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#ecfdf5"),
  stroke: 1pt + rgb("#059669"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt, fill: rgb("#065f46"))[Summary:]
  #v(4pt)
  #text(size: 10pt)[Ensure scene safety, call 101, control life-threatening hemorrhage using direct pressure, Israeli bandage, wound packing, or tourniquet, stabilise embedded objects, monitor for shock, and treat burns while awaiting MDA.]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Confirm scene safety before approaching.",
  detail: "Do not approach until security forces confirm the area is safe. Be aware of secondary devices (second bombs), structural collapse, fire, and ongoing threats. Your safety comes first -- you cannot help the victim if you are wounded.",
  warning: "Secondary devices (second bombs) are a known tactic in Israel. Maintain distance until the area is declared safe.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Call MDA at 101.",
  detail: "Report the location, number of casualties, and type of incident (explosion/blast). If there are multiple casualties, report this immediately so MDA can activate mass-casualty protocols.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 3
#step-box(3, "Assess for life-threatening hemorrhage.",
  detail: "Quickly scan the victim for severe bleeding. Hemorrhage control is the life-saving priority. MDA's approach is 'scoop and run': perform only immediate life-saving treatment, then prepare for rapid evacuation.")

#v(4pt)

// Decision point for Step 3
#decision-box("Is there life-threatening bleeding from a limb?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed immediately to hemorrhage control (Step 4). Hemorrhage control takes priority over all other interventions.],
  no-branch[Check for other injuries (embedded objects, burns, breathing difficulty). Proceed to Step 7.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4
#step-box(4, "Apply direct pressure to the bleeding site.",
  detail: "Apply your hand or sterile gauze directly to the wound. Maintain continuous pressure to allow clot formation. Transition to an Israeli bandage (emergency bandage) when possible -- its dual-pad design creates direct pressure while wrapping around the wound.")

#v(4pt)

// Decision point for Step 4
#decision-box("Has the bleeding stopped or slowed significantly with direct pressure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain pressure or secure with an Israeli bandage. Verify pulse distal to the bandage to confirm no arterial blockage. Proceed to check for other injuries (Step 7).],
  no-branch[Escalate to wound packing (Step 5) or tourniquet application (Step 6).],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5
#step-box(5, "Pack large wounds if direct pressure is insufficient.",
  detail: "For large wounds in limbs, shoulders, or groin, fill the wound with gauze to create internal pressure. Secure with bandaging over the top.")

#v(4pt)

// Decision point for Step 5
#decision-box("Has wound packing controlled the bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Secure the packing with bandaging and proceed to check for other injuries (Step 7).],
  no-branch[Apply a tourniquet (Step 6).],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "Apply a tourniquet for uncontrollable limb hemorrhage.",
  detail: "Apply when direct pressure and wound packing fail, or when there is amputation, severe crushing injury, or uncontrollable hemorrhage. Also apply in multi-casualty situations where you cannot maintain pressure on every wound. Place the tourniquet above the injury site, tighten until bleeding stops, and document the time of application in an obvious location.",
  warning: "Do NOT remove the tourniquet once applied -- only medical professionals should make this decision. If bleeding does not stop, apply a second tourniquet above the first one.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7
#step-box(7, "Check for and stabilise embedded objects.",
  detail: "If shrapnel or debris is embedded in the body, do NOT remove or move it. Apply pressure on either side of the object and stabilise it in place if possible.",
  warning: "Never remove embedded objects -- removal may cause uncontrollable bleeding.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8
#step-box(8, "Look for additional wounds.",
  detail: "Blast victims often have multiple injury sites from different mechanisms (shrapnel, blast displacement, burns). Examine the entire body for wounds beyond the most obvious one.")

#v(4pt)

// Decision point for Step 8
#decision-box("Are there additional bleeding wounds found?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply hemorrhage control to each wound using the same graduated approach (direct pressure, wound packing, tourniquet as needed).],
  no-branch[Continue to monitoring and burn assessment.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 9
#step-box(9, "Assess and treat burns.",
  detail: "Burns are present in approximately 33% of ICU-admitted blast patients. Cool burns with clean water if available. Do not remove clothing stuck to burns. Cover with clean, non-adherent dressing.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 10
#step-box(10, "Monitor for shock and reassure the victim.",
  detail: "Watch for signs of shock: rapid pulse, pale or cold skin, confusion, rapid breathing. Speak to the victim and try to reassure them. Do not let them move until MDA arrives. Keep the victim warm.")

#v(4pt)

// Decision point for Step 10
#decision-box("Is the victim conscious and breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring and reassurance. Keep the victim still and warm until MDA arrives.],
  no-branch[If unconscious but breathing, place in recovery position (on their side). If not breathing, begin CPR immediately (30:2 compression-to-ventilation ratio). Report status to MDA dispatch.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT approach the scene until security forces confirm it is safe -- secondary devices (second bombs) are a known tactic.",
  "DO NOT remove embedded shrapnel or debris from the body -- this may cause uncontrollable bleeding.",
  "DO NOT remove a tourniquet once it has been applied -- only medical professionals should make this decision.",
  "DO NOT remove clothing that is stuck to burns.",
  "DO NOT let the victim move or walk until MDA arrives.",
  "DO NOT use head-tilt for airway management in blast/trauma victims -- use jaw-thrust manoeuvre to protect the cervical spine.",
  "DO NOT administer epinephrine in hypovolemic trauma -- blood vessels are already maximally constricted from shock (EMT/paramedic-level note).",
  "DO NOT assume only one injury site -- blast victims typically have injuries from multiple mechanisms simultaneously.",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "Phone to call 101 (MDA)",
  "Sterile gauze or clean cloth for direct pressure",
  "Israeli bandage (emergency bandage)",
  "Gauze for wound packing",
  "Tourniquet (CAT tourniquet preferred; improvised tourniquet as last resort)",
  "Non-adherent dressings for burns",
  "Clean water for cooling burns",
  "Blanket for warmth",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — MDA First Aid Guidelines - Blast and Shrapnel Injuries \
  Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
