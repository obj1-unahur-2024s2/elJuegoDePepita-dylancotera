import wollok.game.*

object manzana {

	method image() = "manzana.png"
	method position() = game.at(3, 3)
	method energiaQueOtorga() = 50
	method interactuar(objeto){ 
		objeto.come(self)
		game.removeVisual(self)
	 }
	method teEncontro(objeto) {}
}

object alpiste {

	// Completar

}

