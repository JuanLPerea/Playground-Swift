//: [Previous](@previous)
// Comprobar si un número es primo

import Foundation

let numeroEntrada = 1901300


if numeroEntrada > 0 {
   
   if numeroEntrada < 3 {
      print ("El numero \(numeroEntrada) es primo")
   } else {
      
      if (numeroEntrada % 2 == 0) || (numeroEntrada % 3 == 0) {
         print ("El numero \(numeroEntrada) NO es primo")
      } else {
         
         var i = 5
         
         while (i * i) <= numeroEntrada {
            
            if (numeroEntrada % i == 0) || ((numeroEntrada + 2) % i == 0) {
               print ("El numero \(numeroEntrada) NO es primo")
               break
               
            } else {
            
               i += 5
            }
            
         }
         
        print ("El numero \(numeroEntrada) es primo")
         
   }
   
   }
   
}


