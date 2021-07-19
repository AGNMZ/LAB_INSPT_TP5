Algoritmo ej2_7
	
	Escribir "Ingrese un numero. Ingrese cero para salir"
	Leer num
	pos_con<-0
	Mientras (num<>0) Hacer
		Si (num>0) Entonces
			pos_con<-pos_con+1
			pos_acu<-pos_acu+num
		Fin Si
		Escribir "Ingrese un numero. Ingrese cero para salir"
		Leer num
	Fin Mientras
	
	Si pos_con<>0 Entonces
		Escribir "El promedio de los positivos ingresados:", pos_acu/pos_con
	SiNo
		Escribir "No se ingresaron positivos"
	Fin Si
FinAlgoritmo
