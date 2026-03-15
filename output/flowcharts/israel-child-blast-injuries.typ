// First Aid Protocol Flowchart — Blast / Shrapnel Injuries — Child — Israel
// Generated from: IL-CHILD-BLAST-INJURIES-001
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

// === PAGE 1: SCENE SAFETY & SABCDE (A-C) ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[BLAST / SHRAPNEL INJURIES — CHILD]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Child]
  #v(2pt)
  #text(size: 10pt, fill: rgb("#6b7280"))[PHTLS / SABCDE Assessment]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(4pt)

#text(size: 9pt, fill: rgb("#6b7280"))[
  *When to call:* Call MDA at 101 immediately for any blast-injured child. Report the nature of the blast, number of casualties, child's condition, and your location. Alternatively, call United Hatzalah at 1221.
]

#v(6pt)

#step-box(1, "Ensure scene safety before approaching.",
  detail: "Assess for secondary explosive device risk, structural collapse, fire, and ongoing danger. Do not enter an unsafe scene. Wait for security forces to clear the area if there is any doubt.",
  warning: "Risk of secondary explosive devices is significant in terror-related blast events. Do NOT rush in without confirming scene safety. Structural collapse can occur minutes after the initial blast."
)

#arrow-down()

#step-box(2, "Call 101 (MDA) immediately.",
  detail: "Report the blast event, your location, number of casualties, and the involvement of children. MDA dispatch will coordinate ambulances and psychotrauma teams. If multiple casualties, triage may be directed by dispatch."
)

#arrow-down()

#step-box(3, "A -- Assess and maintain the child's airway.",
  detail: "Check airway patency. Look for blood, debris, vomit, or foreign objects in the mouth. In children, airways are smaller and more prone to obstruction. The tongue is proportionally larger and can block the airway. For infants, maintain nasal patency (obligate nasal breathers). Use jaw thrust manoeuvre if spinal injury is suspected.",
  warning: "Check for stridor (noisy breathing) which may indicate thermal airway injury from blast. Stridor in children indicates significant airway compromise."
)

#arrow-down()

#decision-box("Is the child's airway clear and open?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to breathing assessment (Step 4).],
  no-branch[Clear the airway manually. Remove visible debris. Position the head to open the airway (head-tilt/chin-lift unless spinal injury suspected, then jaw thrust only).],
)

#arrow-down()

#step-box(4, "B -- Assess breathing quality and symmetry.",
  detail: "Look for chest rise and fall. Assess symmetry -- asymmetric chest rise indicates thoracic trauma (possible pneumothorax). Monitor respiratory rate and effort. Look for accessory muscle use, nasal flaring, and intercostal retractions. Blast lung is the most immediately life-threatening primary blast injury."
)

#arrow-down()

#decision-box("Is the child breathing adequately with symmetric chest rise?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to circulation assessment (Step 5).],
  no-branch[If not breathing: begin rescue breathing/CPR. If asymmetric chest rise: suspect pneumothorax -- position child with injured side down if possible. Administer oxygen if available.],
)

#arrow-down()

#step-box(5, "C -- Control bleeding and assess circulation.",
  detail: "Evaluate for massive haemorrhage. Children have less blood volume than adults and can decompensate rapidly from blood loss. Check radial and carotid pulses. Assess capillary refill (press fingernail bed -- refill longer than 4-5 seconds indicates shock)."
)

#arrow-down()

#decision-box("Is there uncontrollable limb haemorrhage?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply a tourniquet proximal to the wound. If no tourniquet available, apply maximum direct pressure with cloth or hands. Record time of tourniquet application. See tourniquet protocol for child-specific guidance.],
  no-branch[Apply direct pressure to any bleeding wounds using sterile gauze or clean cloth. Elevate bleeding limbs if no fracture suspected.],
)

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2024-04-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency.
]

// === PAGE 2: D-E, WOUNDS, PSYCHOLOGICAL CARE & TRANSPORT ===
#pagebreak()

#align(center)[
  #text(size: 20pt, weight: "bold")[BLAST INJURIES — CHILD (continued)]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Disability, Exposure, Wounds & Transport]
]

#v(6pt)

#emergency-box("101", "MDA")

#v(4pt)

#all-emergency-numbers()

#v(8pt)

#step-box(6, "D -- Assess neurological status (Disability).",
  detail: "Use AVPU scale: Alert, responds to Voice, responds to Pain, Unresponsive. Check pupil size and reactivity. A non-communicative child after blast does NOT necessarily mean absence of serious injury -- children may be in psychological shock.",
  warning: "A silent, non-communicative child after a blast event may have serious injuries. Do not assume the child is uninjured because they are quiet."
)

#arrow-down()

#step-box(7, "E -- Expose and examine for additional injuries, then prevent hypothermia.",
  detail: "Carefully expose the child's body to check for additional wounds, burns, embedded objects, and fractures. Children's smaller bodies mean organs are closer together, increasing risk of multi-organ injury. After examination, cover the child immediately to prevent hypothermia -- children lose heat rapidly due to higher surface-area-to-mass ratio.",
  warning: "Do NOT remove embedded objects (shrapnel, fragments). Stabilise them in place. Removing them may worsen bleeding."
)

#arrow-down()

#step-box(8, "Cover wounds and stabilise embedded objects.",
  detail: "Cover open wounds with sterile dressings. If objects are embedded (shrapnel, glass, debris), do NOT remove them. Build padding around embedded objects to stabilise them. Use bulky dressings to protect wound sites."
)

#arrow-down()

#step-box(9, "Keep the child with their parent or caregiver when possible.",
  detail: "Separation from caregivers compounds psychological trauma in children. If the parent is also injured, assign another trusted adult to stay with the child. Speak calmly and honestly to the child. MDA 101 dispatch can coordinate psychological first responders (psychotrauma teams)."
)

#arrow-down()

#step-box(10, "Prepare for transport and monitor continuously.",
  detail: "Keep the child warm and covered. Monitor breathing, pulse, and consciousness level continuously. Be prepared to perform CPR if the child deteriorates. If multiple casualties, follow triage instructions from MDA dispatch. Report all interventions and times to arriving emergency services."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Enter an unsafe blast scene -- risk of secondary devices and structural collapse.",
  "Remove embedded objects (shrapnel, fragments) -- stabilise them in place.",
  "Assume a quiet child is uninjured -- children may be in psychological shock.",
  "Remove a tourniquet once applied -- hospital personnel will manage removal.",
  "Forget to prevent hypothermia after examination -- children lose heat rapidly.",
  "Separate the child from their parent or caregiver unnecessarily.",
  "Ignore asymmetric chest rise -- this indicates thoracic trauma requiring urgent attention.",
  "Give the child food or drink if significant injuries are present -- they may need anaesthesia at hospital.",
))

#v(6pt)

#equipment-box((
  "Tourniquet (CAT or equivalent -- see tourniquet protocol for child-specific sizing)",
  "Sterile gauze and bandages",
  "Blankets (for hypothermia prevention)",
  "Rigid splints (for fracture immobilisation)",
  "Phone (to call 101)",
  "Supplemental oxygen and mask (if available)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) (2024-04-01) · Last verified: 2026-03-16 \
  *Personal reference only — not medical advice.* Always call 101 in an emergency. \
  Protocol ID: IL-CHILD-BLAST-INJURIES-001
]
