import pepita.*
import wollok.game.*

object nido {

	method image() = "nido.png"
	method position() = game.at(5, 5)
	method interactuar(objeto) {}
	method teEncontro(objeto){
		objeto.image("pepita-grande.png")
		game.say(pepita, "¡GANÉ!")
		game.schedule(2000, {game.stop()})
	}
}

object silvestre {


	method image() = "silvestre.png"
	method position() = game.at(pepita.position().x().max(3), 0)
	method interactuar(objeto) {}
	method teEncontro(objeto){
		objeto.image("pepita-gris.png")
		game.say(pepita, "¡PERDÍ!")
		game.schedule(2000, {game.stop()})
	// game.stop()
	}

}

