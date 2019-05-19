import cosas.* 
import cuentas.*
object casaDePepeYJulian {
	var cuentaActual = cuentaCorriente
	const cosas = []
	method comprar(cosa){
		cosas.add(cosa)
		cuentaActual.extraer(cosa.precio())
	}
	method cantidadDeCosasCompradas() {return cosas.size()}
	method tieneComida() {	return cosas.any({n=>n.esComida()})}
	method vieneDeEquiparse(){return cosas.last().esElectrodomestico() or cosas.last().precio()>5000}
	method esDerrochona() {return (cosas.sum{e=>e.precio()})>9000}
	method compraMasCara() {return cosas.max{e=> e.precio()}}
	method electrodomesticosComprados() {return cosas.count{e => e.esElectrodomestico()}}
	method malaEpoca() {return return cosas.all{e=> e.esComida()}}
	method queFaltaComprar(lista){return lista.filter({e=> not cosas.contains(e)})}
	method faltaComida() {return (cosas.count{e=>e.esComida()}) < 2}
	method gastar(importe){cuentaActual.extraer(importe)}
	method dineroDisponible(){return cuentaCombinada.saldo()}
	method cambiarCuenta(cuenta){cuentaActual = cuenta}
} 
