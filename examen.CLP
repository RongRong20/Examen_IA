(deffacts datos (valor 5 3 8 14 7)
(numero magico 21)
(respuesta 0)
(calculo 0)
)

(defrule resta
(declare (saliente 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (- (max ?x ?y) (min ?x ?y)) 
(assert (valor $?rest $?rest2 $?rest3)))

(defrule suma
(declare (saliente 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (+ ?x ?y))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule multiplica
(declare (saliente 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (* ?x ?y))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule dividir
(declare (saliente 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
(test(= mod((max ?x ?y) (min ?x ?y)) 0)
=>
(assert (respuesta $?a (div((max ?x ?y) (min ?x ?y)))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule encontrar
(declare (saliente 100))
(valor $?rest)
(test(= (length $?rest) 0)
(respuesta $?a ?b $?c)
(numero magico ?x)
(test(= ?b ?x))
=>

(halt)
)






