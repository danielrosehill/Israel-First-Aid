// First Aid Protocol Flowchart — Eye Injuries — Adult — Israel
// Generated from: IL-ADULT-EYE-INJURIES-001
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES → ] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO → ] #content
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
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ #sym.arrow.b]
  ]
}

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[EYE INJURIES]
  #v(2pt)
  #text(size: 14pt, weight: "bold")[Adult Protocol]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[Israel — Adult]
]

#v(6pt)

// Emergency number (primary)
#emergency-box("101", [MDA (#heb[מד״א])])

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#dc2626"))[CALL 101 IF: ]
  #text(size: 10pt)[Penetrating injury -- chemical burns (after initiating flushing) -- sudden vision loss -- blood in the eye -- embedded objects -- eyeball laceration.]
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f5f3ff"),
  stroke: 1pt + rgb("#7c3aed"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#5b21b6"))[SUMMARY: ]
  #text(size: 10pt)[First aid for eye injuries including foreign bodies, chemical splashes, embedded objects, blunt trauma, and lacerations. Injury type determines the response pathway.]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Assess the type of eye injury.",
)

#v(2pt)

#decision-box("Is there a chemical splash in the eye?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Go to Step 2 (chemical splash protocol).],
  no-branch[Go to Step 5 to assess other injury types.],
)

#arrow-down()

// === CHEMICAL SPLASH PATHWAY ===

#rect(
  fill: rgb("#fef2f2"),
  stroke: 2pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #align(center)[#text(size: 12pt, weight: "bold", fill: rgb("#dc2626"))[CHEMICAL SPLASH PATHWAY]]
]

#v(2pt)

// Step 2
#step-box(2, "CHEMICAL SPLASH: Flush the affected eye immediately with a stream of running water for 15 to 30 minutes.",
  detail: "Hold the eyelid open during flushing to ensure the chemical is fully washed out. Tilt the head so water runs away from the unaffected eye.",
  warning: "Do not delay flushing -- begin immediately, even before calling emergency services.",
)

#arrow-down()

// Step 3
#step-box(3, "Remove contact lenses if present, after starting the flush.",
  detail: "If possible, note the chemical product name or bring the container for the medical team.",
)

#arrow-down()

// Step 4
#step-box(4, "After flushing, take the casualty to an emergency room. Call MDA at 101 for severe chemical burns or if the person cannot open their eye.",
)

#arrow-down()

// === EMBEDDED OBJECT PATHWAY ===

#rect(
  fill: rgb("#fef2f2"),
  stroke: 2pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #align(center)[#text(size: 12pt, weight: "bold", fill: rgb("#dc2626"))[EMBEDDED / PENETRATING OBJECT PATHWAY]]
]

#v(2pt)

// Step 5
#step-box(5, "Assess whether an object is embedded or penetrating the eye.",
)

#v(2pt)

#decision-box("Is there an object embedded in or penetrating the eye?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Go to Step 6 (embedded object protocol).],
  no-branch[Go to Step 9 to assess other injury types.],
)

#arrow-down()

// Step 6
#step-box(6, "EMBEDDED OBJECT: Do NOT attempt to remove the object. Do NOT apply pressure to the eye or the object.",
  warning: "Attempting to remove an embedded object can cause severe permanent damage.",
)

#arrow-down()

// Step 7
#step-box(7, "Cover BOTH eyes loosely to prevent sympathetic eye movement.",
  detail: "Use a cup, cone, or ring of cloth around the object to protect it from being pushed further in.",
)

#arrow-down()

// Step 8
#step-box(8, "Keep the casualty calm and still. Call MDA at 101 immediately -- this requires hospital treatment.",
)

#arrow-down()

// === FOREIGN BODY PATHWAY ===

#rect(
  fill: rgb("#fef2f2"),
  stroke: 2pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #align(center)[#text(size: 12pt, weight: "bold", fill: rgb("#dc2626"))[FOREIGN BODY / BLUNT TRAUMA / LACERATION PATHWAY]]
]

#v(2pt)

// Step 9
#step-box(9, "Assess whether the injury is a non-embedded foreign body, blunt trauma, or laceration.",
)

#v(2pt)

#decision-box("Is there a non-embedded foreign body (dust, sand, metal shaving)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Go to Step 10 (foreign body protocol).],
  no-branch[Go to Step 13 (blunt trauma / laceration protocol).],
)

#arrow-down()

// Step 10
#step-box(10, "FOREIGN BODY: Do NOT rub the eye.",
  warning: "Rubbing can embed the object further and cause additional damage.",
)

#arrow-down()

// Step 11
#step-box(11, "Rinse the eye with lukewarm running water for approximately 15 minutes. Check every 5 minutes whether the foreign body has been dislodged.",
)

#arrow-down()

// Step 12
#step-box(12, "If the object does not come out with flushing, or if symptoms persist after removal (pain, redness, tearing), seek medical attention at an emergency room.",
)

#v(2pt)

#decision-box("Has the foreign body been successfully removed and symptoms resolved?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Monitor for any delayed symptoms. Seek medical attention if pain, redness, or tearing returns.],
  no-branch[Go to emergency room for professional removal.],
)

#arrow-down()

// Step 13
#step-box(13, "BLUNT TRAUMA: Apply a cold compress gently. Do NOT press on the eyeball.",
)

#v(2pt)

#decision-box("Is vision affected, or are there signs of serious injury (double vision, blood in eye, irregular pupil, severe pain)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call MDA at 101 immediately. Seek emergency medical evaluation.],
  no-branch[Seek medical evaluation even if the eye looks normal -- internal damage may not be visible.],
)

#arrow-down()

// Step 14
#step-box(14, "LACERATION: If there is a cut to the eyeball or eyelid, do NOT wash the eye. Cover loosely with a sterile pad without applying pressure.",
  warning: "Do not wash a lacerated eyeball -- this can worsen the injury.",
)

#arrow-down()

// Step 15
#step-box(15, "Call MDA at 101 -- lacerations require emergency room treatment. Keep the casualty lying down if possible.",
)

#v(8pt)

// DO NOT list
#do-not-box((
  "Do NOT rub the eye when a foreign body is present.",
  "Do NOT attempt to remove an embedded or penetrating object.",
  "Do NOT apply pressure to an injured eye or embedded object.",
  "Do NOT wash the eye if there is a laceration to the eyeball.",
  "Do NOT delay flushing for chemical splashes -- start immediately.",
  "Do NOT press a cold compress onto the eyeball for blunt trauma.",
))

#v(6pt)

// Equipment
#equipment-box((
  "Clean running water source for flushing",
  "Sterile eye pads or clean cloth",
  "Cold compress (for blunt trauma)",
  "Cup or cone (to protect embedded objects)",
  "Bandages to loosely cover both eyes if needed",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA Training Department Manual -- Eye Injury First Aid \
  Protocol ID: IL-ADULT-EYE-INJURIES-001 · Imported: 2026-03-16 · Last verified: 2026-03-16 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
