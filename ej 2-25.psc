Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//2.25) Se lee un valor n seguido de n valores, se pide informar el mayor número leído y su posición, si este se repite, informar todas las posiciones.

Funcion verifica <- verificar( num por valor,min por valor,max por valor,con_min,con_max)
	Definir verifica Como Logico	
	Si (con_min==1 y num<min) o (con_max==1 y num>max) Entonces
		verifica=Falso
		Escribir "Entrada incorrecta"
	SiNo
		verifica=Verdadero
	Fin Si
Fin Funcion

Funcion ingreso_e <- ingreso_ent(pri_r por valor,seg_r por valor,min,max,con_min,con_max)
	definir ingreso_e Como Entero
	Repetir
		Escribir ""	
		Escribir "-> ",pri_r
		Escribir "-> ",seg_r
		Escribir ""
		Leer ingreso_e
	Hasta Que verificar(ingreso_e,min,max,con_min,con_max)
Fin Funcion

Funcion ingreso_re <- ingreso_r(pri_r por valor,seg_r por valor,min,max,con_min,con_max)
	definir ingreso_re Como real
	Repetir
		Escribir ""	
		Escribir "-> ",pri_r
		Escribir "-> ",seg_r
		Escribir ""
		Leer ingreso_re
	Hasta Que verificar(ingreso_re,min,max,con_min,con_max)
Fin Funcion

Funcion ingreso_vec(pri_r,seg_r,tam,vector por referencia)
	definir i como entero
	definir pri_r1 como caracter
	Para i<-1 Hasta tam Con Paso 1 Hacer
		pri_r1<-pri_r+ConvertirATexto(i)
		vector(i)<-ingreso_r(pri_r1,seg_r,0,0,0,0)
	Fin Para
Fin Funcion

Funcion maximo <- chequear_maximo (tam,vector  por referencia)
	Para i<-1 Hasta tam Con Paso 1 Hacer
		Si i==1 Entonces
			maximo<-vector(i)
		SiNo
			Si maximo<vector(i) Entonces
				maximo<-vector(i)
			Fin Si
		Fin Si
	Fin Para
Fin Funcion

Funcion imprime_maximos(pri_r,seg_r,tam,vector por referencia, maximo)
	Escribir pri_r,maximo
	Para i<-1 Hasta tam Con Paso 1 Hacer
		Si vector(i)==maximo Entonces
			seg_r<-seg_r+ConvertirATexto(i)+" "
		Fin Si
	Fin Para
	Escribir seg_r
Fin Funcion

Algoritmo ej_2_25
	Definir pri_r,seg_r Como Caracter
	Definir N Como Entero
	Definir max como real
	pri_r<-"Ingrese el numero de numeros enteros a ingresar."
	seg_r<-"Debe ser un entero mayor que cero."
	N<- ingreso_ent(pri_r,seg_r,1,0,1,0)
	Dimension ent(N)
	pri_r<-"Ingrese el numero de poscicion: "
	seg_r<-"Puede ser cualquier real."
	ingreso_vec(pri_r,seg_r,N,ent)
	max<-chequear_maximo (n,ent)
	pri_r<-"El valor del maximo es: "
	seg_r<-"Y se encuentra en las posciciones: "
	imprime_maximos(pri_r,seg_r,N,ent,max)
FinAlgoritmo
