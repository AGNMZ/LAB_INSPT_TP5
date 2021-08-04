Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//2.29) Considere el caso inverso al del problema anterior. Se dan como dato los vectores VP y VI que contienen respectivamente las componentes pares e impares de un vector V. Reconstruir el vector V.

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

Funcion ingreso_vec(pri_r,seg_r,tam,vector por referencia)
	definir i como entero
	definir pri_r1 como caracter
	Para i<-1 Hasta tam Con Paso 1 Hacer
		pri_r1<-pri_r+ConvertirATexto(i)
		vector(i)<-ingreso_ent(pri_r1,seg_r,0,0,0,0)
	Fin Para
Fin Funcion

Funcion imprime_vector (pri_r,seg_r,tam, vector Por Referencia)
	Escribir pri_r
	Para i<-1 Hasta tam Con Paso 1 Hacer
		seg_r<-seg_r+ConvertirATexto(vector(i))+","
	Fin Para
	seg_r<-seg_r+"]"
	Escribir seg_r
Fin Funcion


Funcion rehacer_vector(tam,vector Por Referencia,vectorI Por Referencia,vectorP Por Referencia )
	Para i<-1 Hasta tam Con Paso 1 Hacer
		Si i%2==0 Entonces
			vector(i)<-vectorP(i/2)
		SiNo
			vector(i)<-vectorI((i+1)/2)
		Fin Si
	Fin Para
Fin Funcion

Algoritmo e2_28
	Definir pri_r,seg_r Como Caracter
	Definir N,NI,NP Como Entero
	pri_r<-"Ingrese la cantidad de posciciones que tendria el vector V"
	seg_r<-"Debe ser un entero mayor que 1 y menor o igual a 30."
	N<- ingreso_ent(pri_r,seg_r,2,30,1,1)
	Dimension vec(N)
	Si N%2==0 Entonces
		NI<-N/2
		NP<-N/2
	SiNo
		NI<-(N+1)/2
		NP<-(N-1)/2
	Fin Si
	Dimension vi(NI)
	Dimension vp(NI)
	pri_r<-"Para el vector VI, ingrese el numero de poscicion: "
	seg_r<-"Puede ser cualquier entero."
	ingreso_vec(pri_r,seg_r,NI,vi)
	pri_r<-"Para el vector VP, ingrese el numero de poscicion: "
	seg_r<-"Puede ser cualquier entero."
	ingreso_vec(pri_r,seg_r,NP,vp)
	rehacer_vector(N,vec,vi,vp)
	pri_r<-"El vector V original es:"
	seg_r<-"["
	imprime_vector(pri_r,seg_r,N,vec)
FinAlgoritmo
