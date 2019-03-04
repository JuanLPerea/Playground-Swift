//: [Previous](@previous)

import Foundation

let arrayCadenas = ["Hola", "Adios", "Que tal", "Muy bien"]

var cadenas = arrayCadenas
var numeros:[Int] = [1,4,6,3,7,9,0,3,2]
var numeros2 = [234,34,2,23,4,2,34,23,5,34,6,356]

var numArray:[Int] = []

numeros2[3]
numeros2.randomElement()
numeros2[1...3]
numeros2[0...2] = [9,8,7]
numeros2
numeros2.index(of: 34)
numeros2.contains(23)
numeros2.first


for num in numeros2 where num < 5 {
   print(num)
}

for num in numeros2.enumerated() {
   print(num.element, num.offset)
}

let arrayOrdenado = arrayCadenas.sorted()
let arrayInvertido = arrayOrdenado.reversed().first?.lowercased()

for cadena in arrayCadenas.sorted().reversed() {
   print(cadena)
}

let numElements = numeros2.dropLast(3).count

var matriz = [[1,2,3,5],[3,4,5,3,8,5,4],[7,8,9,7]]
matriz[2][1]

//Diccionarios [clave:valor]
var dicc:[String:String] = [:]
var dicc2 = [1:"Hola", 2:"Adios", 3:"Hasta Luego", 4:"Lucas"]
dicc["Hola"]  = "Hello"

// Devuelve un tipo de datos opcional
let valor = dicc2[4] ?? "Nada"     // Operador coalescencia para el valor por defecto
let valor2 = dicc2[4, default: "Nada"]    // es igual que lo de arriba


dicc2.updateValue("Saludos", forKey: 5)
dicc2

// diccionario keys y values

dicc2.keys
dicc2.values

// Transformamos un diccionario en un array
let valores = [String](dicc2.values)

for clave in dicc2.keys.sorted().reversed(){
   print(dicc2[clave]!)    // se usa la admiración porque tenemos la garantía absoluta
                           // que no va a dar error
}

// Conjuntos, no admiten valores repetidos
var valores3:Set = [2,5,3,8,2,45,4,7,4,57,4,67,6,7,6,7]
var valores4:Set = [4,53,4,5,345,6,35,6,34,5,34,553,6,46,7,56,8,58,5,68]

valores3.union(valores4)
valores3.symmetricDifference(valores4)
valores3.intersection(valores4)
valores3.subtract(valores4)

valores3.isSubset(of: valores4)


// Tuplas
let pelicula = (film:"Capitana Marvel", año:2019)

let estreno:(film:String, año:Int, rank:Double) = ("Vengadores End Game", 2019, 9.7)

let ranking = estreno.rank
let (movie,year,rank) = estreno
movie
year
rank


switch estreno {
case ( _,2019,_ ):
   print("Pelicula de estreno")
case let (_,year,_) where year < 2000:
   print("Pelicula del siglo XX")
default:()
}

if case (_,2019,_) = estreno {
   print("Película de 2019")
}

//let a = 1
//let b = 2
//let c = 3
//let d = 4
//let e = 5

let (a,b,c,d,e) = (1,2,3,4,5)

// Un array de Tuplas
var estrenos:[(film:String, año:Int, rank:Double)] = []
estrenos.append(estreno)
estrenos.first?.film
estrenos[0].rank



//: [Next](@next)
