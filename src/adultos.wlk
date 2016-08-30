
object juan {
	var tolerancia = 10

	// No uso ++ porque da warning.
	method serAsustadoPor(alguien) {
		alguien.recibirCaramelos(self.caramelosAEntregar(alguien))
		tolerancia += 1
	}

	method caramelosAEntregar(alguien) {
		return 0.max(alguien.capacidadSusto() - tolerancia)
	}
	
	method tolerancia(){
		return tolerancia
	}
}