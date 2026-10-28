(deffacts family-facts
   (relation father Tom John)
   (relation mother Susan John)
   (relation parents Tom Susan John)
   (role Tom father)
   (role Susan mother)
   (role John son)
   (gender Tom male)
   (gender Susan female)
   (gender John male)
)

(defrule print-1
   (relation father ?f ?c)
=>
   (printout t "The father of " ?c " is " ?f "." crlf)
)

(defrule print-2
   (relation mother ?m ?c)
=>
   (printout t "The mother of " ?c " is " ?m "." crlf)
)

(defrule print-3
   (relation parents ?p1 ?p2 ?c)
=>
   (printout t "The parents of " ?c " are " ?p1 " and " ?p2 "." crlf)
)

(defrule print-4
   (role ?p father)
=>
   (printout t ?p " is a father." crlf)
)

(defrule print-5
   (role ?p mother)
=>
   (printout t ?p " is a mother." crlf)
)

(defrule print-6
   (role ?p son)
=>
   (printout t ?p " is a son." crlf)
)

(defrule print-7
   (gender ?p male)
   (role ?p father)
=>
   (printout t ?p " is a male." crlf)
)

(defrule print-8
   (gender ?p female)
   (role ?p mother)
=>
   (printout t ?p " is a female." crlf)
)

(defrule print-9
   (gender ?p male)
   (role ?p son)
=>
   (printout t ?p " is a male." crlf)
)