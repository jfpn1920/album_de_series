Algoritmo album_de_series
	Definir opcion, totalSeries Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir titulo Como Caracter
	Definir genero Como Caracter
	Definir director Como Caracter
	Definir temporadas Como Entero
	Definir episodios Como Entero
	Definir plataforma Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension titulo[100]
	Dimension genero[100]
	Dimension director[100]
	Dimension temporadas[100]
	Dimension episodios[100]
	Dimension plataforma[100]
	Dimension estado[100]
	totalSeries <- 0
	siguienteID <- 1
	//---------------------------------//
	//--|menu_principal_album_series|--//
	//---------------------------------//
	Repetir
		Escribir "menu principal álbum de series"
		Escribir "1) registrar serie"
		Escribir "2) editar serie"
		Escribir "3) eliminar serie"
		Escribir "4) buscar serie"
		Escribir "5) listar series"
		Escribir "6) ver detalles de la serie"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_serie|--//
			//---------------------//
			1:
				Escribir "registrar serie"
				id[totalSeries + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalSeries + 1]
				Escribir "ingrese el título:"
				Leer titulo[totalSeries + 1]
				Escribir "ingrese el género:"
				Leer genero[totalSeries + 1]
				Escribir "ingrese el director:"
				Leer director[totalSeries + 1]
				Escribir "ingrese la cantidad de temporadas:"
				Leer temporadas[totalSeries + 1]
				Escribir "ingrese la cantidad de episodios:"
				Leer episodios[totalSeries + 1]
				Escribir "ingrese la plataforma:"
				Leer plataforma[totalSeries + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalSeries + 1]
				totalSeries <- totalSeries + 1
				Escribir "serie registrada correctamente."
			//------------------//
			//--|editar_serie|--//
			//------------------//
			2:
				Escribir "editar serie"
				Si totalSeries = 0 Entonces
					Escribir "no hay series registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalSeries Hacer
						Escribir id[i], " | ", titulo[i], " | ", genero[i], " | ", director[i], " | ", temporadas[i], " | ", episodios[i], " | ", plataforma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la serie:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSeries Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo título:"
							Leer titulo[i]
							Escribir "ingrese el nuevo género:"
							Leer genero[i]
							Escribir "ingrese el nuevo director:"
							Leer director[i]
							Escribir "ingrese la nueva cantidad de temporadas:"
							Leer temporadas[i]
							Escribir "ingrese la nueva cantidad de episodios:"
							Leer episodios[i]
							Escribir "ingrese la nueva plataforma:"
							Leer plataforma[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "serie editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una serie con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_serie|--//
			//--------------------//
			3:
				Escribir "eliminar serie"
				Si totalSeries = 0 Entonces
					Escribir "no hay series registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalSeries Hacer
						Escribir id[i], " | ", titulo[i], " | ", genero[i], " | ", director[i], " | ", temporadas[i], " | ", episodios[i], " | ", plataforma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la serie:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSeries Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalSeries Entonces
								Para j <- i Hasta totalSeries - 1 Hacer
									id[j] <- id[j + 1]
									titulo[j] <- titulo[j + 1]
									genero[j] <- genero[j + 1]
									director[j] <- director[j + 1]
									temporadas[j] <- temporadas[j + 1]
									episodios[j] <- episodios[j + 1]
									plataforma[j] <- plataforma[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalSeries <- totalSeries - 1
							Escribir "serie eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una serie con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_serie|--//
			//------------------//
			4:
				Escribir "buscar serie"
				Si totalSeries = 0 Entonces
					Escribir "no hay series registradas."
				SiNo
					Escribir "ingrese el id de la serie:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSeries Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrados"
							Escribir id[i], " | ", titulo[i], " | ", genero[i], " | ", director[i], " | ", temporadas[i], " | ", episodios[i], " | ", plataforma[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una serie con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_series|--//
			//-------------------//
			5:
				Escribir "listar series"
				Si totalSeries = 0 Entonces
					Escribir "no hay series registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalSeries Hacer
						Escribir id[i], " | ", titulo[i], " | ", genero[i], " | ", director[i], " | ", temporadas[i], " | ", episodios[i], " | ", plataforma[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------//
			//--|ver_detalles_serie|--//
			//------------------------//
			6:
				Escribir "ver detalles de la serie"
				Si totalSeries = 0 Entonces
					Escribir "no hay series registradas."
				SiNo
					Escribir "ingrese el id de la serie:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSeries Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la serie"
							Escribir "id: ", id[i]
							Escribir "título: ", titulo[i]
							Escribir "género: ", genero[i]
							Escribir "director: ", director[i]
							Escribir "temporadas: ", temporadas[i]
							Escribir "episodios: ", episodios[i]
							Escribir "plataforma: ", plataforma[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una serie con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|salir_menu_principal|--//
			//--------------------------//
			7:
				Escribir "gracias por utilizar el álbum de series."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo