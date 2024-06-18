import viajes.*

class Socio {
	const property actRealizadas = []
	const maxDeActividades
	
	method sumarActividad(actividad){ 
		if(actRealizadas == maxDeActividades)
		self.error("Se alcanzó el maximo de actividades")
		
		actRealizadas.add(actividad)
	}
	
	method esAdoradorDelSol()= actRealizadas.all{ a => a.sirveParaBroncearse() }
	
	method actividadesEsforzadas()= actRealizadas.filter{ a => a.implicaEsfuerzo() }
}
