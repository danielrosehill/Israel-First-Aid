// First Aid Protocol Flowchart — Anaphylaxis / Allergic Reaction (Adult, Israel)
// Generated from: IL-ADULT-ALLERGIC-REACTION-001
// Source: Magen David Adom (MDA) — ALS Manual April 2024
// Generated: 2026-03-15

#set page(paper: "a4", margin: 1.5cm)
#set text(font: "Noto Sans", size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "ANAPHYLAXIS / ALLERGIC REACTION"
#let country = "Israel"
#let age-group = "Adult"
#let emergency-number = "101"
#let emergency-service = "MDA"
#let source-authority = "Magen David Adom (MDA)"
#let source-document = "MDA First Aid Guidance on Allergies and ALS Protocol (April 2024); Israeli Ministry of Health Anaphylaxis Guidance"
#let source-date = "2024-04-01"
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
      CALL #number (#service) — CALL IMMEDIATELY IF IN DOUBT
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

// === DOCUMENT ===

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

// Emergency number
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// Equipment needed
#rect(
  fill: rgb("#fefce8"),
  stroke: 1pt + rgb("#ca8a04"),
  radius: 6pt,
  width: 100%,
  inset: 8pt,
)[
  #text(weight: "bold", size: 10pt)[Equipment needed:] EpiPen (adult 0.3 mg) + Phone to call MDA at 101
]

#v(6pt)

// === STEP 1 ===
#step-box(1, "Ensure scene safety and recognise signs of severe allergic reaction.",
  detail: "Look for: SKIN (rash, hives, swelling of face/lips/tongue/throat) -- RESPIRATORY (breathing difficulty, wheezing, stridor, throat tightness) -- CARDIOVASCULAR (weak/rapid pulse, low BP, pallor, confusion, loss of consciousness) -- GI (nausea, vomiting, abdominal pain). Involvement of breathing, circulation, or consciousness indicates anaphylaxis."
)

#v(4pt)

#decision-box("Are signs of anaphylaxis present?\n(breathing difficulty, circulatory compromise, or altered consciousness)")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 2 -- call 101 immediately and continue protocol.],
  no-branch[Monitor for worsening. If only mild skin reaction without systemic involvement, observe closely. Call 101 if condition worsens.],
)

#v(6pt)

// === STEP 2 ===
#step-box(2, "Call MDA at 101 immediately.",
  detail: "Keep the phone on speaker mode and follow the dispatcher's instructions. Call for help from bystanders. If possible, identify the allergen (food, medication, insect sting, latex)."
)

#v(4pt)
#arrow-down()
#v(2pt)

// === STEP 3 ===
#step-box(3, "Remove the offending agent if possible.",
  detail: "Remove a bee stinger by scraping sideways, stop any infusion or medication, move patient away from the allergen source. Do not delay other treatment to do this."
)

#v(4pt)
#arrow-down()
#v(2pt)

// === STEP 4 ===
#step-box(4, "Manage the airway.",
  detail: "If facial or tongue swelling is present, assume airway compromise. Ensure the tongue is not obstructing the airway. Remove any food debris from the mouth. Loosen tight clothing around the neck and chest.",
  warning: "Airway swelling can progress rapidly. Continuous monitoring is essential."
)

#v(4pt)
#arrow-down()
#v(2pt)

// === STEP 5 ===
#step-box(5, "Position the patient appropriately.",
  detail: "Positioning depends on the patient's condition and primary symptoms."
)

#v(4pt)

#decision-box("Is the patient conscious?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If breathing difficulty is primary: allow patient to sit upright. If hypotension/shock is primary: position supine (lying down) with legs elevated.],
  no-branch[Proceed to Step 6 to assess breathing.],
)

#v(6pt)

// === STEP 6 ===
#step-box(6, "If the patient is unconscious, assess breathing.")

#v(4pt)

#decision-box("Is the unconscious patient breathing?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Place in the recovery position. Continue to monitor breathing and proceed to Step 7 (EpiPen).],
  no-branch[Begin CPR immediately. Continue CPR until EMS arrives or the patient resumes breathing.],
)

#v(6pt)

// === STEP 7 ===
#step-box(7, "Administer epinephrine auto-injector (EpiPen) if available.",
  detail: "Adult dose (over 50 kg): 0.3 mg auto-injector. Technique: (1) Remove from plastic case. (2) Remove blue safety cap. (3) Hold with orange tip pointing downward. (4) Position at 90 degrees to middle of outer thigh. (5) Press firmly (swing and jab) until click is heard. (6) Hold in place for 10 seconds. (7) Can be administered through clothing. (8) After removal, massage injection site for 10 seconds. (9) Hand used auto-injector to paramedics.",
  warning: "Epinephrine is time-critical. Do not delay. Over 50% of anaphylaxis deaths occur within the first 60 minutes."
)

#v(4pt)

#decision-box("Is an EpiPen available?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Administer immediately using the technique described. Proceed to Step 8.],
  no-branch[Maintain airway, positioning, and monitoring. Inform the 101 dispatcher that no EpiPen is available. Wait for EMS.],
)

#v(6pt)

// === STEP 8 ===
#step-box(8, "Reassess the patient after 5 minutes.",
  detail: "Check airway, breathing, circulation, and level of consciousness."
)

#v(4pt)

#decision-box("Has the patient's condition improved after 5 minutes?")
#v(3pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring. Epinephrine effects last approx. 20 minutes; symptoms may recur (biphasic reaction). Do not leave patient unattended.],
  no-branch[Administer a second dose of epinephrine if a second auto-injector is available. Continue monitoring.],
)

#v(6pt)

// === STEP 9 ===
#step-box(9, "Monitor continuously until EMS arrives.",
  detail: "Continuously monitor airway, breathing, and circulation. Be prepared to begin CPR if the patient loses consciousness and stops breathing. All patients with suspected anaphylaxis require hospital evaluation, even if symptoms fully resolve after epinephrine.",
  warning: "Biphasic reactions can occur hours after the initial event. Hospital observation is mandatory."
)

#v(8pt)

// === DO NOT LIST ===
#do-not-box((
  "Do not delay calling 101 -- anaphylaxis is a life-threatening emergency.",
  "Do not delay epinephrine administration if anaphylaxis is suspected. Epinephrine is the only effective first-line treatment.",
  "Do not substitute antihistamines (e.g., diphenhydramine) for epinephrine. Antihistamines are not effective against anaphylaxis.",
  "Do not make the patient stand or sit up suddenly if they are hypotensive -- this can cause cardiac arrest.",
  "Do not leave the patient unattended after epinephrine administration -- symptoms may recur.",
  "Do not assume the patient is safe after symptoms resolve -- all suspected anaphylaxis requires hospital evaluation.",
  "Do not waste time removing clothing before injecting the EpiPen -- it can be administered through trousers.",
  "Do not administer the EpiPen into a vein -- it is an intramuscular injection into the outer thigh only.",
  "Do not give food or drink to a patient experiencing anaphylaxis.",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority — #source-document (#source-date) \
  Last verified: #last-verified \
  Protocol ID: IL-ADULT-ALLERGIC-REACTION-001 \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
