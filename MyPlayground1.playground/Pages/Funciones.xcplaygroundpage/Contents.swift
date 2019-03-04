//: [Previous](@previous)

import Foundation

func mensaje() -> () {
   let titulo = "ERROR"
   let mensaje = "HA PETAO"
   print ("\(titulo): \(mensaje) ")
}

func mensaje2(titulo:String, mensaje:String) {
   print ("\(titulo): \(mensaje) ")
}

mensaje2(titulo:"Hola" , mensaje:"Que tal")

func suma(a:Int, b:Int)->Int {
   return a+b
}

func suma(a:Double, b:Double)->Double {
   return a+b
}

print(suma(a:23423434234,b:234234234234))

func sumarArray(numeros:[Int]) -> Int {
   
   if numeros.isEmpty{
      return 0
   }
   
   var resultado = 0
   for numero in numeros {
      resultado += numero
   }
   return resultado
}

let valores = [3,3,4,3,4,234,5,56,4,46,75,8,5,7]

sumarArray(numeros: valores)

func sumaMultiple(numeros:[Int]) -> (Int, Int) {
   var resultado1 = 0 , resultado2 = 0
   for numero in numeros {
      resultado1 += numero
      resultado2 *= numero
   }
   return (resultado1, resultado2)
}

func sumaMultiple(numeros:[Double]) -> (Double, Double) {
   var resultado1:Double = 0 , resultado2:Double = 0
   for numero in numeros {
      resultado1 += numero
      resultado2 *= numero
   }
   return (resultado1, resultado2)
}

let resultado = sumaMultiple(numeros: valores)
let (sumar, mul) = sumaMultiple(numeros: valores)

sumar
mul

// Si ponemos el playholder no hace falta indicar el nombre del paráetro en la llamada
func operar(_ numeros:[Int] = [1,2,3,4,5,6,7])-> Int {
   var resultado = 0
   for numero:Int in numeros {
   resultado += numero
   }
   return resultado
}

operar(valores)

// inout y & para modificar un parametro en una función

// parámetro variádico: func funcion(parametro:Tipo...)
// en la llamada se pasan los valores directamente: funcion(valor,valor,valor,valor)

// parámetro por defecto: Se puede indicar en la definición de los parámetros de la función usando =
//

operar()

// defer: un código que se ejecuta antes del return independientemente de si hay varias salidas en una función

//func llamadaRed() -> String {
//   defer{
//      print("Cierro Conexion")
//   }
//   
//   var aleat:[Int]
//   
//   switch var num:[Int] {
//   case <#pattern#>:
//      <#code#>
//   default:
//      <#code#>
//   }
//}





//: [Next](@next)
