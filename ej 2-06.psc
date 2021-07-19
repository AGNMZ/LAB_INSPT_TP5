Algoritmo ej2_6
	Definir  n,i,acu,pos,ult,pri,prod  Como Entero
	Escribir "Infgrese la cantidad de numeros a ingresar"
	Leer n
	acu<-0
	prod<-1
	pri<-0
	ult<-0
	Para i=1 Hasta n Con Paso paso Hacer
		Escribir "Inrese la cifra numero:  ",i
		Leer num
		acu<-acu+num
		prod<-acu+num
		Si (num>0) Entonces
			pos<-pos+1
		Fin Si
		Si (i==1) Entonces
			pri<-num
		Fin Si
		Si (i==n)Entonces
			ult<-num
		Fin Si
		i<-i+1
	fin para
	
	Escribir "-Informe final-"
	Escribir "Cantidad de positivos:", pos
	Escribir "Valor del primer numero:", pri
	Escribir "Valor del ultimo numero:", ult
	Escribir "Sumatoria:", acu
	Escribir "Productoria:", prod
FinAlgoritmo
