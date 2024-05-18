import chicosConClase.*
import elementos.*
import adultosConClase.*

object legionDelTerror {
	var integrantes = [ ]

	method capacidadSusto() {
		return integrantes.sum({ chico => chico.capacidadSusto() })
	}

	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}

	method lider() {
		return integrantes.max({ chico => chico.capacidadSusto() })
	}

	method caramelos() {
		return integrantes.sum({ chico => chico.caramelos() })
	}
	
	method recibirCaramelos(cantidad) {
		self.lider().recibirCaramelos(cantidad)
	}

	
	method todosLosDisfraces() {
		return integrantes.map({ chico => chico.disfraces().asSet() }).flatten()
	}

	method disfracesRepetidos() {
		return self.todosLosDisfraces().filter({ x => self.todosLosDisfraces().occurrencesOf(x) > 1 })
	}

	method sacarseloATodos(disfraz) {
		integrantes.forEach({ x => x.quitarDisfraz(disfraz) })
	}

	method normaSinRepetidos() {
		self.disfracesRepetidos().forEach({ disfraz => self.sacarseloATodos(disfraz) })
	}
}

object barrio{
	var chicos = []
	method chicosConMasCaramelos(cantidad) {
		return chicos 
			.sortedBy({ x, y => x.caramelos() > y.caramelos()})
			.take(cantidad)
	}
	
	method chicos(nuevosChicos) {
		chicos = nuevosChicos
	}

	method algunoMuyAsustador() {
		return chicos.any({ chico => chico.capacidadSusto() > 42 })
	}
	
}
