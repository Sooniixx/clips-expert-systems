(deftemplate question
   (slot query-string)
   (slot answer)
)

(defrule start-question
   (declare (salience 10))
   (not (question (query-string "Is it very big?")))
=>
   (printout t "Is it very big? (yes/no): ")
   (assert (question (query-string "Is it very big?") (answer (read))))
)

(defrule ask-squeak
   (question (query-string "Is it very big?") (answer no))
   (not (question (query-string "Does it make a squeak?")))
=>
   (printout t "Does it make a squeak? (yes/no): ")
   (assert (question (query-string "Does it make a squeak?") (answer (read))))
)

(defrule guess-squirrel
   (question (query-string "Does it make a squeak?") (answer no))
=>
   (printout t "РЕЗУЛЬТАТ: Припустити, що це білка." crlf)
)

(defrule guess-mouse
   (question (query-string "Does it make a squeak?") (answer yes))
=>
   (printout t "РЕЗУЛЬТАТ: Припустити, що це миша." crlf)
)

(defrule ask-long-neck
   (question (query-string "Is it very big?") (answer yes))
   (not (question (query-string "Does it have a long neck?")))
=>
   (printout t "Does it have a long neck? (yes/no): ")
   (assert (question (query-string "Does it have a long neck?") (answer (read))))
)

(defrule guess-giraffe
   (question (query-string "Does it have a long neck?") (answer yes))
=>
   (printout t "РЕЗУЛЬТАТ: Припустити, що це жираф." crlf)
)

(defrule ask-trunk
   (question (query-string "Is it very big?") (answer yes))
   (question (query-string "Does it have a long neck?") (answer no))
   (not (question (query-string "Does it have a trunk?")))
=>
   (printout t "Does it have a trunk? (yes/no): ")
   (assert (question (query-string "Does it have a trunk?") (answer (read))))
)

(defrule guess-elephant
   (question (query-string "Does it have a trunk?") (answer yes))
=>
   (printout t "РЕЗУЛЬТАТ: Припустити, що це слон." crlf)
)

(defrule ask-water
   (question (query-string "Is it very big?") (answer yes))
   (question (query-string "Does it have a long neck?") (answer no))
   (question (query-string "Does it have a trunk?") (answer no))
   (not (question (query-string "Does it like to be in water?")))
=>
   (printout t "Does it like to be in water? (yes/no): ")
   (assert (question (query-string "Does it like to be in water?") (answer (read))))
)

(defrule guess-rhino
   (question (query-string "Does it like to be in water?") (answer no))
=>
   (printout t "РЕЗУЛЬТАТ: Припустити, що це носоріг." crlf)
)

(defrule guess-hippo
   (question (query-string "Does it like to be in water?") (answer yes))
=>
   (printout t "РЕЗУЛЬТАТ: Припустити, що це бегемот." crlf)
)