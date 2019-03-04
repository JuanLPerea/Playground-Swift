//: [Previous](@previous)

import Foundation

class Test {
   var propiedad:Int?
   
   func metodo(){
      print(propiedad ?? 0)
   }
}

let test1 = Test()
let test2 = Test()

test1.propiedad = 1
test2.propiedad = 2

test1.metodo()
test2.metodo()

// Herencia
class TestHijo:Test {
   var nuevaPropiedad:Int?
   
   func nuevoMetodo() {
      print(self.nuevaPropiedad ?? 0 , super.propiedad ?? 0)
   }
}

let hijo1 = TestHijo()

hijo1.nuevaPropiedad = 5
hijo1.propiedad = 7
hijo1.metodo()
hijo1.nuevoMetodo()




//: [Next](@next)
