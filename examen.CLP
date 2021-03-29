(deffacts datos (valor 5 3 8 14 7)
(numero magico 21)
(calculo 0 respuesta 0)
)

(defrule resta
(valor $?rest ?x $?rest2 ?y $?rest3)

(calculo $?b respuesta $?a ?c $?d)
(test (< ?x ?y))
=>
(assert (calculo $?b ?y - ?x respuesta(
(assert (valor $?rest $?rest2 $?rest3)