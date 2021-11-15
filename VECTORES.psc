// v4 de cada alumno hay que pedir 3 notas -> se sacan los que sus 3 notas estan por delante de la media
// error
Algoritmo vector_v4
	// Declaramos variables
	Definir suma_notas,media Como Real;
	Definir i Como Entero;
	Definir nota_1,nota_2,nota_3 Como Real;
	Definir n_alumn Como Entero;
	Definir nombre Como Caracter;
	
	// Iniciamos variables
	suma_notas<-0;
	
	// Pedimos el numero de nota que quiera introducir el usuario
	Escribir 'Dime el número de alumnos que hay en la clase: ';
	Leer n_alumn;
	
	// Le damos valor al vector
	Dimension nota_1[n_alumn];
	Dimension nota_2[n_alumn];
	Dimension nota_3[n_alumn];
	Dimension nombre[n_alumn];
	
	// Hacemos un bucle para calcular la media de los alumnos
	Para i<-0 Hasta n_alumn-1 Hacer
		
		// Pedimos datos al usuario para el nombre
		Escribir 'Dime el nombre del usuario ',i;
		Leer nombre[i];
		
		// Pedimos datos al usuario para la nota
		Escribir 'Dime la nota 1 ';
		Leer nota_1[i];
		Escribir 'Dime la nota 2 ';
		Leer nota_2[i];
		Escribir 'Dime la nota 3 ';
		Leer nota_3[i];
		
		// Sumamos las 3 notas
		suma_notas<-nota_1[i]+nota_2[i]+nota_3[i];
		
	FinPara
	
	media<- suma_notas/3;
	
	Escribir 'La media de las notas introducidas es: ',media,'.';
	
	
	// Hacemos un bucle para ver los alumnos con más nota que la media
	Para i<-0 Hasta n_alumn-1 Hacer
		
		si nota_1[i]>=media Entonces
			Escribir 'La nota 1 que supera a la media es ',nota_1[i],' y pertence a ',nombre[i],'.';
			Escribir 'La nota 2 que supera a la media es ',nota_2[i],' y pertence a ',nombre[i],'.';
			Escribir 'La nota 3 que supera a la media es ',nota_3[i],' y pertence a ',nombre[i],'.';
		FinSi
		
	FinPara
	
	
FinAlgoritmo
