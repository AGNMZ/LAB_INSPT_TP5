//2.24) Se ingresa un número entero N y se emiten los N primeros números primos.

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

Funcion primo <- esprimo(num por valor)
	definir primo Como Logico
	definir i Como Entero
	primo<-verdadero
	Para i<-2 Hasta trunc(raiz(num)) Con Paso 1 Hacer
		Si (num%i)==0 Entonces
			primo<-falso
		Fin Si
	Fin Para
	
Fin Funcion

Algoritmo ej_2_23
	definir N,i como entero
	definir pri_r,seg_r Como Caracter
	pri_r<- "Ingrese los primeros N primos para ver."
	seg_r<-"Debe ser un entero mayor que 1."
	N<-ingreso_ent(pri_r ,seg_r,2,0,1,0)
	i<-2
	Mientras N>0 Hacer
		Si esprimo(i) Entonces
			N<-N-1
			Escribir i," es primo"
		Fin Si
		i<-i+1
	Fin Mientras
FinAlgoritmo
