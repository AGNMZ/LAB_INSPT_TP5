Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//*******/*********/*********/*********/*********/*********/*********/*********/=========/=========/
// 2.20) Ingresar un vector V1 de n componentes enteros (n<=30), generar e imprimir 
// un nuevo vector V2 que resulte de permutar entre si la primera y última componente.

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

Funcion Ingreso_vector(vector Por Referencia,n,pri_r por valor,seg_r por valor,min,max,conmin,conmax)
	definir i como entero
	definir reg_1 como caracter
	Para i<-1 Hasta n Con Paso 1 Hacer
		reg_1<- pri_r+CONVERTIRATEXTO(i)
		vector(i)<-ingreso_ent(reg_1,seg_r,min,max,conmin,conmax)
	Fin Para
Fin Funcion

Funcion permutar_vector(vector_a por referencia, vector_b Por Referencia,n)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Segun i Hacer
			1:
				vector_b(n)<-vector_a(i)
			n:
				vector_b(1)<-vector_a(i)
			De Otro Modo:
				vector_b(i)<-vector_a(i)
		Fin Segun
	Fin Para
Fin Funcion

Funcion  imprime_vector(vector Por Referencia, n)
	Definir cad Como Caracter
	cad<-"["
	Para i<-1 Hasta n Con Paso 1 Hacer
		Si i<>n Entonces
			cad<-cad+CONVERTIRATEXTO(vector(i)) +","
		SiNo
			cad<-cad+CONVERTIRATEXTO(vector(i)) 
		Fin Si
	Fin Para
	cad<-cad+"]"
	Escribir cad
Fin Funcion

Algoritmo ej_2_19
	Definir pri_r,seg_r Como Caracter
	Definir n Como Entero
	pri_r<-"Ingrese el tamaño del vector a ingresar"
	seg_r<-"Debe  ser un numero comprendido entre 1 y 30"
	n<-ingreso_ent(pri_r,seg_r ,1,30,1,1)
	dimension vector1(n),vector2(n)
	pri_r<-"Ingrese la poscicion del vector numero: "
	seg_r<-"Debe ser un entero"
	Ingreso_vector(vector1,n,pri_r,seg_r,0,0,0,0)
	permutar_vector(vector1,vector2,n)
	imprime_vector(vector2, n)
	
FinAlgoritmo
