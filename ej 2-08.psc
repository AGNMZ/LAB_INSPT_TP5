//Se ingresa un n�mero no determinado de valores enteros. El �ltimo es -1. La computadora indica cu�l fue el m�ximo n�mero ingresado.
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
