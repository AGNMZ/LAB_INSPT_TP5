Algoritmo ej2_1
	Definir  i,num Como Entero
	Definir neg Como Logico
	neg<-falso
	
	Para i=1 Hasta 20 Con Paso 1 Hacer
		Escribir "Inrese la cifra numero:  ",i
		Leer num
		Si num<0 Entonces
			neg<-Verdadero
		Fin Si
	Fin Para
	Si neg Entonces
		Escribir "Uno de los numeros fue negativo"
	SiNo
		Escribir "Ninuno de los numeros fue negativo"
	Fin Si
	
FinAlgoritmo
