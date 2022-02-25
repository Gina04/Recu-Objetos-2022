/*
Dado un camino y un vehículo, realizar el viaje de modo que se produzca el desgaste de 
* las ruedas del vehículo propio de atravesar todas las rutas del camino. Recordar que 
* si alguna rueda supera el desgaste permitido debe interrumpirse ese “viaje” en ese momento 
* e informarse adecuadamente.

*/
import Rutas.*
object turisParadigma{
	var property caminos=[]
	var property vehiculo
	
	method tiempoEnRecorrerCamino(){
		return caminos.sum({camino => vehiculo.tiempoEnRecorrer(camino)})
	}
	
	method recorrerCamino(){
		caminos.forEach({camino => vehiculo.recorre(camino)})
	}
	
	method mejorarRuta(){
		caminos.forEach({camino => camino. actualizarTipoRuta(camino)})
	}
	
}
