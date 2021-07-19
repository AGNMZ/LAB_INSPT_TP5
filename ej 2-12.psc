//2.12) Se leen dos enteros N y M, y se emite la tabla de multiplicar de N entre 1 y M. 
Algoritmo ej_2_12
	definir n,m,may,men como entero
	Escribir "Ingrese el primer numero."
	Leer n
	Escribir "Ingrese el segundo numero"
	Leer m
	Si m==1 Entonces
		Escribir "El valor ",n," , multiplicado por ",m," da como resultado: ",n*m
	SiNo
		Si m>1 Entonces
			Para i<-1 Hasta m Con Paso 1 Hacer
				Escribir "El valor ",n," ,multiplicado por ",i," da como resultado: ",n*i
			Fin Para
		SiNo
			Para i<-1 Hasta m Con Paso (-1) Hacer
				Escribir "El valor ",n," , multiplicado por ",i," da como resultado: ",n*i
			Fin Para
		Fin Si
	Fin Si
FinAlgoritmo
