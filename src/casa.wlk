import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa){cosas.add(cosa)}
	method cantidadDeCosasCompradas() {return cosas.size()}
	method tieneComida() {	
		return cosas.any({n=>n.esComida()})
	}
	method vieneDeEquiparse(){return cosas.last().esElectrodomestico() or cosas.last().precio()>5000}
	method esDerrochona() {
		var resultado = 0
		cosas.forEach{n=>resultado += n.precio()}
		return resultado>=9000
	}
	method compraMasCara() {
		var mayor = plancha
		cosas.forEach{n=>if(n.precio()>mayor.precio()){mayor = n}}
		return mayor
	}
	method electrodomesticosComprados() {return cosas.count{e => e.esElectrodomestico()}}
	method malaEpoca() {
		var resultado =0
		cosas.forEach{n=>
			if(n.esComida()){resultado+=1}
		}
		return resultado == cosas.size()
	}
	method queFaltaComprar(lista){
		var faltantes = []
			lista.forEach{n=>if (cosas.any(n)){}else{faltantes.add(n)}}
		return faltantes.asList()
	}
	method  faltaComida() {
		var resultado = 0
		cosas.forEach{n=>if(n.esComida()){resultado+=1}}
		return resultado < 2
	}
} 
