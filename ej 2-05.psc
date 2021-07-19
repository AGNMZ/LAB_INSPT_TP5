Algoritmo ej2_5
	Definir  n,i,acu  Como Entero
	Escribir "Ingrese la cantidad de numeros a ingresar"
	Leer n
	acu<-0
	Para i=1 Hasta n Con Paso paso Hacer
		Escribir "Ingrese la cifra numero:  ",i
		Leer num
		acu<-acu+num
		i<-i+1
	Fin Para
	
	Si n<>0 Entonces
		Escribir "El promedio es:" ,acu/n
	Fin Si
FinAlgoritmo
