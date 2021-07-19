Algoritmo ej2_2
	Definir  i,num,neg Como Entero
	neg<-0
	Para i=1 Hasta 20 Con Paso 1 Hacer
		Escribir "Inrese la cifra numero:  ",i
		Leer num
		Si num<0 Entonces
			neg<-neg+1
		Fin Si
	Fin Para
	Escribir "Se escribieron ", neg,"numeros negativos."
FinAlgoritmo
