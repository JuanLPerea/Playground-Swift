//: [Previous](@previous)

import Foundation

var num:Int? // = nil
var cadena:String?

//num = 4


// hay que desempaquetar las variables al ser de tipo opcional para poder evaluarlas
// se utiliza la coma para evaluar varias variables
if let numero = num , numero > 0 , let cadenaDesempaquetada = cadena {
   numero + 4
   print(cadenaDesempaquetada)
}


// Coalescencia nula
// Da un valor en caso de que la variable esté vacía (nil)
4 + (num ?? 0)


// Para evitar que los valores desempaquetados estén solo dentro del ámbito del if
guard let numero = num, numero > 0 else {
   fatalError()     // Detiene la aplicacion
}

numero


//: [Next](@next)
