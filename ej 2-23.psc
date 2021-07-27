//2.23) Se ingresa un número entero y, la computadora indica si es primo o no.  
 
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
	Para variable_numerica<-2 Hasta trunc(raiz(num)) Con Paso 1 Hacer
		Si num%i==0 Entonces
			primo<-falso
		Fin Si
	Fin Para
	
Fin Funcion

Algoritmo ej_2_23
	definir num como entero
	definir pri_r,seg_r Como Caracter
	pri_r<- "Ingrese el numero para verificar si es primo"
	seg_r<-"Debe ser un entero mayor que 1."
	num<-ingreso_ent(pri_r ,seg_r,2,0,1,0)
	Si esprimo(num) Entonces
		Escribir "Es primo"
	SiNo
		Escribir "No es primo"
	Fin Si
FinAlgoritmo
