import plagas.*

class Elemento{
	
	method esBueno()
	method recibirAtaqueDe(plaga){
		plaga.efectoProducido()
	}
}

class Hogar inherits Elemento{
	
	var property nivelDeMugre
	var property nivelDeConfort
	
	override method esBueno()= nivelDeMugre/2 <= nivelDeConfort
	
	override method recibirAtaqueDe(plaga){
		nivelDeMugre= nivelDeMugre + plaga.nivelDeDanio()
		super(plaga)
	}
}

class Huerta inherits Elemento{
	
	var property capacidadDeProduccion
	
	override method esBueno()= capacidadDeProduccion > nivel.nivelGlobalHuertas()
	
	override method recibirAtaqueDe(plaga){
		capacidadDeProduccion = capacidadDeProduccion - if (!plaga.transmiteEnfermedad()) plaga.nivelDeDanio()*0.1
		 else plaga.nivelDeDanio()*0.1 + 10
		 
		super(plaga)
	}
}

object nivel{
	var property nivelGlobalHuertas = 5
}

class Mascota inherits Elemento{
	var property nivelDeSalud
	
	override method esBueno()= nivelDeSalud > 250
	
	override method recibirAtaqueDe(plaga){
		 if (plaga.transmiteEnfermedad()){
		 	nivelDeSalud= nivelDeSalud-plaga.nivelDeDanio()
		 }
		 super(plaga)
	}
}