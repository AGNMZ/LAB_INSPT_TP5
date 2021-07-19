Algoritmo ej2_4
	Definir  n,i  Como Entero
	definir num,min Como Real
	Escribir "Infgrese la cantidad de numeros a ingresar"
	Leer n
	Para i=1 Hasta n Con Paso paso Hacer
		Escribir "Inrese la cifra numero:  ",i
		Leer num
		Si i==1 Entonces
			min<-num
		SiNo
			Si num<min Entonces
				min<-num
			Fin Si
		Fin Si
		i<-i+1
	Fin Para
	Escribir "El numero minimo ingresado es:", min
FinAlgoritmo
