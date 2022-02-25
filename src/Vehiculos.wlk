import Rutas.*
import Clima.*
import Ruedas.*

class Vehiculo{
	var property ruedas = [rueda1, rueda2, rueda3, rueda4] //nivel de desgaste 
	
	method recorre(unaRuta){
		ruedas.forEach({rueda=>unaRuta.desgastarRueda(self,rueda)})
	}

	method velocidadVehiculo(){
		return (self.velocidadBase()-clima.resistenciaViento())	
	}
	
	
	method velocidadFinal(ruta){
		return self.velocidadVehiculo().min(ruta.maxVelocidad())
	}
	//metodo abstracto
	method velocidadBase()
	
	method tiempoEnRecorrer(unaRuta){
		return unaRuta.extension()/self.velocidadFinal(unaRuta)
	}
	

}

class Particular inherits Vehiculo{
	var velocidadBaseParticular
	override method velocidadBase()= velocidadBaseParticular
	
}

class Carga inherits Vehiculo{
	var carga
	override method velocidadBase(){
	   if(carga < 40){
	   		return 80
	   }else{
	   	    return 60
	   }
	}
	
}


const carga = new Carga(carga = 400)

class Pasajero inherits Vehiculo{
	var cantPasajeros
	override method velocidadBase(){
		return 120 - cantPasajeros
}
	
}





