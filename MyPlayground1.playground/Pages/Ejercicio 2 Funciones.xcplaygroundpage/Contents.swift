//: [Previous](@previous)

import Foundation

// Una función que le pasamos un array de Int o de Double y que devuelve otro array de igual tipo pero sin valores duplicados
// También crear una función que recibe una cadena que no puede ser vacia y esa cadena va a devolvernos según un parámetro que le pasemos el carácter en la posición 'n' indicada por este parámetro
// Una tercera función que reciba un array de Int y que devuelva el valor mínimo y máximo que hay en el array
// Crear una función que encapsule el cálculo de números primos

let miArray = [1,2,3,4,45,33,4,52,35,555,23,42,34,23,4]

func sinDuplicados(arrayEntrada:[Int])->[Int]{
   let arrayTemporal = Set(arrayEntrada)
   let arraySalida = Array(arrayTemporal)
   return arraySalida
}

func sinDuplicados(arrayEntrada:[Double])->[Double]{
   let arrayTemporal = Set(arrayEntrada)
   let arraySalida = Array(arrayTemporal)
   return arraySalida
}

sinDuplicados(arrayEntrada: miArray)

// Devolver el caracter en la posicion n

func caracterEn (cadena:String = "." , pos:Int) -> Character? {
   
   if cadena.isEmpty || pos >= cadena.count || pos < 0 {
      return Character(" ")
   }
   
   let posicion = cadena.index(cadena.startIndex, offsetBy: pos)
   
   return cadena[posicion]

}

print(caracterEn(cadena: "Hola que tal" , pos: 6)!)


// Valores máximos y mínimos de un array
// En los ejemplos que algun dia nos dará el profesor está la versión correcta
// aquí lo he hecho usando las condicionales pero no es la forma correcta

let numeros = [2,23,2,5,34,5,365,43,45,3,45,34,5,34,5]

func maxymin(numeros:[Int]) -> (maximo:Int? , minimo:Int?){
   
   guard let inicio = numeros.first else {
      return (0,0)
   }

   let numMaximo:Int? = numeros.max()
   let numMinimo:Int? = numeros.min()
   let tuplamaxmin:(Int? , Int?) = (mx:numMaximo , mn:numMinimo)

   return tuplamaxmin

}

print(maxymin(numeros:numeros).maximo!)
print(maxymin(numeros:numeros).minimo!)

//: [Next](@next)
