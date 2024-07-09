import elementos.*

class Barrio {
	const property elementos=#{}
	
	method elementosBuenos()= elementos.filter({elemento=>elemento.esBueno()})
	method cantidadDeBuenos()= self.elementosBuenos().size()
	
	method elementosNoBuenos() = elementos.filter({elemento=> not elemento.esBueno()})
	method cantidadDeNoBuenos()= self.elementosNoBuenos().size()
	
	method esCopado() = self.cantidadDeBuenos() > self.cantidadDeNoBuenos()
}
