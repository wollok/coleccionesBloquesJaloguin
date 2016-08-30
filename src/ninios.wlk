import adultos.*
import elementos.*

object macaria {
	var nivelMaldad = 20
	var elementos = [ ]
	var cantidadCaramelos = 0

	method capacidadSusto() {
		return nivelMaldad + self.nivelSustoElementos()
	}

	method nivelSustoElementos() {
		return elementos.sum({ e => e.nivelSusto() })
	}

	method asustarA(adulto) {
		adulto.serAsustadoPor(self)
	}

	method recibirCaramelos(cantidad) {
		cantidadCaramelos += cantidad
	}

	method cantidadCaramelos() {
		return cantidadCaramelos
	}

	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	method removerElemento(elemento) {
		elementos.remove(elemento)
	}

	method elementoMenosEfectivo() {
		return elementos.min({ e => e.nivelSusto() })
	}

	method dejarDeUsarMenosEfectivo() {
		self.removerElemento(self.elementoMenosEfectivo())
	}

	method elementos() {
		return elementos
	}
}

object pancracio {
	var nivelMaldad = 10
	var nivelDeGrito = 2
	var elementos = [ ]
	var cantidadCaramelos = 0

	method capacidadSusto() {
		return nivelDeGrito * 2 + nivelMaldad + self.nivelSustoElementos()
	}

	method nivelSustoElementos() {
		return elementos.sum({ e => e.nivelSusto() })
	}

	method asustarA(adulto) {
		adulto.serAsustadoPor(self)
	}

	method recibirCaramelos(cantidad) {
		cantidadCaramelos += cantidad
	}

	method cantidadCaramelos() {
		return cantidadCaramelos
	}

	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	method removerElemento(elemento) {
		elementos.remove(elemento)
	}

	method elementos() {
		return elementos
	}
}

// El niño que pide crear el punto 7.

object pedro {
	var nivelMaldad = 10
	var elementos = [ ]
	var cantidadCaramelos = 0

	method capacidadSusto() {
		return nivelMaldad + self.nivelSustoElementos()
	}

	method nivelSustoElementos() {
		return elementos.sum({ e => e.nivelSusto() })
	}

	method asustarA(adulto) {
		adulto.serAsustadoPor(self)
	}

	method recibirCaramelos(cantidad) {
		cantidadCaramelos += cantidad
	}

	method cantidadCaramelos() {
		return cantidadCaramelos
	}

	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	method removerElemento(elemento) {
		elementos.remove(elemento)
	}

	method elementos() {
		return elementos
	}

	method capacidadDeSustoPromedio() {
		return self.nivelSustoElementos() / elementos.size()
	}

	// Funcionalidad nueva del punto 7
	method tirarTodosLosElementos() {
		elementos.clear()
	}
}