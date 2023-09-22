
	Algoritmo romanos
		
		Definir num Como Entero;
		Definir busca Como Entero;
		Definir cont Como Entero;
		Definir m Como Entero;//millar
		Definir c Como Entero;//centena
		Definir d Como Entero;//decena
		Definir u Como Entero;//unidad
		Definir mil Como Caracter;
		Definir cien Como Caracter;
		Definir diez Como Caracter;
		Definir unid Como Caracter;
		Definir resultado Como Caracter;
		Definir termina Como Logico;
		Definir correcto Como Logico;
		
		mil = "M,MM,MMM";
		cien = "C,CC,CCC,CD,D,DC,DCC,DCCC,CM";
		diez = "X,XX,XXX,XL,L,LX,LXX,LXXX,XC";
		unid = "I,II,III,IV,V,VI,VII,VIII,IX";
	
		termina = Falso;
		Repetir 
			correcto = Falso;
			Mientras !correcto Hacer
				Borrar Pantalla;
				resultado ="";
				Escribir " ";
				Escribir " CONVERTIDOR DE NUMEROS ROMANOS ";
				Escribir " ";
				
				Escribir Sin Saltar " Escriba un numero de 4 cifras (3999 - para salir):  ";
				leer num;
				
				si num == 3999 Entonces
					correcto = Verdadero;
					termina = Verdadero;
				FinSi
				si num >= 1 & num <= 3999  Entonces
					correcto = Verdadero;
				SiNo
					Escribir " Numero no valido, intente nuevamente ";
					Escribir " toque una tecla para continuar ";
					Esperar Tecla;
				FinSi
			FinMientras
			
			m=(num%10000-num%1000)/1000;
			c=(num%1000-num%100)/100;
			d=(num%100-num%10)/10;
			u=num%10;
			
			cont = 1 ;
			para busca = 1 Hasta Longitud(mil) Con Paso 1 Hacer
				si Subcadena(mil,busca,busca) == "," Entonces
					cont = cont + 1;
				SiNo
					si cont == m Entonces
						resultado = resultado + Subcadena(mil,busca,busca);
					FinSi
				FinSi
			FinPara
			
			cont = 1 ;
			para busca = 1 Hasta Longitud(cien) Con Paso 1 Hacer
				si Subcadena(cien,busca,busca) == "," Entonces
					cont = cont + 1;
				SiNo
					si cont == c Entonces
						resultado = resultado + Subcadena(cien,busca,busca);
					FinSi
				FinSi
			FinPara
			
			cont = 1 ;
			para busca = 1 Hasta Longitud(diez) Con Paso 1 Hacer
				si Subcadena(diez,busca,busca) == "," Entonces
					cont = cont + 1;
				SiNo
					si cont == d Entonces
						resultado = resultado + Subcadena(diez,busca,busca);
					FinSi
				FinSi
			FinPara
			
			cont = 1 ;
			para busca = 1 Hasta Longitud(unid) Con Paso 1 Hacer
				si Subcadena(unid,busca,busca) == "," Entonces
					cont = cont + 1;
				SiNo
					si cont == u Entonces
						resultado = resultado + Subcadena(unid,busca,busca);
					FinSi
				FinSi
			FinPara
		
			Escribir " EN NUMEROS ROMANOS SERIA ",resultado;
			Escribir " Toque una tecla para continuar ";
			Esperar Tecla;
		Mientras Que !termina
		Escribir " Gracias por jugar NumerosRomanos.";
		Escribir "                 ¶¶_    ¶¶ "
		Escribir "     ¶¶¶¶¶¶       ¶¶   ¶¶ "
		Escribir "    ¶¶¶¶¶¶¶¶¶      ¶  ¶ "
		Escribir "   ¶¶¶¶¶¶¶¶¶¶¶¶    ¶_¶ "
		Escribir "  ¶¶¶______¶¶¶¶   ¶ * * ¶¶¶¶¶"
		Escribir "  ¶¶¶_________¶¶_¶__¶¶¶¶¶¶¶¶¶¶ "
		Escribir "  ¶¶¶_________¶¶__¶¶¶¶¶¶¶¶¶¶¶¶ "
		Escribir "  ¶¶¶_________¶¶¶¶¶¶______¶¶¶¶ "
		Escribir "   ¶¶_________¶¶¶_________ ¶¶¶ "
		Escribir"   ¶¶________¶¶¶__________¶¶¶ "
		Escribir"    ¶¶______¶¶¶__________¶¶¶ "
		Escribir"    ¶¶¶___¶¶¶________ ¶¶¶¶ "
		Escribir"   ¶¶¶¶¶¶_¶   ¶   ¶¶¶¶¶¶ "
		Escribir" ¶¶¶¶_ ¶¶¶      ¶¶¶ ¶¶¶¶ "
		Escribir" ¶¶¶¶¶¶¶¶        ¶¶¶¶¶¶¶¶¶ "
        Escribir "  ¶¶¶¶¶            ¶¶¶¶¶¶ "
FinAlgoritmo
