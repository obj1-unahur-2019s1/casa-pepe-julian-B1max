object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesa{
	method precio(){return 260}
	method esComida(){return true}
	method esElectrodomestico() { return false }	
}

object salsaDeTomates{
	method precio(){return 90}
	method esComida(){return true}
	method esElectrodomestico() { return false }	
}
object microondas{
	method precio(){return 4200}
	method esComida(){return false}
	method esElectrodomestico() { return true }	
}

object cebollas{
	method precio(){return 25}
	method esComida(){return true}
	method esElectrodomestico() { return false }	
}
object dolar{
	method  precioDeVenta() {return 45}
}
object compu{
	method precio(){return 500 * dolar.precioDeVenta() }//dolares
	method esComida(){return false}
	method esElectrodomestico() { return true }	
}
object packComida{
	var precio = 0
	method precio(){return precio}
	method esComida(){return true}
	method esElectrodomestico() { return false }
	method elejir(comida,aderezo){precio = comida.precio()+aderezo.precio()}	
}


