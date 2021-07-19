//2.18) Se ingresa número n y a continuación n enteros de 3 cifras, informar que porcentaje de ellos son capicúas.

Funcion verifica <- verificar_min( num por valor,min por valor )
	Definir verifica Como Logico	
	Si num<min Entonces
		Escribir "Entrada incorrecta"
		verifica=Falso
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Funcion entradaN <- ing_N ()
	Repetir
		Escribir  "Ingrese un numero entero mayor que cero."
		Leer entradaN
	Hasta Que verificar_min(entradaN,1)
Fin Funcion

Funcion verifica <- verificar_minmax( num por valor,min por valor,max por valor )
	Definir verifica Como Logico	
	Si num<min o num>max Entonces
		verifica=Falso
		Escribir "Entrada incorrecta"
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Funcion ingreso <- ing_entero3cifras(idx por valor,min por valor,max por valor)
	definir ingreso como entero
	Repetir
		Escribir "Por favor, ingrese el ",idx,"° numero entero. Debe tener 3 cifras porsitivo."
		Leer ingreso
	Hasta Que verificar_minmax(ingreso,min,max)
Fin Funcion

Funcion capicua<- verifica_capicua ( num )
	definir capicua Como Logico
	Si (trunc(num/100))==(num%10) Entonces
		capicua<-verdadero
	SiNo
		capicua<-falso
	Fin Si
Fin Funcion

Funcion contar_capicuas( num por valor,contador Por Referencia)
	Si verifica_capicua(num) Entonces
		contador<-contador+1
	Fin Si
Fin Funcion

Algoritmo ej_2_18
	Definir N,i,con_capi como entero
	N=ing_N()
	dimension ent(N)
	Para i<-1 Hasta N Con Paso 1 Hacer
		ent(N)<-ing_entero3cifras(i,100,999)
		contar_capicuas(ent(N),con_capi)
	Fin Para
	Escribir "El porcentaje de capicuas es ",con_capi*100/N," %"
	
FinAlgoritmo
