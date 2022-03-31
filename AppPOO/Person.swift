//
//  Person.swift
//  AppPOO
//
//  Created by Linder Anderson Hassinger Solano    on 31/03/22.
//

import Foundation

// En este archivo vamos a crear a la clase Persona y hacer que retorne un mensaje
// Herencia
// para poder heredar en swift
// en swift no existe lo que es herencia multiple
// aca se llaman protocolos cuando ustede vean que una clase tienen mas de una herencia eso se llama protocos
// Para poder hereder car necesitamos que este sea un protocolo
// Vean como podemos heredar solo una clase si queremos heredar mas cosas estas deben ser Protocol
class Person : Job, CarProtocol {
    
    // y vean como al llamar al protocol esta nos brinda sus funciones
    //NOTA: La funcion turnOn y turnOf son funciones de CarProtocol
    // NOTA: Esto vamos a revisarlo a detalle cuando veamos tableView
    func turnOn() {
        <#code#>
    }
    
    func turnOf() {
        <#code#>
    }
    
    
    var name: String = "Carlos"
    var documentNumber: String = "8888888"
    var isMarried: Bool = false
    
    var job: Job = Job()
    
    func showUserData() -> String {
        let jobName = job.nameJob
        let messageMarried = isMarried ? "married" : "single"
        return "My name is \(name), my document number is \(documentNumber), \(messageMarried) and working as \(jobName)"
    }
}
