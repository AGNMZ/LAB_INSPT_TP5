Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//*******/*********/*********/*********/*********/*********/*********/*********/=========/=========/
// 2.19) En un locutorio se realizan 3 tipos de llamadas. 1- local, se abona $0,50 por minuto.
// 2- urbana, se abona $4 los primeros 3 minutos y $2 cada minuto adicional. 3-interurbana, se 
// ingresa una tarifa T1 para los primeros 3 minutos y una tarifa T2 para cada minuto adicional 
// (t1 y t2 dependen del país de destino). La duración de la llamada es un número entero.
// Se ingresa tipo de llamada y duración, se debe informar: Tipo de llamada, duración e importe a 
// abonar. Al cambiar el turno se ingresa F y se emite el importe total recaudado.

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
	
Funcion ingreso_c <- ingreso_cha(pri_r por valor,seg_r por valor)
	definir verificado como logico
	definir ingreso_c Como Caracter
	Repetir
		Escribir ""	
		Escribir "-> ",pri_r
		Escribir "-> ",seg_r
		Escribir ""
		Leer ingreso_c
		ingreso_c<-Mayusculas(ingreso_c)
		Segun ingreso_c Hacer
			"1":
				verificado=verdadero
				Escribir "Selecciono llamada local."
			"2":
				verificado=verdadero
				Escribir "Selecciono llamada urbana."
			"3":
				verificado=verdadero
				Escribir "Selecciono llamada interurbana."
			"F":
				verificado=verdadero
				Escribir "Selecciono salir del programa."
			De Otro Modo:
				verificado=falso
				Escribir "Entrada incorrecta."
		Fin Segun
	Hasta Que verificado
Fin Funcion

Funcion imprime_resultado(tipo por valor,duracion por valor, acu_importe por referencia)
	definir importe como real
	Segun tipo Hacer
		"1":
			importe<-duracion*0.5
			acu_importe<-acu_importe+importe
			Escribir "Su llamada locar duro ", duracion," minutos."
			Escribir "El importe sera de ", importe," $."	
		"2":
			Si duracion>3 Entonces
				importe<-(duracion-3)*2+12
				acu_importe<-acu_importe+importe
				Escribir "Su llamada urbana duro ", duracion," minutos."
				Escribir "El importe sera de ", importe," $."	
			SiNo
				importe<-duracion*4
				acu_importe<-acu_importe+importe
				Escribir "Su llamada urbana duro ", duracion," minutos."
				Escribir "El importe sera de ", importe," $."	
			Fin Si
		"3":
			Si duracion>3 Entonces
				importe<-(duracion-3)*2+1.5
				acu_importe<-acu_importe+importe
				Escribir "Su llamada interurbana duro ", duracion," minutos."
				Escribir "El importe sera de ", importe," $."	
			SiNo
				importe<-duracion*0.5
				acu_importe<-acu_importe+importe
				Escribir "Su llamada interurbana duro ", duracion," minutos."
				Escribir "El importe sera de ", importe," $."	
			Fin Si
		De Otro Modo:
	Fin Segun
	
Fin Funcion

Algoritmo ej_2_19
	Definir duracion como entero
	Definir acu_importe Como Real
	Definir pri_r,seg_r,tipo Como Caracter
	Definir funcionando Como Logico
	funcionando<-Verdadero
	acu_importe<-0
	Repetir
		pri_r<-"Ingrese el tipo de llamada a realizar."
		seg_r<-"1-Local - 2-Urbana - 3-Interurbana - F-Salir"
		tipo<-ingreso_cha(pri_r,seg_r)
		Segun tipo Hacer
			"F":
				funcionando<-falso
			De Otro Modo:
				pri_r<-"Ingrese la duracion de la llamada."
				seg_r<-"Debe ingresar el numero de minutos."
				duracion<-ingreso_ent(pri_r,seg_r,0,0,1,0)
				imprime_resultado(tipo,duracion,acu_importe)
		Fin Segun
	Hasta Que no funcionando
	Escribir "El importe total recaudado asciende a ",acu_importe," $"
	
FinAlgoritmo
