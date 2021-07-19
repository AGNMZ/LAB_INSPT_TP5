//Dados N enteros, se emite un mensaje indicando si ingresaron en orden creciente, decreciente o desordenados.
Algoritmo ej_2_11
	definir num,N,i,previo como entero
	definir cre,dec  Como Logico
	cre<-Verdadero
	dec<-Verdadero
	Escribir "Por favor, ingrese el numero de enteros a ingresar"
	Leer N
	Mientras (N<1) Hacer
		Escribir "Valor invalido, por favor, ingrese el numero de enteros a ingresar"
		Leer N
	Fin Mientras
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "Ingrese el valor numero ",i
		Leer num
		Si i>1 y cre y previo>num Entonces
			cre<-Falso
		Fin Si
		Si i>1 y dec y previo<num Entonces
			dec<-Falso
		Fin Si
		previo<-num
	Fin Para
	Si cre Entonces
		Escribir "Los numeros inresaron en orden creciente"
	Fin Si
	Si dec Entonces
		Escribir "Los numeros inresaron en orden decreciente"
	Fin Si
	Si no(cre o dec) Entonces
		Escribir "Los numeros ingresaron desordenados"
	Fin Si
FinAlgoritmo
