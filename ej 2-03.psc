Algoritmo ej2_3
	Definir  i,num,acu Como Entero
	acu<-0
	Para i=1 Hasta 20 Con Paso paso Hacer
		Escribir "Inrese la cifra numero:  ",i
		Leer num
		acu<-acu+num
		i<-i+1
	Fin Para
	Escribir "El promedio de todos los numeros ingresados es:", (acu/20)
FinAlgoritmo
