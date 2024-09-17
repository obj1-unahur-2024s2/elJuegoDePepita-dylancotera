import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	//	game.start()
	}

}

object tutorial2 {

	method iniciar() {
		game.addVisual(manzana)
	//	game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	//	config.gravedad()
		config.configurarColisiones()
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}

}

object config {

	method configurarTeclas() {
		keyboard.left().onPressDo({ 
			if (pepita.position().x() > 0 ) pepita.irA(pepita.position().left(1))})
		keyboard.right().onPressDo({ 
			if (pepita.position().x() < game.width() - 1) pepita.irA(pepita.position().right(1))})
		keyboard.up().onPressDo({ 
			if (pepita.position().y() < game.height() - 1) pepita.irA(pepita.position().up(1))})
		keyboard.down().onPressDo({ 
			if (pepita.position().y() > 0)pepita.irA(pepita.position().down(1))})
		keyboard.c().onPressDo({ pepita.comeAlgoSiHay() })
	}

	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita)})
	}

	method gravedad(){
			
		game.onTick(800, "gravedad", {pepita.position(pepita.position().down(1))})

	}
}