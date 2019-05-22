object cuentaCorriente {
	var saldo = 3000
	method depositar(importe) {saldo += importe}
	method extraer(importe){saldo -= importe}
	method saldo(){return saldo}
}

object cuentaConGastos{
	var saldo = 200000
	method depositar(importe) {saldo += importe-20}
	method extraer(importe){if (importe<=1000){saldo -=importe+20}else{saldo -= importe + importe/50}}
	method saldo(){return saldo}
}
object cuentaCombinada{
	var principal = cuentaCorriente
	var secundaria = cuentaConGastos
	method depositar(importe) {principal.depositar(importe)}
	method extraer(importe){if (principal.saldo()>=importe){principal.extraer(importe)}else{secundaria.extraer(importe)}}
	method saldo(){return principal.saldo()+secundaria.saldo()}
}
