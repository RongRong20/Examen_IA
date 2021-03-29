(deffacts datos (valor 5 3 8 14 7)
(numero magico 21)
)

(defrule resta
(valor $?rest ?x $?rest2 ?y $?rest3)
(test (x