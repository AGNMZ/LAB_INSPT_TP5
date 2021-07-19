Algoritmo ejercicio_2_9
	Dimension denominacion(10),cantidad(10)
	Para i<-1 Hasta 10 Con Paso paso Hacer
		cantidad(i)<-0
		i<-i+1
	Fin Para
	definir cont,opc Como Entero
	cont<-0
	opc<-0
	denominacion(1)<-100
	denominacion(2)<-50
	denominacion(3)<-20
	denominacion(4)<-10
	denominacion(5)<-5
	denominacion(6)<-2
	denominacion(7)<-1
	denominacion(8)<-0.5
	denominacion(9)<-0.25
	denominacion(10)<-0.10
	Definir monto,vuelto,vueltotot como real
	Escribir "Ingrese el monto de compra."
	Leer monto
	monto<-monto-(monto-(TRUNC(monto/0.1)/10))
	Escribir "El monto inresado es ", monto
	Mientras monto>100 o monto<=0 Hacer
		Escribir "La compra debe poder realizarse con un billete o moneda.No puede ser negativoo muy pequeño."
		Escribir "Por favor reingresse el monto"
		Leer monto
		monto<-monto-(monto%0.1)
	Fin Mientras
	Escribir "Elija con que billete va a pagar la compra."
	Para i<-1 Hasta 10 Con Paso paso Hacer
		Si denominacion(i)>monto Entonces
			Escribir "Opcion ",i," ",denominacion(i)," $"
			cont<-cont+1
			Fin Si
		i<-i+1
	Fin Para
	Leer opc
	Mientras opc<0 o opc>cont Hacer
		Escribir "Por favor, elija una opcion valida."
		Para i<-1 Hasta 10 Con Paso paso Hacer
			Si denominacion(i)>monto Entonces
				Escribir "Opcion ",i," ",denominacion(i)," $"
			Fin Si
			i<-i+1
			Fin Para
		Leer opc
	Fin Mientras
	vuelto<-abs(monto-denominacion(opc))
	vueltotot<-vuelto
	Para i<-1 Hasta 10 Con Paso paso Hacer
		Si denominacion(i)<vuelto o i=10 Entonces
			cantidad(i)<-TRUNC(vuelto/denominacion(i))
			vuelto<-vuelto-denominacion(i)*cantidad(i)
		Fin Si
		i<-i+1
	Fin Para
	Escribir "Su vuelto total es de ",vueltotot,"$ y los recibira en:"
	Para i<-1 Hasta 10 Con Paso paso Hacer
		Si cantidad(i)>0 Entonces
			Si i<7 Entonces
				Escribir "- ",cantidad(i)," billetes de ",denominacion(i)," $"
			SiNo
				Escribir "- ",cantidad(i)," monedas de ",denominacion(i)," $"
			Fin Si
		Fin Si
		i<-i+1
	Fin Para
	
FinAlgoritmo
