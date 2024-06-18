class Viaje {
	const idiomas = #{}
	//idiomas, deben ser strings
	method idiomas()= idiomas
	
	//si implica esfuerzo
	method implicaEsfuerzo()
	
	//sirve para broncearse
	method sirveParaBroncearse()
	
	//cuantos dias lleva la actividad
	method dias()
	
	method esInteresante()= self.idiomas().size() > 1
}

class ViajeDePlaya inherits Viaje {
	const largoDePlaya
	
	method largoDeLaPlaya()= largoDePlaya
	
	override method dias()= largoDePlaya / 500
	
	override method implicaEsfuerzo()= largoDePlaya > 1200
	
	override method sirveParaBroncearse()= true
}

class ExcursionACiudad inherits Viaje{
	const cantAtracciones
	
	override method dias()= cantAtracciones / 2
	
	override method implicaEsfuerzo()= cantAtracciones.between(5,8)
	
	override method sirveParaBroncearse()= false
	
	override method esInteresante()= super() or cantAtracciones == 5
}

class ExcursionACiudadTropical inherits ExcursionACiudad {
	override method dias()= super() + 1
	
	override method sirveParaBroncearse()= false
}

class SalidaTrekking inherits Viaje {
	const kilometrosDeSenderos
	const diasDeSolPorAnio
	
	override method dias()= kilometrosDeSenderos / 50
	
	override method implicaEsfuerzo()= kilometrosDeSenderos > 80
	
	override method sirveParaBroncearse()= diasDeSolPorAnio > 200 or 
		diasDeSolPorAnio.between(100, 200) and kilometrosDeSenderos > 120
		
	override method esInteresante()= super() and diasDeSolPorAnio > 140
}

class ClaseDeGimnasia inherits Viaje {
	override method idiomas()= #{"español"}
	
	override method dias()= 1
	
	override method implicaEsfuerzo()= true
	
	override method sirveParaBroncearse()= false
}



