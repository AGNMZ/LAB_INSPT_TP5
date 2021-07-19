//2.17) Se lee un número entero N mayor o igual que 0 y, la computadora muestra el factorial del mismo. 

Funcion verifica <- verificar_min( num por valor,min por valor )
	Definir verifica Como Logico	
	Si num<min Entonces
		verifica=Falso
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Funcion entradaN <- ing_N ()
	Repetir
		Escribir  "Ingrese un numero entero mayor o igual a cero."
		Leer entradaN
	Hasta Que verificar_min(entradaN,0)
Fin Funcion

Funcion fact <-factorial(num)
	definir fact como entero
	Segun num Hacer
		0:
			fact<-1
		1:
			fact<-1
		De Otro Modo:
			fact<-factorial(num-1)*num
	Fin Segun
	
Fin Funcion

Algoritmo ej_2_17
	Definir N como entero
	N=ing_N()
	Escribir "El factorial del numero ",N," es ",factorial(N)
FinAlgoritmo
