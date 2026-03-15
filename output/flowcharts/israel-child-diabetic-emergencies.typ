// First Aid Protocol Flowchart — Diabetic Emergencies in Children
// Source: Magen David Adom (MDA) — Israel
// Generated from: protocols/child/israel/diabetic-emergencies.json
// Protocol ID: IL-CHILD-DIABETIC-EMERGENCIES-001

#set page(paper: "a4", margin: 1.5cm)
#set text(font: ("IBM Plex Sans", "IBM Plex Sans Hebrew"), size: 11pt)

// === CONFIGURATION ===
#let protocol-title = "DIABETIC EMERGENCIES IN CHILDREN"
#let protocol-category = "diabetic_emergencies"
#let country = "Israel"
#let age-group = "Child"
#let emergency-number = "101"
#let emergency-service = "MDA (מד״א)"
#let source-authority = "Magen David Adom (MDA)"
#let source-url = "https://www.mdais.org/101/diabetes"
#let source-edition = "MDA 101 Public First Aid Guidance Series"
#let imported-date = "2026-03-15"
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
    #text(fill: rgb("#16a34a"), weight: "bold")[YES -> ] #content
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
    #text(fill: rgb("#ea580c"), weight: "bold")[NO -> ] #content
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

// === ARROW CONNECTOR ===
#let arrow-down() = {
  align(center)[
    #text(size: 16pt, fill: rgb("#6b7280"))[|\ #sym.arrow.b]
  ]
}

#let section-divider(title) = {
  v(6pt)
  rect(
    fill: rgb("#1e3a5f"),
    radius: 4pt,
    width: 100%,
    inset: 8pt,
  )[
    #set text(fill: white, weight: "bold", size: 12pt)
    #align(center)[#title]
  ]
  v(4pt)
}

// ============================================================
// DOCUMENT START
// ============================================================

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 13pt, fill: rgb("#6b7280"))[#country — #age-group]
]

#v(6pt)

// Emergency number (primary)
#emergency-box(emergency-number, emergency-service)

#v(4pt)

// All emergency numbers reference strip
#all-emergency-numbers()

#v(4pt)

// When to call 101
#rect(
  fill: rgb("#fef2f2"),
  stroke: 1.5pt + rgb("#dc2626"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(fill: rgb("#dc2626"), weight: "bold", size: 11pt)[Call 101 immediately if:]
  #v(3pt)
  #set text(size: 9.5pt)
  #grid(columns: (1fr, 1fr), gutter: 6pt,
    [- Loss of consciousness / decreased responsiveness],
    [- Seizures],
    [- Cannot swallow safely],
    [- Glucose below 54 mg/dL after 30 min of treatment],
    [- Two+ mild hypos in one week],
    [- Signs of DKA (vomiting, rapid breathing, fruity breath)],
    [- Any uncertainty about child's condition],
    [- Glucagon has been administered],
  )
]

#v(4pt)

// Summary
#rect(
  fill: rgb("#f0fdf4"),
  stroke: 1pt + rgb("#16a34a"),
  radius: 6pt,
  width: 100%,
  inset: 10pt,
)[
  #text(weight: "bold", size: 11pt)[Summary:] Assess consciousness and ability to swallow, administer fast-acting sugar using the Rule of 15 (10g for children under 6), and call 101 for severe hypoglycemia, seizures, loss of consciousness, or signs of DKA. *When in doubt, give sugar.*
]

#v(6pt)

// ============================================================
// STEP 1: INITIAL ASSESSMENT
// ============================================================

#step-box(1, "Assess the child's level of consciousness and ability to swallow safely.",
  detail: "Look for signs of hypoglycemia: paleness, sweating, trembling, rapid heartbeat, irritability, behavioural changes, confusion, decreased consciousness. In young children (especially in gan or school), sudden irritability, mood swings, or behavioural changes in a child known to have diabetes should prompt immediate assessment. Check for a medical alert bracelet or necklace.")

#arrow-down()

#decision-box("Is the child conscious and able to swallow safely?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 2 (mild/moderate hypoglycemia treatment).],
  no-branch[Skip to Step 7 (severe hypoglycemia -- unconscious child).],
)

// ============================================================
// CONSCIOUS PATHWAY (Steps 2-6)
// ============================================================

#section-divider("CONSCIOUS CHILD -- MILD/MODERATE HYPOGLYCEMIA")

#step-box(2, "Determine the child's age and administer the appropriate dose of fast-acting sugar (Rule of 15).",
  detail: "Suitable sources: glucose gel syringe (preferred), 125 mL (half a cup) of sweetened juice (not diet), glucose tablets (4 tablets = approx. 15g), 2-3 teaspoons of sugar dissolved in water, a sugar cube, a teaspoon of honey, or 250 mL (one cup) of milk.",
  warning: "Avoid chocolate as the initial sugar source -- fat and protein content slows sugar absorption, making it less effective for rapid correction.")

#arrow-down()

#decision-box("Is the child under 6 years old?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Give *10 grams* of fast-acting sugar.],
  no-branch[Give *15 grams* of fast-acting sugar.],
)

#arrow-down()

#step-box(3, "Wait 15 minutes, then reassess the child.",
  detail: "Monitor the child during this period. If the child has a glucometer available, recheck blood glucose after 15 minutes.")

#arrow-down()

#decision-box("Has blood glucose risen above target (70 mg/dL for 6+, 80 mg/dL for under 6) and are symptoms improving?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 4 (provide complex carbohydrates to sustain glucose).],
  no-branch[Repeat sugar dose (Step 2). If glucose remains below 54 mg/dL after 30 minutes, call 101 immediately.],
)

#arrow-down()

#step-box(4, "Once blood glucose is above target, provide complex carbohydrates to prevent recurrence.",
  detail: "Give the child a carbohydrate-rich snack: a slice of bread with cheese, a pastry or cracker, fruit, or any carbohydrate-containing food. This sustains glucose levels and prevents a repeat drop.")

#arrow-down()

#step-box(5, "Check whether the child has an insulin pump connected.",
  detail: "If the child wears an insulin pump (usually attached to the abdomen or thigh) and is experiencing hypoglycemia, gently disconnect it to prevent further insulin delivery from worsening the low blood sugar.")

#arrow-down()

#decision-box("Does the child have an insulin pump connected?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Gently disconnect the insulin pump without damaging the device or tubing.],
  no-branch[No action needed regarding insulin delivery. Continue monitoring.],
)

#arrow-down()

#step-box(6, "For moderate hypoglycemia where the child needs assistance but can still swallow: administer 20-30 grams of simple sugar and verify glucose rises above 80 mg/dL within 10 minutes.",
  detail: "If the child is too impaired to self-treat but can still swallow, another person must assist. If swallowing is becoming difficult, apply honey or glucose gel to the inside of the cheek or under the tongue (oral mucosa). Follow with complex carbohydrates once glucose stabilises.",
  warning: "If swallowing becomes unsafe at any point, stop oral administration immediately and proceed to Step 7 (severe hypoglycemia protocol).")

// ============================================================
// SEVERE HYPOGLYCEMIA PATHWAY (Steps 7-13)
// ============================================================

#pagebreak()

// Repeat header on page 2
#align(center)[
  #text(size: 18pt, weight: "bold")[#protocol-title]
  #v(2pt)
  #text(size: 11pt, fill: rgb("#6b7280"))[#country — #age-group — Page 2]
]

#v(4pt)
#all-emergency-numbers()
#v(6pt)

#section-divider("SEVERE HYPOGLYCEMIA -- UNCONSCIOUS OR SEIZING CHILD")

#step-box(7, "Severe hypoglycemia: the child is unconscious or having seizures. Do NOT give any food or drink by mouth.",
  detail: "This is a life-threatening emergency. Oral administration poses a choking risk when the child cannot protect their airway.",
  warning: "Never attempt to give food, drink, or oral medication to an unconscious or seizing child. This is a choking hazard.")

#arrow-down()

#step-box(8, "Disconnect the insulin pump if the child has one.",
  detail: "Gently disconnect the pump without damaging the device. It is usually attached to the abdomen or thigh.")

#arrow-down()

#step-box(9, "Assess whether a glucagon emergency kit is available and whether a trained person is present.",
  detail: "Glucagon kits (Hypo-Kit) may be stored at the child's school or gan. Only trained and authorised caregivers (parents, school nurses, designated staff trained by the child's medical team) may administer glucagon.")

#arrow-down()

#decision-box("Is a glucagon kit available AND is there a trained/authorised person to administer it?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Proceed to Step 10 (glucagon administration).],
  no-branch[Call 101 (MDA) immediately. Place the child in the recovery position (on their side) and monitor breathing until help arrives.],
)

#arrow-down()

#step-box(10, "Administer glucagon by intramuscular or subcutaneous injection using the correct child dose.",
  detail: "To prepare: draw the liquid from the syringe into the powder vial, shake until clear, draw the mixed solution back into the syringe, and inject into a large muscle or under the skin (buttock, abdomen, upper arm, or thigh).")

#arrow-down()

#decision-box("Is the child under 6 years old or under 25 kg?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Administer *0.5 mL* (half the vial).],
  no-branch[Administer *1.0 mL* (full vial).],
)

#arrow-down()

#step-box(11, "Place the child in the recovery position (on their side) to protect the airway.",
  detail: "This prevents choking if the child vomits. Monitor breathing continuously.")

#arrow-down()

#step-box(12, "Call MDA at 101 immediately.",
  detail: "Always call 101 after administering glucagon -- the child requires follow-up medical care. Glucagon effect begins approximately 10-15 minutes after injection and lasts approximately 30 minutes.")

#arrow-down()

#step-box(13, "Once the child regains consciousness and can swallow safely, provide complex carbohydrates.",
  detail: "Use the 10-15 minute window after glucagon takes effect to give the child carbohydrate-rich food (bread with cheese, crackers, fruit). This replenishes liver glycogen stores depleted by the glucagon.")

#arrow-down()

#decision-box("Has the child regained consciousness and can swallow safely?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Provide complex carbohydrates and continue monitoring until MDA arrives.],
  no-branch[Maintain recovery position, monitor breathing, and wait for MDA.],
)

// ============================================================
// HYPERGLYCEMIA / DKA (Step 14)
// ============================================================

#v(8pt)
#section-divider("HYPERGLYCEMIA / DIABETIC KETOACIDOSIS (DKA)")

#step-box(14, "Assess for signs of hyperglycemia or diabetic ketoacidosis (DKA).",
  detail: "If the emergency is suspected hyperglycemia rather than hypoglycemia, look for: excessive thirst, frequent urination, nausea/vomiting, abdominal pain, deep rapid breathing (Kussmaul breathing), fruity/acetone-smelling breath, weakness, and lethargy progressing to decreased consciousness. Hyperglycemia is not managed by first aiders.")

#arrow-down()

#decision-box("Are signs of DKA present (vomiting, abdominal pain, rapid deep breathing, fruity breath, decreased consciousness)?")
#v(4pt)
#grid(columns: (1fr, 1fr), gutter: 8pt,
  yes-branch[Call 101 (MDA) immediately. This is a medical emergency requiring hospital treatment. Do NOT administer insulin.],
  no-branch[The child should still be evaluated at a medical facility. Arrange transport to hospital.],
)

// ============================================================
// UNCERTAINTY RULE (Step 15)
// ============================================================

#v(8pt)
#section-divider("WHEN IN DOUBT")

#step-box(15, "If uncertain whether the child has hypoglycemia or hyperglycemia: treat for hypoglycemia by giving sugar.",
  detail: "Giving sugar to a hypoglycemic child is life-saving. Giving sugar to a hyperglycemic child will not cause immediate harm. The reverse is not true -- withholding sugar from a hypoglycemic child can be fatal. This is the 'when in doubt, give sugar' principle.",
  warning: "This rule applies only when the child is conscious and can swallow safely. Never give anything by mouth to an unconscious child.")

// ============================================================
// DO NOT LIST
// ============================================================

#v(8pt)

#do-not-box((
  "DO NOT administer insulin -- this is strictly a medical intervention and can be fatal if given inappropriately. First aiders should never give insulin.",
  "DO NOT give food, drink, or oral medication to an unconscious or seizing child -- this is a choking hazard.",
  "DO NOT use chocolate as the initial sugar source -- fat and protein slow absorption and delay correction.",
  "DO NOT administer glucagon unless you are trained and authorised to do so.",
  "DO NOT delay calling 101 (MDA) for severe hypoglycemia, seizures, or loss of consciousness.",
  "DO NOT attempt to manage hyperglycemia or DKA with first aid measures -- this requires medical intervention.",
  "DO NOT use diet drinks or sugar-free products as a sugar source for hypoglycemia treatment.",
))

#v(8pt)

// ============================================================
// EQUIPMENT
// ============================================================

#equipment-box((
  "Glucose gel syringe (15g glucose)",
  "Fast-acting sugar source (juice, glucose tablets, sugar cubes, honey)",
  "Complex carbohydrate snack (bread, crackers, fruit)",
  "Glucagon emergency kit (Hypo-Kit) if available and authorised to use",
  "Blood glucose meter (glucometer) if available",
))

// ============================================================
// FOOTER
// ============================================================

#v(1fr)

#line(length: 100%, stroke: 0.5pt + rgb("#d1d5db"))
#v(4pt)
#text(size: 8pt, fill: rgb("#9ca3af"))[
  Source: #source-authority · #source-edition · #source-url \
  Imported: #imported-date · Last verified: #last-verified \
  *Personal reference only — not medical advice.* Always call #emergency-number in an emergency.
]
