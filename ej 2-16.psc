//2.16) Se ingresa un número natural N, seguido de N números. La computadora muestra el valor de los dos mayores. Si todos los números fueron iguales, emitir un mensaje

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
		variable<-num
	Fin Si
Fin Funcion

Funcion ingreso <- ing_entero(idx por valor)
	definir ingreso como entero
	Escribir "Por favor ingrese el ",idx,"° numero entero"
	Leer ingreso
Fin Funcion

Algoritmo ej_2_16
	Definir N,ind,maximo,pos_maximo,maximo2 como entero
	Definir iguales Como Logico
	N=ing_N()
	inguales=Verdadero
	dimension int(N)
	pos_maximo=0
	Para ind<-1 Hasta N Con Paso 1 Hacer
		int(ind)<-ing_entero(ind)
		guarda_valor(int(ind),(ind==1 o int(ind)>maximo),maximo)
		Si (ind==1 o int(ind)>maximo) Entonces
			pos_maximo<-ind
		Fin Si
		Si ind>=2 Entonces
			guarda_valor(int(ind)=int(ind-1),iguales,iguales)
		Fin Si
	Fin Para
	Para ind<-1 Hasta N Con Paso 1 Hacer
		guarda_valor(int(ind),(((ind==1 y pos_maximo<>1)o(ind==2 y pos_maximo==1)o(int(ind)>maximo2 y ind<>pos_maximo))),maximo2) //guarda el segundo valor maximo desde el primero y si el primero es el maximo total, desde el segundo
	Fin Para
	
	Si iguales Entonces
		Escribir "Todos los numero ingresados fueron iguales con valor: ", maximo2	
	SiNo
		Escribir "Los dos numeros con valor maximo fueron: ", maximo, " y ",maximo2
	Fin Si
	
FinAlgoritmo
