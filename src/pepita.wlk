import extras.*
import wollok.game.*
import niveles.*


object pepita {

	var property energia = 100
	var property position = game.origin()
	var property image = "pepita.png"

	method image() =
		if (self.estaCansada()) "pepita-gris.png" else image

	//	if (self.estaConSilvetre()) "pepita-gris.png" else "pepita.png"
	//	"pepita" + self.parteDelNombreDelArchivoSegunUbicacion() + self.parteDelNombreDelArchivoSegunCansancio() + ".png"
	//	 if (self.estaEnElNido()) "pepita-grande.png" else "pepita.png" 
	

	method estaConSilvetre() = position == silvestre.position()


	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
		game.say(self,"energia actual: " + energia)
	}

	method irA(nuevaPosicion) {
		if (not self.estaCansada()){
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
		}
		else { 
			game.removeTickEvent("gravedad")
			game.stop() 
			game.say(self, "El juego terminó") 
		}
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		
		return position == nido.position()
	}

	method comeAlgoSiHay(){
		if (not game.colliders(self).isEmpty() ) 
		{ game.uniqueCollider(self).interactuar(self) }
	}

//  	method parteDelNombreDelArchivoSegunCansancio() = 
//		if (self.estaCansada()) "-gris" else ""
//
//	method parteDelNombreDelArchivoSegunUbicacion() = 
//	    if (self.estaEnElNido()) "-grande" else ""
	
}

