//2.27) Dado un vector de n componentes enteras (n<=30) informar cual es el valor máximo ingresa y en qué posición/s se encuentra.

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

Funcion maximo <- chequear_maximo (tam,vector por referencia)
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

Funcion con_val<- contar_valores(tam,vector Por Referencia,val )
	con_val=0
	Para i<-1 Hasta tam Con Paso 1 Hacer
		Si vector(i)==val Entonces
			con_val=con_val+1
		Fin Si
	Fin Para
Fin Funcion


Funcion ordenar_vector(tam, vector Por Referencia)
	definir i,j como enteros
	definir aux Como Real
	Para i=1 Hasta tam Con Paso 1 Hacer
		Para j=1 Hasta tam-1 Con Paso 1 Hacer
			Si vector(j)>vector(j+1) Entonces
				aux=vector(j)
				vector(j)=vector(j+1)
				vector(j+1)=aux
				
			Fin Si
		Fin Para
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

Algoritmo ej_2_27
	Definir pri_r,seg_r Como Caracter
	Definir N Como Entero
	Definir max como real
	pri_r<-"Ingrese el numero de numeros enteros a ingresar."
	seg_r<-"Debe ser un entero mayor que 0 y menor o igual a 30."
	N<- ingreso_ent(pri_r,seg_r,1,30,1,1)
	Dimension ent(N)
	pri_r<-"Ingrese el numero de poscicion: "
	seg_r<-"Puede ser cualquier real."
	ingreso_vec(pri_r,seg_r,N,ent)
	max<-chequear_maximo(N,ent)
	pri_r<-"El valor del maximo es: "
	seg_r<-"Y se encuentra en las posciciones: "
	imprime_maximos(pri_r,seg_r,N,ent,max)
FinAlgoritmo

