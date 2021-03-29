(deffacts datos (valor 5 3 8 14 7)
(numero magico 21)
(respuesta 0)
)

(defrule resta
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (- (max ?x ?y) (min ?x ?y)) 
(assert (valor $?rest $?rest2 $?rest3)))

(defrule suma
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (+ ?x ?y))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule multiplica
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (* ?x ?y))
(assert (valor $?rest $?rest2 $?rest3)))




