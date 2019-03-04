//: [Previous](@previous)

import Foundation

// Representar un Zoo
// Animal: Mamiferos (Salvajes, Domésticos), Peces (Salada, Dulce), Aves, Reptiles, Anfibios
// El Zoo se divide en zonas en las que están los animales (Objetos a crear)
// Hacer una función que nos de los animales que hay en una zona
// También representar a los animales según su reproducción (Vivíparos u Ovíparos)
// y por su alimentación (Hervíboros, Carnívoros, Omnívoros)


struct Zoo {
   let nombreZoo:String
   var misZonas:Set<ZonaZoo>
}

struct ZonaZoo:Hashable , Equatable {
  
   let numeroZona:Int
   var animales:Set<Animal>
   
   static func == (lhs: ZonaZoo, rhs: ZonaZoo) -> Bool {
      return lhs.numeroZona == rhs.numeroZona && lhs.animales == rhs.animales   }

   
   func hash(into hasher: inout Hasher) {
      hasher.combine(numeroZona)
      hasher.combine(animales)
   }
   
   func animalesZona() {
      print("En la zona \(numeroZona) están los animales:")
      for animalTmp:Animal in animales {
         print ("\(animalTmp.nombreAnimal)")
      }
      print ("-----")
   }
   
   
   func getAnimales() -> Set<Animal> {
      return animales
   }
   
}


class Animal:Hashable , Equatable {
   
   enum alimentacion:Int {
      case herbívoro, carnívoro, omnívoro
   }
   
   enum reproduccion:Int{
      case vivíparos, ovíparos
   }
   
   let nombreAnimal:String
   let alimentacion:alimentacion
   let reproduccion:reproduccion
   
   static func == (lhs: Animal, rhs: Animal) -> Bool {
      return lhs.nombreAnimal == rhs.nombreAnimal && lhs.alimentacion == rhs.alimentacion && lhs.alimentacion == rhs.alimentacion   }
   
   
   func hash(into hasher: inout Hasher) {
      hasher.combine(nombreAnimal)
   }
   
   init(nombreAnimal:String , alimentacion: alimentacion, reproduccion: reproduccion){
      self.nombreAnimal = nombreAnimal
      self.alimentacion = alimentacion
      self.reproduccion = reproduccion
   }
}

class Mamifero:Animal {
   
   enum tipoAnimal:Int {
      case Doméstico, Salvaje
   }
   
   let tipoAnimal:tipoAnimal
   
   init(tipoAnimal:tipoAnimal, nombreAnimal:String , alimentacion:alimentacion){
      self.tipoAnimal = tipoAnimal
      super.init(nombreAnimal: nombreAnimal, alimentacion: alimentacion, reproduccion: .vivíparos)
   }
}

class Peces:Animal {
   
   enum tipoPez:Int {
      case aguadulce, aguasalada
   }
   
   let tipoPez:tipoPez
   
   init(tipoPez:tipoPez, nombreAnimal:String , alimentacion:alimentacion, reproduccion:reproduccion){
      self.tipoPez = tipoPez
      super.init(nombreAnimal: nombreAnimal, alimentacion: alimentacion, reproduccion: reproduccion)
   }
}


class Reptil:Animal {
   init(nombreAnimal:String , alimentacion:alimentacion){
      super.init(nombreAnimal: nombreAnimal, alimentacion: alimentacion , reproduccion: .ovíparos)
   }
}

class Aves:Animal {
   init(nombreAnimal:String , alimentacion:alimentacion){
      super.init(nombreAnimal: nombreAnimal, alimentacion: alimentacion , reproduccion: .ovíparos)
   }
}

class Anfibio:Animal {
   init(nombreAnimal:String , alimentacion:alimentacion){
      super.init(nombreAnimal: nombreAnimal, alimentacion: alimentacion , reproduccion: .ovíparos)
   }
}


let coyote = Mamifero(tipoAnimal: .Salvaje, nombreAnimal: "Will E.", alimentacion: .carnívoro)
let correcaminos = Aves(nombreAnimal: "Beep-Beep", alimentacion: .herbívoro)
let piraña = Peces(tipoPez: .aguadulce, nombreAnimal: "Jaws", alimentacion: .carnívoro, reproduccion: .vivíparos)

var zonasZoo:Set<ZonaZoo> = []
var misAnimales:Set<Animal> = []
var miZoo = Zoo(nombreZoo: "La Selva", misZonas: zonasZoo)
var zona1 = ZonaZoo(numeroZona: 1, animales: misAnimales)
var zona2 = ZonaZoo(numeroZona: 2, animales: misAnimales)
miZoo.misZonas.insert(zona1)


zona1.animales.insert(coyote)


var charca:Set<Animal> = []
for n in 0...10 {
   let rana:Anfibio = Anfibio(nombreAnimal: "Gustavo\(n)", alimentacion: .carnívoro)
   charca.insert(rana)
}

for n in 0...10 {
   let tortuga:Reptil = Reptil(nombreAnimal: "Vetusta\(n)", alimentacion: .herbívoro)
   charca.insert(tortuga)
}

zona2.animales = charca

print(miZoo.nombreZoo)

zona2.animalesZona()

print(zona2.animales.count)


//: [Next](@next)
