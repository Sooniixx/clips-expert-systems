(deftemplate plant-symptom
   (slot symptom-desc)
)

(deffacts test-plant-data
   (plant-symptom (symptom-desc stunted-root-growth))
   (plant-symptom (symptom-desc purplish-color))
)

(deffunction print-plant-diagnosis (?nutrient-name ?description)
   "Виводить стандартизоване повідомлення про дефіцит поживних речовин у рослини"
   (printout t "--------------------------------------------------" crlf)
   (printout t "[РЕЗУЛЬТАТ ЕКСПЕРТНОЇ СИСТЕМИ]" crlf)
   (printout t "Виявлено симптом: " ?description crlf)
   (printout t "ДІАГНОЗ: Рослині бракує поживних речовин: " ?nutrient-name "!" crlf)
   (printout t "--------------------------------------------------" crlf)
)

(defrule check-phosphorus-root
   ?f <- (plant-symptom (symptom-desc stunted-root-growth))
   (not (checked-symptom stunted-root-growth))
=>
   (print-plant-diagnosis "ФОСФОР (Phosphorus)" "сповільнений ріст коріння (stunted-root-growth)")
   (assert (checked-symptom stunted-root-growth))
   (retract ?f)
)

(defrule check-phosphorus-color
   ?f <- (plant-symptom (symptom-desc purplish-color))
   (not (checked-symptom purplish-color))
=>
   (print-plant-diagnosis "ФОСФОР (Phosphorus)" "пурпурове забарвлення (purplish-color)")
   (assert (checked-symptom purplish-color))
   (retract ?f)
)