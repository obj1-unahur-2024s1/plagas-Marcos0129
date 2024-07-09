class Plaga {
	
	var property poblacion
	
	method nivelDeDanio()
	
	method transmiteEnfermedad()= poblacion > 10 
	
	method efectoProducido(){
		poblacion= poblacion * 1.10
	}
	
	method atacarElemento(elemento){
		elemento.recibirAtaqueDe(self)
		self.efectoProducido()
	}
}

class Cucaracha inherits Plaga{
	
	var property pesoPromedio
	
	override method nivelDeDanio()= poblacion/2
	
	override method transmiteEnfermedad() = super() and pesoPromedio>10
	
	override method efectoProducido(){
		super()
		pesoPromedio= pesoPromedio + 2
	}
}

class Pulga inherits Plaga{
	
	override method nivelDeDanio()= poblacion*2
	
}

class Garrapata inherits Plaga{
	
	var property pesoPromedio
	
	override method nivelDeDanio()= poblacion*2
	
	override method transmiteEnfermedad() = super() and pesoPromedio>10
	
	override method efectoProducido(){
		poblacion= poblacion * 1.20
	}
}

class Mosquito inherits Plaga{
	
	override method nivelDeDanio()= poblacion
	
	override method transmiteEnfermedad() = super() and poblacion% 3 == 0
}




