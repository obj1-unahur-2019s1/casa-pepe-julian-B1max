object cuentaCorriente {
	var saldo = 0
	method depositar(importe) {saldo += importe}
	method extraer(importe){saldo -= importe}
	method saldo(){return saldo}
}

object cuentaConGastos{
	var saldo = 0
	method depositar(importe) {saldo += importe-20}
	method extraer(importe){if (importe<=1000){saldo -=importe+20}else{saldo -= importe + importe/50}}
	method saldo(){return saldo}
}
object cuentaCombinada{
	var primaria = 0 
	var secundaria = 100000
	method depositar(importe) {primaria+=importe}
	method extraer(importe){if (primaria>=importe){primaria-=importe}else{secundaria-=importe}}
	method saldo(){return primaria+secundaria}
}
