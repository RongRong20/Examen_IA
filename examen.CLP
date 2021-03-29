(deffacts datos (valor 5 3 8 14 7)
(numero magico 21)
(respuesta 0)
(calculo 0)
)

(defrule resta
(declare (salience 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (- (max ?x ?y) (min ?x ?y))) 
(assert (valor $?rest $?rest2 $?rest3)))

(defrule resta-2
(valor $?rest ?x)
(respuesta $?a ?y $?b)
(test (= (length $?rest) 1)))
=>
(assert (respuesta $?a $?b (- (max ?x ?y) (min ?x ?y)))
(assert (valor $?rest )))

(defrule suma
(declare (salience 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (+ ?x ?y)))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule suma-2
(valor $?rest ?x)
(respuesta $?a ?y $?b)
(test (= (length $?rest) 1)))
=>
(assert (respuesta $?a $?b (+ ?x ?y)))
(assert (valor $?rest)))

(defrule multiplica
(declare (salience 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
=>
(assert (respuesta $?a (* ?x ?y)))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule multiplica-2
(valor $?rest ?x)
(respuesta $?a ?y $?b)
(test (= (length $?rest) 1)))
=>
(assert (respuesta $?a $?b (* ?x ?y)))
(assert (valor $?rest)))

(defrule dividir
(declare (salience 50))
(valor $?rest ?x $?rest2 ?y $?rest3)
(respuesta $?a)
(test(= mod((max ?x ?y) (min ?x ?y)) 0)
=>
(assert (respuesta $?a (div((max ?x ?y) (min ?x ?y)))
(assert (valor $?rest $?rest2 $?rest3)))

(defrule dividir-2
(valor $?rest ?x)
(respuesta $?a ?y $?b)
(test (= (length $?rest) 1)))
(test(= mod((max ?x ?y) (min ?x ?y)) 0)
=>
(assert (respuesta $?a $?b (div((max ?x ?y) (min ?x ?y)))
(assert (valor $?rest)))

(defrule encontrar
(declare (salience 100))
(valor $?rest)
(test(= (length $?rest) 0)
(respuesta $?a ?b $?c)
(numero magico ?x)
(test(= ?b ?x))
=>
(halt)
)






