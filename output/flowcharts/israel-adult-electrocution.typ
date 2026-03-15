// First Aid Protocol Flowchart — Electrocution / Electrical Injury (Adult) — Israel
// Generated from: protocols/adult/israel/electrocution.json
// Generated on: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "ELECTROCUTION / ELECTRICAL INJURY\nFIRST AID PROTOCOL (ADULT)"
#let protocol-category = "electrocution"
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

// Emergency number -- prominent
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// Additional numbers for electrocution
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 10pt)[For high-voltage incidents also call:] #text(size: 10pt)[Fire Services #strong[102] and Israel Electric Corporation (IEC) #strong[103]]
]

#v(4pt)

// Summary / When to apply
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#7c3aed"))[When to apply:] #text(size: 9pt)[When an adult has received an electrical shock from any source: household appliances, power lines, industrial equipment, lightning. Signs include burns (entry/exit wounds), loss of consciousness, muscle spasms, breathing difficulty, cardiac arrest, confusion, or the victim being visibly in contact with an electrical source.]
]

#v(6pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Ensure scene safety -- DO NOT touch the victim.",
  detail: "Contact with a victim still connected to an electrical source can be fatal to the rescuer. Multiple rescuers have been killed by 'chain electrocution'. Assess whether the victim is still in contact with the electrical source before approaching.",
  warning: "DO NOT touch the victim with bare hands or any wet/damp object while they may still be in contact with the electrical source."
)

#arrow-down()

// Step 2
#step-box(2, "Determine whether the incident involves low-voltage or high-voltage electricity.",
  detail: "Low-voltage: under 1,000 volts (household and most workplace). High-voltage: 1,000 volts and above (power lines, substations, industrial equipment). Standard Israeli household supply is 220V AC / 50Hz."
)

#v(4pt)

#decision-box("Is this a HIGH-VOLTAGE incident (power lines, substations, industrial equipment)?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[DO NOT approach. Maintain at least 10 metres distance. Call MDA (101), Fire Services (102), and Israel Electric Corporation (103). Wait for professional teams to de-energise the source.],
  no-branch[Proceed to disconnect the power source (Step 3).],
)

#arrow-down()

// Step 3
#step-box(3, "Disconnect the power source (low-voltage incidents only).",
  detail: "Turn off the power at the mains breaker or fuse box, or unplug the appliance from the wall socket.",
  warning: "Never use a wet or damp object. Never touch the victim or the electrical source directly."
)

#v(4pt)

#decision-box("Can you disconnect the power at the mains or unplug the device?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Switch off the mains breaker or unplug the appliance. Confirm the power is off before approaching the victim.],
  no-branch[Use a dry, non-conducting object (dry wooden broom handle, dry rope, dry rubber mat) to push or pull the victim away from the source. Stand on a dry, insulating surface.],
)

#arrow-down()

// Step 4
#step-box(4, "Call emergency services.",
  detail: "Call MDA at 101 immediately. For high-voltage incidents, also call Fire Services at 102 and Israel Electric Corporation at 103. Report: location, number of casualties, whether the power source has been disconnected, and the victim's condition."
)

#arrow-down()

// Step 5
#step-box(5, "Assess consciousness and breathing once the scene is confirmed safe.",
  detail: "Call out to the victim and tap their shoulders to check consciousness. Look, listen, and feel for breathing for no more than 10 seconds."
)

#v(4pt)

#decision-box("Is the victim responsive?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Keep the victim still. Proceed to Step 8 (burns assessment). Monitor continuously for deterioration.],
  no-branch[Check breathing immediately (Step 6).],
)

#arrow-down()

// Step 6
#step-box(6, "Check breathing of the unresponsive victim.")

#v(4pt)

#decision-box("Is the victim breathing normally (not just gasping)?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in recovery position (on their side). Monitor breathing continuously until EMS arrives. Be prepared to begin CPR if breathing stops.],
  no-branch[Begin CPR immediately (Step 7).],
)

#arrow-down()

// Step 7
#step-box(7, "Begin CPR if the victim is unresponsive and not breathing (or only gasping).",
  detail: "Perform 30 chest compressions followed by 2 rescue breaths. Compression rate: 100--120 per minute. Compression depth: 5--6 cm. Allow full chest recoil between compressions. If an AED is available, use it -- ensure the victim's chest is dry before applying pads. Do NOT stop resuscitation until professional EMS teams arrive.",
  warning: "Electrocution victims, particularly younger patients, have a higher-than-average survival rate from cardiac arrest if CPR is started promptly. Do not give up."
)

#arrow-down()

// Step 8
#step-box(8, "Assess and treat burns.",
  detail: "Look for entry and exit wound burns. External burns may appear small but conceal severe internal tissue damage along the current pathway. Once the scene is confirmed safe, cool visible burns with cool (not cold) running water for at least 10 minutes. Cover burns loosely with cling film or a clean, non-fluffy dressing.",
  warning: "Do NOT apply water to burns while the victim is still connected to the electrical source. Do NOT apply creams, ointments, or home remedies to electrical burns."
)

#arrow-down()

// Step 9
#step-box(9, "Assess for spinal injury.")

#v(4pt)

#decision-box("Did the victim fall from height or get thrown by the electrical force?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Suspect spinal injury. Minimise movement of the head, neck, and spine. Wait for professional extraction if possible.],
  no-branch[Proceed to treat for shock (Step 10).],
)

#arrow-down()

// Step 10
#step-box(10, "Treat for shock.",
  detail: "Keep the victim lying down. Keep them warm by covering with a blanket. Do not give food or drink."
)

#v(4pt)

#decision-box("Is spinal injury suspected or is the victim having difficulty breathing?")

#v(4pt)

#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT elevate legs. Keep the victim flat and still. Wait for EMS.],
  no-branch[Elevate the victim's legs slightly to improve circulation.],
)

#arrow-down()

// Step 11
#step-box(11, "Ensure hospital evaluation for ALL electrocution victims.",
  detail: "All electrocution victims must be evaluated at a hospital, even if the injury appears minor. Cardiac arrhythmias can develop hours after the incident. Internal tissue damage may not be immediately apparent. Rhabdomyolysis (muscle breakdown) can cause kidney failure. Neurological symptoms may be delayed.",
  warning: "Do NOT assume the injury is minor based on small visible burns -- internal damage may be severe."
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT touch the victim while they may still be in contact with the electrical source -- this can kill the rescuer (chain electrocution).",
  "Do NOT use wet or damp objects to separate the victim from the electrical source.",
  "Do NOT approach high-voltage incidents (power lines, substations) -- maintain at least 10 metres distance and wait for professional teams (IEC 103).",
  "Do NOT perform CPR on a conscious victim.",
  "Do NOT apply water to burns while the victim is still connected to the electrical source.",
  "Do NOT apply creams, ointments, or home remedies to electrical burns.",
  "Do NOT assume the injury is minor based on small visible burns -- internal damage along the current pathway may be severe.",
  "Do NOT give food or drink to an electrocution victim.",
))

#v(8pt)

// === EQUIPMENT NEEDED ===
#equipment-box((
  "Dry non-conducting object for separating victim from source (dry wooden broom handle, dry rope, dry rubber mat)",
  "Dry insulating surface to stand on (dry wood, dry rubber mat, newspapers)",
  "AED (automated external defibrillator)",
  "Cool running water source (for burn cooling after scene is safe)",
  "Cling film or clean non-fluffy dressings (for burn covering)",
  "Blanket (for shock prevention)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified · Protocol ID: IL-ADULT-ELECTROCUTION-001 \
  *Personal reference only -- not medical advice.* Always call #emergency-number in an emergency.
]
