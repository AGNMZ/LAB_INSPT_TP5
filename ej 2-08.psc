//Se ingresa un número no determinado de valores enteros. El último es -1. La computadora indica cuál fue el máximo número ingresado.
Algoritmo ej2_8
	Definir num, max como entero
	Escribir "Ingrese un numero. Ingrese menos uno para salir"
	Leer num
	max<-num
	Mientras (num<>-1) Hacer
		Si (num>max) Entonces
			max<-num
		Fin Si
		Escribir "Ingrese un numero. Ingrese cero para salir"
		Leer num
	Fin Mientras
	Escribir "El numero maximo ingresado fue:", max
FinAlgoritmo
