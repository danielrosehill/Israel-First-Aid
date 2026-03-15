// First Aid Protocol Flowchart — Tourniquet Application (Adult, Israel)
// Generated from protocol IL-ADULT-TOURNIQUET-001
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
  #text(size: 22pt, weight: "bold")[Tourniquet Application — Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
  #v(2pt)
  #text(size: 9pt, fill: rgb("#9ca3af"))[ID: IL-ADULT-TOURNIQUET-001]
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
  #text(size: 10pt)[Life-threatening bleeding from a limb that cannot be controlled by direct pressure. Specific indications: direct pressure fails to control bleeding, partial or complete amputation, severe crushing injury to a limb, uncontrollable hemorrhage from a limb wound, multi-casualty situations where sustained direct pressure on each wound is not feasible, circumstances preventing sustained direct pressure (need to move casualty, treat others, or environment is too dangerous).]
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
  #text(size: 10pt)[Apply a tourniquet for life-threatening limb hemorrhage when direct pressure fails, for amputations, severe crushing injuries, or multi-casualty situations. Place above the injury, tighten until bleeding stops, document the time, and never remove once applied.]
]

#v(8pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Attempt direct pressure first (unless circumstances demand immediate tourniquet).",
  detail: "MDA teaches a progressive approach: direct pressure with hand or gauze, then Israeli bandage, then wound packing, then pressure points, then tourniquet. In multi-casualty or active-threat situations, skip directly to tourniquet.")

#v(4pt)

// Decision point for Step 1
#decision-box("Is direct pressure controlling the bleeding, or is the situation stable enough for graduated hemorrhage control?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue with direct pressure. Apply an Israeli bandage to maintain sustained pressure. Verify pulse distal to the bandage. Monitor closely.],
  no-branch[Proceed immediately to tourniquet application (Step 2). Apply a tourniquet when: direct pressure fails, there is amputation or crushing, you are in a multi-casualty situation, or you cannot maintain sustained pressure.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 2
#step-box(2, "Expose the wound.",
  detail: "Cut or remove clothing to identify the bleeding source and determine correct tourniquet placement.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 3
#step-box(3, "Position the tourniquet above the injury site.",
  detail: "Place the tourniquet between the wound and the heart, on the limb above the bleeding site. Position over a single bone if possible -- upper arm or upper thigh is preferred for most effective compression.",
  warning: "Tourniquets are NOT suitable for junctional zones (groin, armpit, neck), head wounds, or abdominal wounds. For these locations, use direct pressure, wound packing, or pressure points instead.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 4
#step-box(4, "Tighten the tourniquet strap and secure it.",
  detail: "Pull the strap tight and fasten it. If using a CAT tourniquet, proceed to twist the windlass.")

#v(4pt)

// Decision point for Step 4
#decision-box("Are you using a commercial tourniquet (CAT or similar)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Twist the windlass rod (Step 5) until bleeding stops completely.],
  no-branch[If improvising (shirt, towel, belt, etc.), apply as tightly as possible until bleeding stops. Improvised tourniquets are less reliable but can be effective as a last resort.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 5
#step-box(5, "Twist the windlass until bleeding stops.",
  detail: "On a CAT tourniquet, turn the windlass rod until bleeding stops completely. Then secure the windlass by locking the rod in the clip or holder so it cannot unwind.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 6
#step-box(6, "Verify that bleeding has stopped.",
  detail: "Check that there is no further blood flow from the wound.")

#v(4pt)

// Decision point for Step 6
#decision-box("Has the bleeding stopped completely?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to document the time (Step 7).],
  no-branch[Apply a second tourniquet above the first one. Tighten and verify again.],
)

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 7
#step-box(7, "Document the time of tourniquet application.",
  detail: "Write the time on the tourniquet's white tab, on the patient's skin, or in any obvious visible location. This is critical -- hospital teams need this information to assess whether the limb can be saved.",
  warning: "Time documentation is critical for limb viability assessment. If you forget, estimate the time as accurately as possible.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 8
#step-box(8, "Call MDA at 101.",
  detail: "Always mention that a tourniquet has been applied when calling emergency services. Report the location, the injury, and the time the tourniquet was applied.")

#v(4pt)
#align(center)[#text(size: 14pt, fill: rgb("#3b82f6"), weight: "bold")[|]]
#v(4pt)

// Step 9
#step-box(9, "Monitor the victim while awaiting MDA.",
  detail: "Watch for signs of shock (rapid pulse, pale/cold skin, confusion). Keep the victim calm and still. Do not allow them to walk or move the affected limb.")

#v(4pt)

// Decision point for Step 9
#decision-box("Is the victim conscious and breathing?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring and reassurance until MDA arrives. Keep the victim warm.],
  no-branch[If unconscious but breathing, place in recovery position. If not breathing, begin CPR. Report status change to MDA dispatch.],
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "DO NOT remove the tourniquet once applied -- only medical professionals should decide whether to release or convert a tourniquet.",
  "DO NOT apply a tourniquet to junctional zones (groin, armpit, neck), head, or abdomen -- use direct pressure, wound packing, or pressure points for these areas.",
  "DO NOT apply the tourniquet over a joint -- place it on the limb above the wound, preferably over a single bone (upper arm or upper thigh).",
  "DO NOT loosen or adjust the tourniquet to 'check if bleeding has stopped' -- this can restart hemorrhage.",
  "DO NOT delay tourniquet application in life-threatening hemorrhage due to fear of limb loss -- loss of a limb is preferable to loss of life.",
  "DO NOT allow the victim to walk or move the affected limb after tourniquet application.",
  "DO NOT attempt tourniquet conversion (replacing tourniquet with direct pressure) -- this is a professional-level decision under medical direction only.",
))

#v(8pt)

// === EQUIPMENT ===
#equipment-box((
  "CAT tourniquet (Combat Application Tourniquet) -- preferred",
  "Improvised tourniquet material (shirt, towel, belt) as last resort",
  "Scissors or Leatherman Raptor for cutting clothing to expose the wound",
  "Pen or marker to document tourniquet application time",
  "Phone to call 101 (MDA)",
))

#v(1fr)

// === FOOTER ===
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) — MDA First Aid Guidelines - Tourniquet Application and Hemorrhage Control \
  Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]
