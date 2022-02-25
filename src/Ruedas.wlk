class Rueda {
	var property nivelDeDesgaste
	
	method aumentarDesgaste(unaCantidad){
		nivelDeDesgaste+=unaCantidad
	}
	
	
	method superoUnDesgaste(unaCantidad){
		return unaCantidad > 100
	}
}

const rueda1 = new Rueda(nivelDeDesgaste = 13)
const rueda2 = new Rueda(nivelDeDesgaste = 13)
const rueda3 = new Rueda(nivelDeDesgaste = 15)
const rueda4 = new Rueda(nivelDeDesgaste = 35)
