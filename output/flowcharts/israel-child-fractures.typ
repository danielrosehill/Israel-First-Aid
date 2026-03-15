// First Aid Protocol Flowchart — Fractures and Sprains (Child) — Israel
// Generated from: IL-CHILD-FRACTURES-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "FRACTURES AND SPRAINS — FIRST AID (CHILD)"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-date = "2026-03-15"
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
  #text(size: 10pt, fill: rgb("#6b7280"))[ID: IL-CHILD-FRACTURES-001]
]

#v(8pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

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
    Open fractures (bone visible through skin); suspected spinal or neck injury; suspected hip or pelvis fracture; loss of sensation or circulation below the injury; severe limb deformity; heavy bleeding; child is unconscious or having difficulty breathing; multiple injuries; any fracture in an infant or very young child.
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
  #text(weight: "bold", size: 11pt)[Summary:] Immobilise the injury without realigning, apply cold in 15-minute intervals, manage bleeding for open fractures, keep the child calm, and call 101 (MDA) for serious injuries.
]

#v(4pt)

// When to apply
#rect(
  fill: rgb("#f0f9ff"),
  stroke: 1pt + rgb("#3b82f6"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[When to apply:] Suspected fracture or sprain in a child: severe pain worsening with movement; visible swelling and bruising; limb deformity; inability to move or bear weight; tenderness when touched; audible snap or crack; child refuses to use the limb. In young children: sudden refusal to use an arm or leg after a fall, inconsolable crying, or unexplained irritability.
]

#v(6pt)

// === STEPS ===

// Step 1
#step-box(1, "Stay calm and reassure the child.",
  detail: "Emotional management is critical. A frightened child in pain will tense muscles, increasing pain. Speak calmly at the child's eye level. Explain simply what you are doing. Do not display panic -- children take cues from adults. Allow a parent or trusted adult to stay close. Use distraction techniques (talking, counting, singing).")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 2
#step-box(2, "Assess the injury and determine severity.",
  detail: "Look for: severe pain, swelling, bruising, limb deformity, inability to move the limb, tenderness, and whether bone is visible through the skin. In young children, watch for refusal to use a limb, inconsolable crying, and irritability. Note: what appears to be a sprain in a child may actually be a growth plate fracture.")

#v(4pt)
#decision-box("Is bone visible through the skin (open/compound fracture)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Medical emergency.* Call 101 (MDA) immediately. Proceed to Step 8 for open fracture management, then continue with immobilisation.],
  no-branch[Proceed to Step 3.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 3
#step-box(3, "Call MDA at 101 if the injury meets emergency criteria.",
  detail: "Put the phone on speaker so you can follow dispatcher instructions while providing care. Describe: the child's age, location and nature of the injury, whether bone is visible, level of consciousness, and any bleeding.")

#v(4pt)
#decision-box("Is there suspected spinal or neck injury (e.g., fall from height, diving accident, traffic accident)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*Do NOT move the child at all.* Call 101 immediately. Hold the child's head steady to prevent movement. This is a life-threatening emergency. Do not proceed with other steps -- wait for professional help.],
  no-branch[Proceed to Step 4.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 4
#step-box(4, "Do NOT move or realign the injury.",
  detail: "NEVER attempt to straighten, pull, or push a bone back into place. MDA principle: 'Never try to straighten the limb, pull it, or return a bone to its place' (#heb[לעולם אל תנסו ליישר את הגפה, למשוך אותה או להחזיר עצם למקומה]). If the limb is in an unnatural position, leave it as found.",
  warning: "Attempting to realign a bone can damage arteries, nerves, and growth plates, potentially causing permanent harm to the child's future bone development.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 5
#step-box(5, "Immobilise the injury.",
  detail: "MDA principle: 'Minimum movement, maximum stability' (#heb[תנועה מינימלית, יציבות מקסימלית]). The best immobilisation for non-professionals is immobilisation to the body itself or to a stable surface. If you are not a certified medic, do not try to build complex splints.")

#v(4pt)
#decision-box("Is the injury to an arm or to a leg?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[*ARM:* Support the injured arm using the child's healthy hand. Create an improvised sling using a shirt, scarf, sweater, or fabric folded into a triangle. Place the injured arm inside and tie around the child's neck. Secure the sling to the chest to prevent swinging.],
  no-branch[*LEG:* Ask the child not to move the leg. Place pillows, rolled blankets, towels, or clothing on both sides to prevent movement. Gently bandage the injured leg to the healthy leg with padding between them. For suspected hip fractures: do NOT move the child; call for ambulance immediately.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 6
#step-box(6, "If using an improvised splint, apply it correctly.",
  detail: "Improvised splints can be made from cardboard, rolled newspapers, magazines, rulers, or any rigid material. The splint must extend beyond the joints above and below the fracture. Pad the splint with soft material (clothing, towels). Tie in place with fabric strips, scarves, or bandages -- firm but not tight enough to restrict circulation.",
  warning: "Check fingers or toes below the splint for warmth, colour, and sensation. If they turn blue, cold, or numb, loosen the splint immediately.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 7
#step-box(7, "Apply cold to reduce pain and swelling.",
  detail: "Apply an ice pack or cold compress wrapped in a towel -- never apply ice directly to skin. Apply for 15-minute intervals, then remove for 15 minutes before reapplying. Be especially gentle with children and explain that it may feel cold but will help. In Israel's hot climate, cold packs or a bag of frozen vegetables wrapped in cloth can be used.",
  warning: "Never apply ice directly to the child's skin. Always wrap in cloth to prevent cold burns.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 8
#step-box(8, "Manage bleeding if this is an open (compound) fracture.",
  detail: "If bone is protruding through the skin, this is a medical emergency. Control bleeding through indirect pressure around (not on) the wound. Cover the exposed bone with a sterile dressing or the cleanest available cloth. Do NOT attempt to push the bone back in. Keep the MDA dispatcher on speaker for continuous guidance.",
  warning: "Do NOT push protruding bone back into the wound. Do NOT apply pressure directly on the wound site. Apply a tourniquet only if haemorrhage is severe and uncontrollable.")

#v(4pt)
#decision-box("Is the bleeding severe and uncontrollable despite indirect pressure?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Apply a tourniquet if available (MDA protocol for severe uncontrollable haemorrhage). Maintain contact with MDA dispatcher.],
  no-branch[Continue indirect pressure and cover the wound. Keep the limb immobilised and wait for emergency services.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 9
#step-box(9, "Remove constrictive items from the injured area.",
  detail: "Remove jewellery, watches, bracelets, and rings from the affected hand or fingers immediately. Remove shoes from an injured foot or ankle. Swelling occurs rapidly after a fracture, and constrictive items can cut off circulation.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 10
#step-box(10, "Prevent shock.",
  detail: "Keep the child warm with a blanket or clothing (but avoid overheating in Israel's climate). Keep the child lying down if possible. Monitor breathing and consciousness.")

#v(4pt)
#decision-box("Is there suspected spinal injury or is the child vomiting?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Do NOT elevate the legs. Keep the child in the position found (spinal injury) or on their side (vomiting). Continue monitoring.],
  no-branch[Elevate the legs slightly to help prevent shock. Continue monitoring breathing and consciousness.],
)

#v(4pt)
#arrow-down()
#v(4pt)

// Step 11
#step-box(11, "Do not give the child food or drink.",
  detail: "Avoid giving the child food or drink, as surgery under general anaesthesia may be required. If the child is very thirsty, moisten their lips with a wet cloth.")

#v(4pt)
#arrow-down()
#v(4pt)

// Step 12
#step-box(12, "Monitor the child until emergency services arrive or you reach the hospital.",
  detail: "Continue to reassure the child. Monitor for signs of shock (pale skin, rapid breathing, confusion). Keep the injured limb immobilised. If transporting to hospital yourself (for less severe injuries), ensure the limb remains immobilised during transport. Any suspected sprain in a child should be evaluated by a doctor to rule out growth plate injury.")

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT attempt to straighten, pull, or realign a broken bone -- this can damage arteries, nerves, and growth plates, potentially affecting future bone development.",
  "Do NOT move the child unnecessarily, especially if spinal injury is suspected.",
  "Do NOT apply heat to the injury (no hot compresses, no warm water).",
  "Do NOT apply ice directly to the child's skin -- always wrap in cloth first.",
  "Do NOT tie splints or bandages too tightly -- monitor circulation (warmth, colour, sensation) below the injury.",
  "Do NOT allow the child to bear weight on an injured leg.",
  "Do NOT remove clothing by pulling over the injury -- cut it away if necessary.",
  "Do NOT give aspirin to children (risk of Reye's syndrome); use paracetamol (Acamol) or ibuprofen (Nurofen for Children) if needed for pain.",
  "Do NOT push a protruding bone back into the wound in an open fracture.",
  "Do NOT give the child food or drink -- surgery under anaesthesia may be required.",
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
    - Improvised sling material (shirt, scarf, sweater, or triangular bandage)\
    - Improvised splint material (cardboard, rolled newspapers, magazines, rulers, or rigid material)\
    - Padding material (clothing, towels, blankets) for splint and leg immobilisation\
    - Ice pack or cold compress (or bag of frozen vegetables)\
    - Cloth or towel for wrapping ice pack\
    - Sterile dressings or clean cloth (for open fractures)\
    - Bandages or fabric strips for securing splints\
    - Blanket for warmth and shock prevention\
    - Tourniquet (for severe uncontrollable bleeding in open fractures, if available)
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
