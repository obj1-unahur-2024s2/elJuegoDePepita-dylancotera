import pepita.*
import wollok.game.*

object nido {

	method image() = "nido.png"
	method position() = game.at(5, 5)
}

object silvestre {

	var property position = game.origin()

	method image() = "silvestre.png"


}

