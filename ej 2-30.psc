Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//2.30) Se lee un número no determinado de veces una terna formada por legajo (int), edad (entero) y sueldo (real). El fin del lote se indica con un legajo = -1. Se desea emitir: 
//	- el legajo del más joven
//	- el sueldo promedio de quienes tengan entre 20 y 30 años
//	- el legajo del último de la lista

Funcion verifica <- verificar( num por valor,min por valor,max por valor,con_min,con_max,poner_cartel)
	Definir verifica Como Logico	
	Si (con_min==1 y num<min) o (con_max==1 y num>max) Entonces
		verifica=Falso
		si poner_cartel entonces
			Escribir "Entrada incorrecta"
		FinSi
		
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
	Hasta Que verificar(ingreso_e,min,max,con_min,con_max,Verdadero)
Fin Funcion

Funcion ingreso_real <- ingreso_r(pri_r por valor,seg_r por valor,min,max,con_min,con_max)
	definir ingreso_real Como real
	Repetir
		Escribir ""	
		Escribir "-> ",pri_r
		Escribir "-> ",seg_r
		Escribir ""
		Leer ingreso_real
	Hasta Que verificar(ingreso_real,min,max,con_min,con_max,Verdadero)
Fin Funcion

Algoritmo ej2_30
	Definir pri_r,seg_r Como Caracter
	definir leg, edad, leg_mas_joven, edad_mas_joven, con_20_30, ult_leg Como entero
	definir suel, acu_suel_20_30 Como Real
	leg<-0
	leg_mas_joven<-0
	edad_mas_joven<-100000000
	con_20_30<-0
	acu_suel_20_30<-0 
	Repetir
		pri_r<-"Ingrese numero de legajo"
		seg_r<-"Debe ser un entero positivo. ingrese -1 para salir"
		leg<-ingreso_ent(pri_r,seg_r,-1,0,1,0)
		Si leg<>-1 Entonces
			ult_leg<-leg
			pri_r<-"Ingrese su edad"
			seg_r<-"Debe ser un entero positivo."
			edad<-ingreso_ent(pri_r,seg_r,0,0,1,0)
			pri_r<-"Ingrese su sueldo"
			seg_r<-"Debe ser un real positivo."
			suel<-ingreso_r(pri_r,seg_r,0,0,1,0)
			si verificar(edad,edad_mas_joven,0,1,0,Falso) Entonces
				leg_mas_joven<-leg
				edad_mas_joven<-edad
			FinSi
			si verificar(edad,20,30,1,1,Falso) Entonces
				con_20_30<-con_20_30+1
				acu_suel_20_30<-acu_suel_20_30+suel
			FinSi
			
			Escribir "--------------------"
			Escribir "Ingresado al sistema"
			Escribir "--------------------" 
		SiNo
			Escribir "--------"
			Escribir "Saliendo"
			Escribir "--------"
		Fin Si
	Hasta Que leg==-1
	Escribir  "El numero de legajo del mas joven es:", leg_mas_joven
	si con_20_30<>0 Entonces
		Escribir "El sueldo promedio de los que estan entre 20 y 30 años es de:", acu_suel_20_30/con_20_30
	SiNo
		Escribir "No se ingresaron personas entre 20 y 30 años."
	FinSi
	Escribir "El ultimo legajo ingresado fue:", ult_leg
	
	
FinAlgoritmo
