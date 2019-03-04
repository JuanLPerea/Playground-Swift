import Foundation

let text = "Hola"


let num = 5

let num2:Float = 4.3

let num3 = Float(8.3)



let dato=2
switch dato {
case let x where x > 2: print("x es mayor que 2")
default:()
}

for _ in 1...10{
   print("Hola")
}


for valor in 1...10 where valor % 2 == 0 {
   print(valor)
}

for indice in stride(from: 0, to: 25, by: 5){
   print (indice)
}

var valor:Int = 0
let acierto = Int.random(in: 1...20)
print("Busco el número \(acierto)")
repeat {
   valor = Int.random(in: 1...20)
   if acierto != valor {
      print("No ha salido el número\(valor)")
   }
} while acierto != valor
print("Enhorabuena salió el \(valor) = \(acierto).")


let valorBuscar = Int.random(in: 1...100)
for i in (1...100).shuffled(){
   if i != valorBuscar {
      print("Buscando el valor \(valorBuscar). Voy por el \(i)")
      break
   } else {
      print("Lo he encontrado")
   }
}
