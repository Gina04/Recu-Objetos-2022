import Vehiculos.*
import Clima.*
import Ruedas.*
class SuperaElLimiteDeDesgasteRuedaException inherits Exception{}

class Ruta{
	var property extension 
	var tipoRuta // ripo, tierra, asfalto 

	method desgasta(vehiculo, rueda){
		if(vehiculo == carga){
			rueda.aumentarDesgaste(tipoRuta.varianteDesgasteSegunTipo(vehiculo) * 2)
		}else
		    rueda.aumentarDesgaste(tipoRuta.varianteDesgasteSegunTipo(rueda))	
	}
	
	method desgastarRueda(vehiculo, rueda){ 
		if(rueda.superoUnDesgaste(rueda.nivelDesgaste())){
			throw new SuperaElLimiteDeDesgasteRuedaException()
		}else{
			self.desgasta(vehiculo,rueda)
		}	
	}
		

	method actualizarRuta(unaRuta){
		tipoRuta = unaRuta
	}
	

		
	
}


//Composicion 

//class RutaSegunTipo{
	//var property velocidadMaxima
	
	//method maxVelocidad(clima)
	
	//method varianteDesgasteSegunTipo(vehiculo){
	//	return (vehiculo.velocidadFinal(self)/10)
	//}
	
//}

class Tierra{
	method maxVelocidad(){
		return (60 - clima.cantLluviaCaida()).max(10)
	} 
	
	method varianteDesgasteSegunTipo(vehiculo){
		return (vehiculo.velocidadFinal(self)/10)
	}
	


	
}


class Ripio inherits Tierra{
  override method maxVelocidad() = 80
}

class Asfalto{
	method maxVelocidad(unValor)= unValor
	
	method varianteDesgasteSegunTipo(vehiculo){
		return vehiculo.tiempoEnRecorrer(self)
	}
	//??
	method aumentaVelocidadMax(unValor,unaCantidad){
		return self.maxVelocidad(unValor) + unaCantidad
	}
	
}

//const ruta33= new asfalto(extension=100, velocidadMaxima=50)

