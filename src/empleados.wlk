object galvan{
	var property sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method cobrarSueldo(){
		totalDinero += sueldo
		self.pagarDeuda(totalDeuda)
	}
	
	method pagarDeuda(cuanto){
		totalDinero = totalDinero - cuanto
		
	}
	method gastar(cuanto){
		totalDeuda += 0.max(cuanto - totalDinero)
		totalDinero = 0.max(totalDinero - cuanto)		
	}
	method totalDeuda() = totalDeuda
	
	method totalDinero() = totalDinero
}

object baigorria{
	var cantidadEmpanadasVendidas = 1000
	const montoPorEmpanada = 150
	var totalCobrado = 0
	
	method totalCobrado() = totalCobrado
	
	method venderEmpanada(){
		cantidadEmpanadasVendidas +=1
	}
	
	method sueldo() = cantidadEmpanadasVendidas + montoPorEmpanada
	
	method cobrarSueldo(){ totalCobrado += self.sueldo()}
}

object gimenez{
	var dinero = 300000
	
	method dinero(){return dinero}
	method pagarA(empleado){
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}