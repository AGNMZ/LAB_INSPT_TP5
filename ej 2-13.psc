//2.13) Mientras la respuesta sea afirmativa, se leen los tres lados de un triángulo y se informa su perímetro y que tipo de triangulo forma.
Funcion verifica <- verificar_min_max( num ,max,min )
	Definir verifica Como Logico	
	Si num<min o num>max Entonces
		verifica=Falso
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Funcion verifica <- verificar_min( num,min )
	Definir verifica Como Logico	
	Si num<=min Entonces
		verifica=Falso
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Algoritmo ej_2_13
	Definir verifica,corriendo como  logico
	Definir num,opc,indice como entero
	Dimension lados(3)
	verifica=Verdadero
	corriendo=Verdadero
	Mientras corriendo Hacer
		Repetir
			Si no(verifica) Entonces
				Escribir "Valor Incorrecto."
			Fin Si
			Escribir "¿Desea calcular el perimetro de un triangulo? 1-Si 2-No"
			Leer opc
			Si verificar_min_max(opc,2,1)Entonces
				verifica=Verdadero
			SiNo
				verifica=falso
			Fin Si
		Hasta Que verifica
		Si opc==2 Entonces
			corriendo=Falso
		SiNo
			corriendo=Verdadero
		Fin Si
		Si corriendo Entonces
			Para indice<-1 Hasta 3 Con Paso 1 Hacer
				Repetir
					Escribir "Por favor ingrese un numero positivo para el lado numero ", indice
					Leer lados(indice)
				Hasta Que verificar_min( lados(indice),0 )
			Fin Para
			Escribir "El perimetro del triangulo es "  lados(1)+lados(2)+lados(3)
			Si lados(1)==lados(2)==lados(3) Entonces
				Escribir "Es un triangulo equilatero"
			SiNo
				Si lados(1)<>lados(2)<>lados(3) Entonces
					Escribir "Es un triangulo escaleno."
				SiNo
					Escribir "Es un triangulo isosceles."
				Fin Si
			Fin Si
		Fin Si
	Fin Mientras
FinAlgoritmo
