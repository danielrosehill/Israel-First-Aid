// First Aid Protocol Flowchart — Diabetic Emergencies — Adult — Israel
// Generated from: IL-ADULT-DIABETIC-EMERGENCIES-001
// Source: Magen David Adom (MDA)
// Generated: 2026-03-15

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
  #text(size: 22pt, weight: "bold")[DIABETIC EMERGENCIES]
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
  #text(size: 10pt)[Patient is unconscious -- has seizures -- shows signs of diabetic ketoacidosis -- does not improve within 10--15 minutes of sugar administration -- or if you are unsure of the type of diabetic emergency.]
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
  #text(size: 10pt)[Assess whether the patient has low blood sugar (hypoglycemia) or high blood sugar (hyperglycemia). When in doubt, treat for hypoglycemia by giving sugar -- this is the safer default. Call 101 for all severe or uncertain cases.]
]

#v(4pt)

// When to apply
#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(size: 10pt, weight: "bold", fill: rgb("#16a34a"))[WHEN TO APPLY: ]
  #text(size: 9pt)[Person is a known or suspected diabetic showing signs of altered consciousness, confusion, weakness, trembling, sweating, behavioural changes, excessive thirst, fruity breath odour, or rapid deep breathing. Also apply when any person has unexplained altered consciousness (rule out hypoglycemia even in non-diabetic patients).]
]

#v(4pt)

// === PROTOCOL STEPS ===

// Step 1
#step-box(1, "Assess the scene and check for medical identification.",
  detail: "Look for a medical alert bracelet, necklace, or card in the patient's wallet that may confirm a diabetes diagnosis and current medications. Check for insulin pumps, pens, or glucometers nearby.",
)

#arrow-down()

// Step 2
#step-box(2, "Check blood glucose level if a glucometer is available.",
  detail: "A reading below 60--70 mg/dL indicates hypoglycemia. A reading above 250 mg/dL indicates hyperglycemia. Glucose testing should be performed on any patient with unexplained altered consciousness, even if they are not a known diabetic.",
)

#v(2pt)

#decision-box("Is a glucometer available and can you obtain a reading?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Use the reading to determine whether the patient has hypoglycemia (low) or hyperglycemia (high), and proceed to the appropriate steps.],
  no-branch[Assess based on signs and symptoms. If uncertain whether blood sugar is high or low, treat for hypoglycemia (give sugar) -- this is the safer default.],
)

#arrow-down()

// Step 3
#step-box(3, "Determine whether the patient has hypoglycemia or hyperglycemia based on signs and symptoms.",
  detail: "Hypoglycemia (rapid onset): sweating, pallor, trembling, confusion, irritability, hunger, rapid pulse, seizures. Hyperglycemia (gradual onset over hours to days): excessive thirst, frequent urination, fruity/acetone breath, fast deep breathing (Kussmaul), warm dry skin, nausea, weakness.",
)

#v(2pt)

#decision-box("Do the signs suggest hypoglycemia (low blood sugar)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 4 (hypoglycemia treatment pathway).],
  no-branch[If signs suggest hyperglycemia, proceed to Step 8. If unsure, treat for hypoglycemia (give sugar) as the safer default.],
)

#v(6pt)

// === HYPOGLYCEMIA PATHWAY HEADER ===
#rect(
  fill: rgb("#fef3c7"),
  stroke: 2pt + rgb("#d97706"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #align(center)[
    #text(size: 14pt, weight: "bold", fill: rgb("#92400e"))[HYPOGLYCEMIA PATHWAY (LOW BLOOD SUGAR)]
  ]
]

#v(4pt)

// Step 4
#step-box(4, "HYPOGLYCEMIA PATHWAY: Assess the patient's level of consciousness.",
)

#v(2pt)

#decision-box("Is the patient conscious and able to swallow safely?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 5 (give sugar to conscious patient).],
  no-branch[Proceed to Step 6 (assess if patient has reduced consciousness or is fully unconscious).],
)

#arrow-down()

// Step 5
#step-box(5, "Give sugar immediately to the conscious patient.",
  detail: "Administer rapidly absorbed sugars: sweetened drink (fruit juice, sugary soft drink -- NOT diet), sugar cubes or glucose tablets, glucogel packets (15g glucose -- standard in United Hatzalah volunteer kits), honey or jam. Choose foods and drinks WITHOUT added fat, as fat slows sugar absorption. After symptoms improve, give a complex carbohydrate (bread, crackers) to maintain blood sugar levels. Monitor the patient and do not leave them alone.",
)

#v(2pt)

#decision-box("Do symptoms improve within 10--15 minutes of giving sugar?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Continue monitoring the patient. Provide complex carbohydrates. Do not leave the patient alone.],
  no-branch[Call 101 (MDA) immediately. The patient may need intravenous dextrose from paramedics.],
)

#arrow-down()

// Step 6
#step-box(6, "Assess whether the patient has reduced consciousness or is fully unconscious.",
)

#v(2pt)

#decision-box("Is the patient partially responsive (confused, drowsy, but not fully unconscious)?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[If safe to do so, apply a sweet paste (honey, chocolate spread) under the tongue or to the inside of the cheek for absorption through the oral mucosa. Call 101 (MDA) immediately.],
  no-branch[Patient is unconscious. Proceed to Step 7.],
)

#arrow-down()

// Step 7
#step-box(7, "Treat the unconscious hypoglycaemic patient.",
  detail: "Place patient in the recovery position (on their side) to maintain an open airway. Call 101 (MDA) immediately. If the patient has a glucagon injection kit and you are trained to use it, administer glucagon. If the patient has an insulin pump, disconnect it gently to stop further insulin delivery. Monitor breathing continuously and be prepared to perform CPR if breathing stops. Wait for MDA paramedics, who can administer intravenous dextrose.",
  warning: "DO NOT give food or drink to an unconscious patient -- risk of choking and aspiration. DO NOT give insulin -- it will further lower blood sugar and worsen the emergency.",
)

#v(2pt)

#decision-box("Is the patient breathing?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Maintain recovery position and continue monitoring until MDA paramedics arrive.],
  no-branch[Begin CPR immediately and continue until paramedics arrive or the patient resumes breathing.],
)

#v(6pt)

// === HYPERGLYCEMIA PATHWAY HEADER ===
#rect(
  fill: rgb("#fef3c7"),
  stroke: 2pt + rgb("#d97706"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #align(center)[
    #text(size: 14pt, weight: "bold", fill: rgb("#92400e"))[HYPERGLYCEMIA PATHWAY (HIGH BLOOD SUGAR)]
  ]
]

#v(4pt)

// Step 8
#step-box(8, "HYPERGLYCEMIA PATHWAY: Call 101 (MDA) immediately if diabetic ketoacidosis or severe hyperglycemia is suspected.",
  detail: "Signs of diabetic ketoacidosis include fruity/acetone breath, fast deep breathing (Kussmaul breathing), nausea, vomiting, confusion, and warm dry skin.",
)

#arrow-down()

// Step 9
#step-box(9, "Ensure the airway is open and clear.",
  detail: "Loosen tight clothing that may restrict breathing.",
)

#arrow-down()

// Step 10
#step-box(10, "Allow the patient to drink water if conscious.",
  detail: "This helps combat dehydration, which worsens hyperglycemia. In Israel's hot climate, dehydration can be a significant exacerbating factor.",
)

#v(2pt)

#decision-box("Is the patient conscious and able to drink?")
#v(2pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Offer water in small sips. Continue monitoring.],
  no-branch[Do not give anything by mouth. Place the patient in the recovery position. Monitor breathing and be prepared to perform CPR.],
)

#arrow-down()

// Step 11
#step-box(11, "Monitor the patient until MDA paramedics arrive.",
  detail: "Watch for deterioration of consciousness. Be prepared to place the patient in the recovery position if they lose consciousness, and to begin CPR if breathing stops.",
  warning: "DO NOT administer insulin -- insulin dosing requires medical expertise and equipment. This is a paramedic/physician intervention only.",
)

#v(8pt)

// DO NOT list
#do-not-box((
  "DO NOT administer insulin as a first aider -- insulin dosing requires medical expertise and clinical assessment. Leave this to MDA paramedics or physicians.",
  "DO NOT give food or drink to an unconscious patient -- risk of choking and aspiration.",
  "DO NOT give diet drinks or sugar-free foods when treating hypoglycemia -- they will not raise blood sugar.",
  "DO NOT give sugary foods high in fat (chocolate bars, ice cream) as first-line treatment for hypoglycemia -- fat slows sugar absorption.",
  "DO NOT withhold sugar when in doubt about whether blood sugar is high or low -- giving sugar to a hypoglycaemic patient is life-saving, and giving sugar to a hyperglycaemic patient will not cause significant immediate additional harm.",
  "DO NOT leave a diabetic emergency patient unattended -- their condition can deteriorate rapidly.",
  "DO NOT delay calling 101 if the patient is unconscious, seizing, or not improving after sugar administration.",
  "DO NOT disconnect an insulin pump roughly -- disconnect gently to avoid damaging the device or the insertion site.",
))

#v(6pt)

// Equipment
#equipment-box((
  "Phone to call 101 (MDA) or 1221 (United Hatzalah)",
  "Glucometer and test strips (if available)",
  "Rapidly absorbed sugar source (glucose tablets, glucogel packets, fruit juice, sugar cubes, honey)",
  "Complex carbohydrate for follow-up (bread, crackers)",
  "Glucagon injection kit (if available and trained to use)",
))

#v(1fr)

// Footer
#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: Magen David Adom (MDA) -- MDA 101 Public First Aid Guidance Series; corroborated by MDA Course 60 training materials and United Hatzalah volunteer training material \
  Protocol ID: IL-ADULT-DIABETIC-EMERGENCIES-001 · Imported: 2026-03-15 · Last verified: 2026-03-15 \
  *Personal reference only -- not medical advice.* Always call 101 in an emergency.
]
