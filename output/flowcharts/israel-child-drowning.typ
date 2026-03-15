// First Aid Protocol Flowchart — Drowning (Child) — Israel
// Generated from: protocols/child/israel/drowning.json
// Protocol ID: IL-CHILD-DROWNING-001
// Source: Magen David Adom (MDA)

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "DROWNING — FIRST AID (CHILD)"
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
    #set text(size: 10pt)
    #text(fill: rgb("#dc2626"), weight: "bold", size: 13pt)[DO NOT:]
    #v(4pt)
    #for item in items [
      #text(fill: rgb("#dc2626"), weight: "bold")[X] #item \
    ]
  ]
}

#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ v]
  ]
}

#let key-info-box(content) = {
  rect(
    fill: rgb("#fefce8"),
    stroke: 1.5pt + rgb("#ca8a04"),
    radius: 6pt,
    width: 100%,
    inset: 10pt,
  )[
    #set text(size: 11pt)
    #content
  ]
}

// === PAGE 1: OVERVIEW AND STEPS 1-5 ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group (1 year to puberty)]
]

#v(6pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(6pt)

// Key context
#key-info-box()[
  #text(weight: "bold")[Key principle:] Drowning is a *hypoxic emergency* — rescue breaths are CRITICAL. Compression-only CPR is *insufficient* for drowning victims.\
  #text(weight: "bold")[Lone rescuer:] Perform *2 minutes of CPR first* (5 cycles of 30:2), then call 101.\
  #text(weight: "bold")[Signs:] Unconsciousness, absence of breathing, cyanosis (blue skin), limp body, water in/around the airway.
]

#v(6pt)

// --- STEP 1 ---
#step-box(1, "Ensure scene safety. Do NOT enter the water unless you are a trained water rescuer.",
  detail: "Use reaching aids (pole, rope, towel) or throwing aids (flotation device) to bring the child to safety. If you must enter water, bring a flotation device.",
  warning: "Do NOT enter the water without a flotation device or proper training. You risk becoming a victim.",
)

#arrow-down()

// --- STEP 2 ---
#step-box(2, "Remove the child from the water as quickly as possible without risking your own life.",
  detail: "Support the head and neck during removal if spinal injury is suspected (diving accident, fall from height, or unknown mechanism).",
)

#v(4pt)
#decision-box("Is spinal injury suspected (diving accident, fall, visible head/neck injury)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Immobilise head and neck in neutral position during extraction. Maintain spinal alignment. Avoid twisting or bending the neck.],
  no-branch[Remove the child from the water as quickly as possible and place on a firm, flat surface.],
)

#arrow-down()

// --- STEP 3 ---
#step-box(3, "Assess responsiveness. Tap the child's shoulder firmly and call out loudly: 'Are you okay?'",
)

#v(4pt)
#decision-box("Is the child responsive (moving, coughing, breathing)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in recovery position (Step 9). Call 101. Monitor closely — *always transport to hospital* due to secondary drowning risk.],
  no-branch[Child is unresponsive. Place on back on a firm, flat surface away from the water's edge. Proceed to Step 4.],
)

#v(1fr)

// Footer page 1
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 2: STEPS 4-8 (CALL FOR HELP, AIRWAY, RESCUE BREATHS, CPR) ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[Drowning — Child — Steps 4-8]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Call for Help — Airway — Rescue Breaths — CPR]
]

#v(8pt)

// --- STEP 4 ---
#step-box(4, "Call for help. Instruct a bystander to call 101 (MDA) immediately.",
  detail: "If a second person is present, have them call 101 while you begin resuscitation. If alone, perform 2 minutes of CPR first (5 cycles of 30:2), then call 101.",
)

#v(4pt)
#decision-box("Is a second person available to call 101?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Direct them to call 101 immediately while you proceed to Step 5.],
  no-branch[Perform 2 minutes of CPR first (5 cycles of 30:2), then call 101. Return to CPR immediately after the call.],
)

#arrow-down()

// --- STEP 5 ---
#step-box(5, "Open the airway. Gently tilt the child's head back and lift the chin (head-tilt chin-lift).",
  detail: "Look, listen, and feel for breathing for 5-10 seconds: observe chest rise, listen for breath sounds, feel for air on your cheek.",
)

#v(4pt)
#decision-box("Is the child breathing normally?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in recovery position (Step 9). Continue monitoring until MDA arrives. *Always transport to hospital.*],
  no-branch[The child is not breathing. Begin CPR immediately (Step 6).],
)

#arrow-down()

// --- STEP 6 ---
#step-box(6, "Give 2 initial rescue breaths. Drowning is a hypoxic emergency — rescue breaths are CRITICAL.",
  detail: "Pinch the child's nose closed. Seal your mouth over the child's mouth. Give 2 gentle rescue breaths, each lasting approximately 1 second. Watch for visible chest rise with each breath.",
  warning: "Compression-only CPR is insufficient for drowning victims. Rescue breaths are essential because drowning is primarily an oxygen-deprivation emergency.",
)

#v(4pt)
#decision-box("Does the chest rise visibly with each rescue breath?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Breaths are effective. Proceed to chest compressions (Step 7).],
  no-branch[Reposition the head (re-tilt and re-lift chin) and try again. If chest still does not rise, proceed to compressions — compressions may help dislodge water or foreign material.],
)

#arrow-down()

// --- STEP 7 ---
#step-box(7, "Begin chest compressions.",
  detail: "Place the heel of one hand on the centre of the chest, between the nipples, on the lower third of the sternum. Compress to a depth of 1/3 to 1/2 the depth of the chest. Rate: 100-120 compressions per minute. Allow full chest recoil. Count compressions aloud.",
  warning: "Avoid compressing over the xiphoid process (bottom tip of sternum). Allow full chest recoil — do not lean on the chest between compressions.",
)

#arrow-down()

// --- STEP 8 ---
#step-box(8, "Continue CPR cycles using the correct compression-to-breath ratio.",
  detail: "Solo rescuer: 30 compressions + 2 rescue breaths. Two rescuers: 15 compressions + 2 rescue breaths. Perform cycles continuously. Switch rescuers every 2 minutes (5 cycles) if two rescuers are available. Minimise interruptions — avoid pauses longer than 10 seconds.",
)

#v(4pt)
#decision-box("Does the child show signs of life (breathing, coughing, movement)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Stop compressions. Place in recovery position (Step 9). Continue monitoring breathing until MDA arrives.],
  no-branch[*Continue CPR* without interruption until MDA arrives, an AED becomes available, or you are physically unable to continue.],
)

#v(1fr)

// Footer page 2
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]

// === PAGE 3: STEPS 9-10, DO NOT LIST, EQUIPMENT ===
#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[Drowning — Child — Steps 9-10]
  #v(2pt)
  #text(size: 12pt, fill: rgb("#6b7280"))[Recovery Position — Hospital Transport — Do Not List]
]

#v(8pt)

// --- STEP 9 ---
#step-box(9, "Recovery position: if the child resumes spontaneous breathing, place them on their side.",
  detail: "Place the child on their side with the upper knee bent forward to stabilise the position. This maintains airway patency and allows water or vomit to drain from the mouth. Continue monitoring breathing until MDA arrives. Maintain warmth — children are particularly vulnerable to hypothermia after water immersion.",
  warning: "Even if the child appears to recover fully, ALWAYS transport to hospital. Secondary drowning (delayed pulmonary oedema) and dangerous electrolyte imbalances can develop hours after the event.",
)

#arrow-down()

// --- STEP 10 ---
#step-box(10, "Hospital transport is mandatory. All drowning victims must be evaluated at a hospital.",
  detail: "Secondary drowning (delayed pulmonary oedema) can develop hours after a drowning event, even if the child initially appears to recover. Electrolyte imbalances can also occur. Do not assume the child is fine based on initial recovery.",
)

#v(10pt)

// === DO NOT LIST ===
#do-not-box((
  "Do NOT attempt to remove water from the lungs — this is impossible and can endanger the victim.",
  "Do NOT perform abdominal thrusts (Heimlich manoeuvre) to expel water — this is not effective for drowning and risks aspiration of stomach contents.",
  "Do NOT delay CPR to attempt water removal.",
  "Do NOT use compression-only CPR for drowning — rescue breaths are essential because drowning is a hypoxic (oxygen-deprivation) emergency.",
  "Do NOT assume the child is fine if they regain consciousness — always transport to hospital due to risk of secondary drowning.",
  "Do NOT enter the water to rescue the child unless you are a trained water rescuer with a flotation device.",
  "Do NOT use excessive ventilation force or volume — this can cause gastric distention (stomach inflation) in children.",
))

#v(8pt)

// === EQUIPMENT ===
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Equipment needed (if available):]
  #v(4pt)
  #text(size: 10pt)[
    - Reaching aid (pole, rope, towel) or throwing aid (flotation device) for water rescue\
    - Firm, flat surface for CPR\
    - Blanket or covering to maintain warmth (hypothermia prevention)
  ]
]

#v(1fr)

// Footer page 3
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority (#source-date) · Last verified: #last-verified \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
