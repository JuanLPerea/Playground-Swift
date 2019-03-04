//: [Previous](@previous)

import Foundation
import UIKit

var partida = true
var puntos = 0

class Personaje {
   var vida:Int
   var muerto = false
   var fuerza:Int

   
   
   init(vida:Int, fuerza:Int) {
      self.vida = vida
      self.fuerza = fuerza
   }
   
   convenience init(){
      self.init(vida: 50, fuerza: 30)
   }
   
   
   func pierdeVida(daño:Int){
      vida -= daño
      if vida <= 0 {
         haMuerto()
      }
   }
   
   func haMuerto() {
      muerto = true
      print("Me'morío")
   }
   
   func atacar(objetivo:Personaje){
      let fuerzaAtaque = Int.random(in: 1...fuerza)
      objetivo.pierdeVida(daño: fuerzaAtaque)
      
       //  print("Tengo el poder de \(heroe.poder)")
      if let heroe = objetivo as? Heroe {
         print("Ataque al héroe")
      } else if let enemigo = objetivo as? Enemigo {
         print("El héroe ataca!!")
      }
      
      
      print("Ataque de \(fuerzaAtaque). Atacado tiene vida: \(objetivo.vida) y está \(objetivo.muerto ? "muerto" : "vivo")")
   }
   
}

class Heroe:Personaje {
   var poder:String
   
   init(poder:String, vida:Int, fuerza:Int){
      self.poder = poder
      super.init(vida: vida, fuerza: fuerza)
   }
   
   // Para hacer una inicialización por defecto
   convenience init() {
      self.init(poder: "Espada", vida: 60, fuerza: 30)
   }
   
   override func haMuerto() {
      partida = false
   }
   
   deinit{
      
   }
   
}

class Enemigo:Personaje {
   var arma:String
   
   init(arma:String, vida:Int, fuerza:Int){
      self.arma = arma
      super.init(vida: vida, fuerza: fuerza)
   }
   
   override func haMuerto() {
      puntos += fuerza
      super.haMuerto()
   }
}

let heroe = Personaje(vida: 100, fuerza: 20)
heroe.pierdeVida(daño: 50)
heroe.muerto
heroe.pierdeVida(daño: 60)
heroe.muerto


class Etiqueta {
   var texto:String
   var color:UIColor
   var fuente:UIFont
   var posicion:CGPoint
   var tamaño:CGFloat

   init(texto:String, color:UIColor, fuente:UIFont, posicion:CGPoint, tamaño:CGFloat) {
      self.texto = texto
      self.color = color
      self.fuente = fuente
      self.posicion = posicion
      self.tamaño = tamaño
   }
   
   convenience init(etiquetaRojaCabecera texto:String){
      self.init(texto: texto, color: .red, fuente: UIFont.systemFont(ofSize: 40), posicion: CGPoint(x: 100, y: 50), tamaño: 40)
      
   }

   
}

let heroe1 = Heroe(poder: "Magia", vida: 50, fuerza: 20)
let enemigo1 = Enemigo(arma: "Sable", vida: 20, fuerza:20)
let enemigo2 = Enemigo(arma: "Sable", vida: 20, fuerza:20)


heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos \(puntos)")

heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos \(puntos)")
heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos \(puntos)")
heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos \(puntos)")



//: [Next](@next)
