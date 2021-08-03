Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//2.26) Se lee un valor n seguido de n valores, se pide informar el primer y segundo valor más alto ingresado.
	
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
	
	
	
	Algoritmo ej_2_26
		Definir pri_r,seg_r Como Caracter
		Definir N,N2 Como Entero
		Definir max,max2 como real
		pri_r<-"Ingrese el numero de numeros enteros a ingresar."
		seg_r<-"Debe ser un entero mayor que cero."
		N<- ingreso_ent(pri_r,seg_r,1,0,1,0)
		Dimension ent(N)
		pri_r<-"Ingrese el numero de poscicion: "
		seg_r<-"Puede ser cualquier real."
		ingreso_vec(pri_r,seg_r,N,ent)
		ordenar_vector(N,ent)
		max<-chequear_maximo(N,ent)
		N2<-N-contar_valores(N,ent,max)
		max2<-chequear_maximo(N2,ent)
		Escribir "El valor mas alto ingresado es: ",max
		Escribir "El segundo valor mas alto ingresado es: ",max2
FinAlgoritmo

