Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//2.14) Se ingresa un número natural N, seguido de N reales. Se emite el promedio de los números positivos, el promedio de los números negativos y la cantidad de ceros.
Funcion verifica <- verificar_min( num por valor,min por valor )
	Definir verifica Como Logico	
	Si num<min Entonces
		verifica=Falso
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Funcion ingreso <- ing_natural (idx por valor)
	definir ingreso como entero
	Repetir
		Escribir "Por favor ingrese el ",idx,"er numero natural"
		Leer ingreso
	Hasta Que verificar_min( ingreso,0 )
Fin Funcion

Funcion ingreso <- ing_real(idx por valor)
	definir ingreso como real
		Escribir "Por favor ingrese el ",idx,"er numero real"
		Leer ingreso
Fin Funcion

Funcion entradaN <- ing_N ()
	Repetir
		Escribir  "Ingrese el numero de numeros naturales y reales a ingresar."
		Leer entradaN
	Hasta Que verificar_min(entradaN,1)
	
Fin Funcion


Funcion acumular_positivos( num por valor,acumulador Por Referencia)
	Si num>0 Entonces
		acumulador<-acumulador+num
	Fin Si
Fin Funcion

Funcion acumular_negativos( num por valor,acumulador Por Referencia)
	Si num<0 Entonces
		acumulador<-acumulador+num
	Fin Si
Fin Funcion

Funcion contar_positivos( num por valor,contador Por Referencia)
	Si num>0 Entonces
		contador<-contador+1
	Fin Si
Fin Funcion

Funcion contar_negativos( num por valor,contador Por Referencia)
	Si num<0 Entonces
		contador<-contador+1
	Fin Si
Fin Funcion

Funcion contar_ceros( num por valor,contador Por Referencia)
	Si num==0 Entonces
		contador<-contador+1
	Fin Si
Fin Funcion

Funcion  imprime_promedio(tag por valor,acumulado por valor,contador por valor)
	Si contador==0 Entonces
		Escribir "No se ingresaron valores ",tag	
	SiNo
		Escribir "El promedio de numeros ",tag," es ", acumulado/contador
	Fin Si
Fin Funcion

Algoritmo ej2_14
	Definir N,idx como entero
	Definir acu_pos,acu_neg,con_pos,con_neg,con_cero como real
	definir neg,pos Como Caracter
	N=ing_N()
	acu_pos<-0
	acu_neg<-0
	con_pos<-0
	con_neg<-0
	con_cero<-0
	neg<-"negativos"
	pos<-"positivos"
	Dimension naturales(N),realess(N)
	Para idx<-1 Hasta N Con Paso 1 Hacer
		naturales(idx)<-ing_natural(idx)
		acumular_positivos(naturales(idx),acu_pos)
		acumular_negativos(naturales(idx),acu_neg)
		contar_positivos(naturales(idx),con_pos)
		contar_negativos(naturales(idx),con_neg)
		contar_ceros(naturales(idx),con_cero)
	Fin Para
	Para idx<-1 Hasta N Con Paso 1 Hacer
		realess(idx)<-ing_real(idx)
		acumular_positivos(realess(idx),acu_pos)
		acumular_negativos(realess(idx),acu_neg)
		contar_positivos(realess(idx),con_pos)
		contar_negativos(realess(idx),con_neg)
		contar_ceros(realess(idx),con_cero)
	Fin Para
	imprime_promedio(pos,acu_pos,con_pos)
	imprime_promedio(neg,acu_neg,con_neg)
	Escribir "La cantidad de ceros es ",  con_cero
	
FinAlgoritmo
