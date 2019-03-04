//: [Previous](@previous)

import Foundation

enum Generos:Int {
   case aventuras, acción, comedia, scifi, drama = 8, infantil
   
   init(){
      self = .scifi
   }
}


var genero1 = Generos.aventuras
var genero2:Generos = .comedia

genero1.rawValue
genero2.rawValue

let genero4 = Generos(rawValue: 5)

if genero1 == .drama {
   print ("Es un drama")
}

switch genero1 {
case .aventuras:
   print ("aventuras")
case .acción:
   print ("accion")
case .comedia:
   print ("comedia")
case .scifi:
   print ("ciencia ficcion")
case .drama:
   print ("drama")
case .infantil:
   print ("infantil")
   
}

var genero3 = Generos()

enum EstadosAnimo:String {
   case 😄, 🙂, 😍, 😤
}

var 😄 = "Hola"

let animo1 = EstadosAnimo.😤
animo1.rawValue

print ("😄 \(😄)")


//: [Next](@next)
