//: [Previous](@previous)

import Foundation

// Crear la estructura de un colegio
// Crear una clase que abstraiga el concepto de personas de un colegio
// Dentro de las personas, cada una tendrá un rol: Profesor, alumno
//
// Crearemos hijos de las clases que serán Profesor o Alumno
// El programa permite crear las personas solo como una identidad Profesor o alumno.
//
// También generar una clase Aula donde hay que incluir:
// un Tutor, los profesores que dan clase en ese aula y los alumnos que están en ese Aula
// teniendo en cuenta que el profesor tiene unas asignaturas que dar y el alumno un curso al que va
//
// Además crear un Struct que nos permita representar las Asignaturas que se dan en el colegio
//
// Generar datos de ejemplo para probar que funciona



private class Persona {
   
   enum Rol {
      case profesor, alumno
   }
   
   var nombre:String
   var rol:Rol
   
   init(nombre:String, rol: Rol){
      self.nombre = nombre
      self.rol = rol
   }
}

private class Profesor:Persona {
   var asignaturas:[Asignatura]
   
   private init(asignaturas:[Asignatura], nombre:String){
      self.asignaturas = asignaturas
      super.init(nombre: nombre, rol: .profesor)
   }
   
   static public func nuevoProfesor(nuevaAsignaturas:[Asignatura] , nuevoNombre:String ) -> Profesor {
      let newProfesor = Profesor(asignaturas: nuevaAsignaturas, nombre: nuevoNombre)
      return newProfesor
   }
   
   
}

private class Alumno:Persona {
   var aula:String
   
   private init(aula:String, nombre:String){
      self.aula = aula
      super.init(nombre: nombre, rol: .alumno)
   }
   
   static public func nuevoAlumno(nuevaAula:String, nuevoNombre:String) -> Alumno {
      let newAlumno = Alumno(aula: nuevaAula, nombre: nuevoNombre)
      return newAlumno
   }
   
}

private struct Aula{
   private let tutor:Profesor
   private let profesores:[Profesor]
   private let alumnos:[Alumno]
   
   private init(tutor:Profesor , profesores:[Profesor], alumnos:[Alumno]){
      self.tutor = tutor
      self.profesores = profesores
      self.alumnos = alumnos
   }
   
   public static func nuevaAula(tutor:Profesor, profesores:[Profesor], alumnos:[Alumno]) -> Aula {
      let newAula = Aula(tutor: tutor, profesores: profesores ,  alumnos: alumnos)
      return newAula
   }
   
   
}

struct Asignatura {
   let nombreAsignatura:String
}

let asignatura1 = Asignatura(nombreAsignatura: "Matemáticas")
let asignatura2 = Asignatura(nombreAsignatura: "Lengua")
let asignatura3 = Asignatura(nombreAsignatura: "Música")

private let alumno1 = Alumno.nuevoAlumno(nuevaAula: "Primero A", nuevoNombre: "Pepito")
private let alumno2 = Alumno.nuevoAlumno(nuevaAula: "Primero A", nuevoNombre:  "Raquel")

private let profesor1 = Profesor.nuevoProfesor(nuevaAsignaturas: [asignatura1, asignatura2], nuevoNombre: "Steve")

private let profesor2 = Profesor.nuevoProfesor(nuevaAsignaturas: [asignatura3], nuevoNombre: "Carmen")

private let aula1 = Aula.nuevaAula(tutor: profesor1, profesores: [profesor1,profesor2], alumnos: [alumno1,alumno2])

alumno1.aula
alumno1.nombre

profesor1.asignaturas
profesor2.nombre

aula1




//: [Next](@next)
