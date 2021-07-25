Funcion variable_de_retorno <- Nombre ( Argumentos )
	
Fin Funcion

//*******/*********/*********/*********/*********/*********/*********/*********/=========/=========/
//2.22) Se ingresa nombre del alumno, y curso (todo ordenado por curso), también 
//se ingresa el promedio general obtenido por cada alumno. Los cursos se ingresan ordenados, 
//cuando se ingresan los datos correspondientes a 4to año y por ser fin del año lectivo se pide 
//informar apellidos del futuro abanderado y de los escoltas. Finaliza el ingreso de 
//datos cuando aparece un curso igual a 0.

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

Funcion ingreso_c <- ingreso_car(pri_r por valor,seg_r por valor)
	definir ingreso_c Como caracter
		Escribir ""	
		Escribir "-> ",pri_r
		Escribir "-> ",seg_r
		Escribir ""
		Leer ingreso_c
Fin Funcion

Funcion ingreso_r <- ingreso_real(pri_r por valor,seg_r por valor,min,max,con_min,con_max)
	definir ingreso_r Como real
	Repetir
		Escribir ""	
		Escribir "-> ",pri_r
		Escribir "-> ",seg_r
		Escribir ""
		Leer ingreso_r
	Hasta Que verificar(ingreso_r,min,max,con_min,con_max)
Fin Funcion

Funcion asignar_mejores(pri por referencia,seg por referencia,ter por referencia,regla1 por referencia,regla2 por referencia,regla3 por referencia,prom, nom por valor)
	Si prom>regla1 Entonces
		ter<-seg
		seg<-pri
		pri<-nom
		regla3<-regla2
		regla2<-regla1
		regla1<-prom
	SiNo
		Si prom>regla2 Entonces
			ter<-seg
			seg<-nom
			regla3<-regla2
			regla2<-prom
		SiNo
			Si prom>regla2 Entonces
				ter<-nom
				regla3<-prom
			Fin Si
		Fin Si
	Fin Si
Fin Funcion

Algoritmo ej_2_22
	Definir nombr,abanderado,escolta1,escolta2,pri_r,seg_r Como Caracter
	Definir promedio, promedio1,promedio2,promedio3 Como Real
	Definir curso,n,i como entero
	Definir cerrar Como logico
	cerrar<-falso
	abanderado<-"-No se ingresaron datos-"
	escolta1<-"-No se ingresaron datos-"
	escolta2<-"-No se ingresaron datos-"
	promedio1<-0
	promedio2<-0
	promedio3<-0
	Repetir
		pri_r<-"Ingrese el numero del curso,"
		seg_r<-"Ingrese cero para salir."
		curso<-ingreso_ent(pri_r,seg_r,0,0,1,0)
		Escribir "Ingresando alumnos del curso: ",curso
		Si curso<>0 Entonces
			pri_r<-"Ingrese cuantos alumnos va a ingresar del curso:"+CONVERTIRATEXTO(curso)
			seg_r<-"Ingrese un valor positivo."
			n<-ingreso_ent(pri_r,seg_r,1,0,1,0)
			Para i<-1 Hasta n Con Paso 1 Hacer
				pri_r<-"Ingrese nombre del alumno."
				seg_r<-""
				nombr<-ingreso_car(pri_r,seg_r)
				pri_r<-"Ingrese promedio del alumno."
				seg_r<-"Ingrese un numero real entre 4 y 10"
				promedio<-ingreso_real(pri_r,seg_r,4,10,1,1)
				asignar_mejores(abanderado,escolta1,escolta2,promedio1,promedio2,promedio3,promedio,nombr)
			Fin Para
		SiNo
			cerrar<-verdadero
		Fin Si
	Hasta Que cerrar
	Escribir "El nombre del abanderado es: ",abanderado
	Escribir "El nombre de la primer escolta es: ",escolta1
	Escribir "El nombre de la segunda escolta es: ",escolta2
FinAlgoritmo
