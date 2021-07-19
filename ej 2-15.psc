//2.15) Se leen N números enteros y se emite el mayor y la posición en la que ingresó por primera vez; el valor del último y del primer número ingresad
Funcion entradaN <- ing_N ()
	Repetir
		Escribir  "Ingrese el numero de numeros enteros a ingresar."
		Leer entradaN
	Hasta Que verificar_min(entradaN,1)
Fin Funcion
	
Funcion verifica <- verificar_min( num por valor,min por valor )
		Definir verifica Como Logico	
		Si num<min Entonces
			verifica=Falso
		SiNo
			verifica=Verdadero
		Fin Si
Fin Funcion

Funcion guarda_valor( num por valor,regla por valor, variable Por Referencia)
	Si regla Entonces
		variable=num
	Fin Si
Fin Funcion

Funcion ingreso <- ing_entero(idx por valor)
	definir ingreso como entero
	Escribir "Por favor ingrese el ",idx,"° numero entero"
	Leer ingreso
Fin Funcion

Algoritmo ej_2_15
	Definir N,ind,num,primero,ultimo,maximo,pos_maximo como entero
	N=ing_N()
	Para ind<-1 Hasta N Con Paso 1 Hacer
		num<-ing_entero(ind)
		guarda_valor(num,(ind==1), primero)
		guarda_valor(num,(ind==N), ultimo)
		guarda_valor(num,(ind==1 o num>maximo),maximo)
		guarda_valor(ind,(ind==1 o num>maximo),pos_maximo)
	Fin Para
	Escribir "El primer numero ingresado fue ", primero
	Escribir "El ultimo numero ingresado fue ", ultimo
	Escribir "El maximo numero ingresado fue ", maximo
	Escribir "La posicion del maximo fue ", pos_maximo
	
FinAlgoritmo
