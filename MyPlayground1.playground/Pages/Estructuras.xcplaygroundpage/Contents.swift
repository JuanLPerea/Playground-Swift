//: [Previous](@previous)

import Foundation


struct Empleado {
   let nombre:String
   let apellidos:String
   let departamento:String
   var salario:Double
   
   func impuesto() -> Double {
      var retencion = 0.12
      switch salario {
      case let sueldo where sueldo > 35000:
         retencion = 0.42
      case let sueldo where sueldo > 29000:
         retencion = 0.33
      case let sueldo where sueldo > 24000:
            retencion = 0.25
      case let sueldo where sueldo > 16000:
         retencion = 0.10
      default:
         ()
      }
      
      return retencion
   }

}

var empleado1 = Empleado(nombre: "Juan Luis", apellidos: "Perea" , departamento: "Inventos", salario: 123)

empleado1.salario
empleado1.impuesto()

empleado1.salario = 2000


//: [Next](@next)
