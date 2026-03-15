// First Aid Protocol Flowchart — Severe Bleeding (Hemorrhage Control) — Adult — Israel
// Generated from: IL-ADULT-SEVERE-BLEEDING-001
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "SEVERE BLEEDING (HEMORRHAGE CONTROL)"
#let protocol-category = "severe_bleeding"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-03-15"
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
      CALL #number (#service) -- CALL IMMEDIATELY IF IN DOUBT
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
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
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
    #text(fill: rgb("#ca8a04"), weight: "bold", size: 12pt)[EQUIPMENT NEEDED:]
    #v(4pt)
    #for item in items [
      - #item \
    ]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country -- #age-group]
]

#v(8pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// When to apply
#rect(
  fill: rgb("#faf5ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", fill: rgb("#7c3aed"), size: 11pt)[WHEN TO APPLY:] Severe or uncontrolled external bleeding from any cause including trauma, amputation, crush injury, or penetrating injury. Signs include rapid spurting or steady flow of blood, pooling blood, blood-soaked clothing, or a severed or partially severed limb.
]

#v(6pt)

// --- FLOWCHART STEPS ---

#step-box(1, "Ensure scene safety and wear disposable gloves if available.",
  detail: "Do not approach the casualty until the scene is safe. Gloves are standard in Israeli first aid kits.")

#arrow-down()

#step-box(2, "Call 101 (Magen David Adom) immediately.",
  detail: "Provide location, number of casualties, and nature of injuries. If alone and bleeding is immediately life-threatening, begin hemorrhage control first and call as soon as possible.")

#arrow-down()

#step-box(3, "Check for embedded or impaled objects in the wound.")

#v(4pt)

#decision-box("Is there an embedded or impaled object (knife, shrapnel, glass, etc.) in the wound?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT remove the object. Stabilise it in place with padding and bandages around it. Apply pressure around the object, not on it. Skip to Step 11 (monitor for shock).],
  no-branch[Proceed to Step 4 (direct pressure).],
)

#arrow-down()

#step-box(4, "Apply strong, direct pressure to the source of bleeding with your gloved hand or sterile gauze.",
  detail: "Press firmly directly on the wound. Use your bare or gloved hand initially, then replace with a sterile bandage, towel, or clean cloth as soon as available. Maintain continuous, firm pressure without lifting to check -- this allows clot formation.")

#arrow-down()

#step-box(5, "If the first dressing soaks through, add additional layers on top without removing the original dressing.",
  detail: "Use a triangular bandage, sheet, or clean towel if additional material is needed. Never remove a blood-soaked dressing -- only add on top.")

#v(4pt)

#decision-box("Has direct pressure controlled the bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain pressure. Elevate the limb above heart level if possible (Step 6). Continue to Step 11 (monitor for shock).],
  no-branch[Proceed to Step 7 (apply Israeli bandage / pressure dressing).],
)

#arrow-down()

#step-box(6, "If possible, elevate the injured limb above heart level.",
  detail: "Elevation is an adjunct to direct pressure, not a replacement. It reduces blood flow to the injured area.")

#arrow-down()

#step-box(7, "Apply an Israeli Emergency Bandage (pressure dressing).",
  detail: "1) Apply the white sterile pad directly over the wound. 2) Wrap the elastic bandage around the injured area, passing through the pressure bar. 3) Reverse direction and continue wrapping to apply circumferential pressure. 4) Secure using the built-in closure bar.",
  warning: "The elastic component can occlude arteries. Verify distal pulse after application. The bandage should be tight enough to control bleeding but not so tight as to act as a tourniquet (unless that is the intent).")

#v(4pt)

#decision-box("Has the Israeli bandage controlled the bleeding?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain the dressing in place. Continue to Step 11 (monitor for shock).],
  no-branch[Assess wound location. If limb, go to Step 8b (tourniquet). If junctional area (groin, neck, axilla, shoulder), go to Step 8a (wound packing).],
)

#pagebreak()

// Page 2 header
#align(center)[
  #text(size: 18pt, weight: "bold")[#protocol-title (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country -- #age-group]
]

#v(4pt)
#emergency-box(emergency-number, emergency-service)
#v(6pt)

#step-box(8, "Escalate hemorrhage control: wound packing (junctional areas) or tourniquet (limbs).",
  detail: "Choose the appropriate method based on wound location.")

#v(4pt)

#decision-box("Is the wound on a limb (arm or leg)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply a tourniquet (Step 10).],
  no-branch[Apply wound packing for junctional wounds -- groin, neck, axilla, shoulder (Step 9).],
)

#arrow-down()

#step-box("9 (Wound Packing)", "Wound packing for junctional areas (groin, neck, axilla, shoulder).",
  detail: "1) Insert specialised hemostatic or plain gauze finger-by-finger into the wound. 2) Fill internally in a sunburst pattern to create internal pressure against the bleeding vessel. 3) Apply the attached dressing with direct pressure for 1-2 minutes. 4) Tighten bandage straps to maintain pressure.",
  warning: "Do NOT use wound packing for penetrating stab wounds. Do NOT enlarge wound openings to facilitate packing.")

#arrow-down()

#step-box("10 (Tourniquet)", "Apply a tourniquet for uncontrolled limb bleeding.",
  detail: "1) Place the tourniquet 5-10 cm above the source of bleeding (proximal, toward the heart). 2) Tighten the windlass/mechanism until bleeding completely stops. 3) Secure the windlass in place. 4) Record the time of application -- write on the casualty's forehead or another visible location: 'TQ' followed by the time in 4-digit format (e.g., 'TQ 1430'). 5) Leave approximately 15 cm of strap, which can be folded in an R-shape for visibility.",
  warning: "A tourniquet completely blocks blood flow distal to the application point, risking tissue death if left too long. A properly applied tourniquet will cause significant pain -- this is expected. Do NOT remove or loosen a tourniquet once applied unless instructed by a paramedic or physician.")

#arrow-down()

#step-box(11, "Monitor the casualty for signs of hypovolemic shock.",
  detail: "Watch for: rapid pulse, pale/cool/clammy skin, confusion, rapid breathing. Keep the casualty warm and lying down. Reassure the casualty and wait for MDA responders.")

#v(4pt)

#decision-box("Is the casualty showing signs of shock (rapid pulse, pale/cool/clammy skin, confusion, rapid breathing)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Keep the casualty lying down with legs elevated if no spinal injury is suspected. Keep them warm with a blanket or coat. Do not give food or drink. Urgently update the 101 dispatcher on the casualty's deterioration.],
  no-branch[Continue monitoring. Maintain hemorrhage control measures. Keep the casualty warm and reassured until MDA arrives.],
)

#v(10pt)

// Do Not list
#do-not-box((
  "Do not remove an embedded or impaled object from the wound.",
  "Do not lift or remove a blood-soaked dressing to check the wound -- add layers on top.",
  "Do not remove or loosen a tourniquet once applied unless instructed by a paramedic or physician.",
  "Do not give food or drink to a casualty with severe bleeding or suspected shock.",
  "Do not use wound packing for penetrating stab wounds.",
  "Do not enlarge wound openings to facilitate wound packing.",
  "Do not assume a rapid pulse is caused only by anxiety or pain -- suspect significant blood loss.",
  "Do not delay calling 101 for severe or uncontrolled bleeding.",
  "Do not apply a tourniquet directly over a joint -- place it 5-10 cm above the wound on the limb.",
))

#v(8pt)

// Equipment
#equipment-box((
  "Disposable gloves",
  "Sterile gauze or clean cloth",
  "Israeli Emergency Bandage (pressure dressing)",
  "Tourniquet (CAT or equivalent)",
  "Wound packing material (hemostatic gauze preferred)",
  "Triangular bandage (supplementary)",
  "Blanket or coat (for shock management)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · ID: IL-ADULT-SEVERE-BLEEDING-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
