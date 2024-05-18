object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2

	method nivelSusto() {
		return longitud * 5
	}
}

object mascaraDracula {
	var tamanio = 2

	method nivelSusto() {
		return tamanio * 2
	}
}

object mascaraFrankenstein {
	method nivelSusto() {
		return 22
	}
}

object mascaraPolitico {
	var politico = dilma
	
	method nivelSusto() {
		return politico.promesas() 
	}
}

object dilma {
	method promesas() {
		return 10
	}
}
