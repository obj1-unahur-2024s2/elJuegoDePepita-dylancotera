import pepita.*
import wollok.game.*

object nido {

	method image() = "nido.png"
	method position() = game.at(5, 5)
}

object silvestre {


	method image() = "silvestre.png"
	method position() = game.at(pepita.position().x().max(3), 0)


}

