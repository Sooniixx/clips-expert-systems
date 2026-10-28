(deftemplate plant-symptom
   (slot symptom-desc)
)

(deffacts test-plant-data
   (plant-symptom (symptom-desc stunted-root-growth))
   (plant-symptom (symptom-desc purplish-color))
)

(defrule check-phosphorus-root
   ?f <- (plant-symptom (symptom-desc stunted-root-growth))
   (not (found-deficiency phosphorus))
=>
   (assert (found-deficiency phosphorus))
   (retract ?f)
)

(defrule check-phosphorus-color
   ?f <- (plant-symptom (symptom-desc purplish-color))
   (not (found-deficiency phosphorus))
=>
   (assert (found-deficiency phosphorus))
   (retract ?f)
)

(defrule print-diagnosis
   (declare (salience 100))
   ?f <- (found-deficiency phosphorus)
=>
   (printout t "ДІАГНОЗ: Рослині бракує поживних речовин: ФОСФОР (Phosphorus)." crlf)
   (retract ?f)
)