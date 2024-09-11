import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.origin()


	method image() {
	//	"pepita" + self.parteDelNombreDelArchivoSegunUbicacion() + self.parteDelNombreDelArchivoSegunCansancio() + ".png"
		
		return if (self.estaEnElNido()) "pepita-grande.png" else "pepita.png" 
	}

	method position(arg){
		self.irA(arg)
//		game.say(pepita,"cambio posicion: " + position.x() + " - " + position.y())
		game.say(self,"energia actual: " + energia)
}
	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		// if pepita sin energia aca
		
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
		

	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		
		return position == nido.position()
	}

//  	method parteDelNombreDelArchivoSegunCansancio() = 
//		if (self.estaCansada()) "-gris" else ""
//
//	method parteDelNombreDelArchivoSegunUbicacion() = 
//	    if (self.estaEnElNido()) "-grande" else ""
	
}

