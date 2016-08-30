import ninios.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]

	method capacidadSusto() {
		return integrantes.sum({ x => x.capacidadSusto() })
	}

	method asustarA(adulto) {
		adulto.serAsustadoPor(self)
	}

	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}

	method lider() {
		return integrantes.max({ x => x.capacidadSusto() })
	}

	method cantidadCaramelos() {
		return integrantes.sum({ x => x.cantidadCaramelos() })
	}
	
	method recibirCaramelos(cantidad) {
		self.lider().recibirCaramelos(cantidad)
	}

	method tresConMasCaramelos() {
		return integrantes
			.sortedBy({ x, y => x.cantidadCaramelos() > y.cantidadCaramelos() })
			.take(3)
	}

	method algunoConMuchosCaramelosAsusta() {
		return self.tresConMasCaramelos().any({ x => x.capacidadSusto() > 42 })
	}

	method elementos() {
		return integrantes.map({ x => x.elementos().asSet() }).flatten()
	}

	method elementosRepetidos() {
		return self.elementos().filter({ x => self.elementos().occurrencesOf(x) > 1 })
	}

	method sacarseloATodos(elemento) {
		integrantes.forEach({ x => x.removerElemento(elemento) })
	}

	method normaSinRepetidos() {
		self.elementosRepetidos().forEach({ x => self.sacarseloATodos(x) })
	}
}
