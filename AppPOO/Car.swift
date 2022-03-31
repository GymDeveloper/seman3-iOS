//
//  Car.swift
//  AppPOO
//
//  Created by Linder Anderson Hassinger Solano    on 31/03/22.
//

import Foundation

class Car {
    
    // Estos atributos no estan inicializados
    // por ende vamos a crear un constructor
    // que sirve para poder recibir valores y que estos
    // sean los valores que tomen los atributos
    let weigth: Float
    let maxSpeed: Float
    let model: String
    let brand: String
    let dateOfBorn: String
    let color: String
    
    // para poder definir un constructor en swift
    // usamos init() la funcion init nos va a permitir
    // crear un contructor
    // java: Car(parametros)
    // php: __contructor(parametros)
    // python: __init__
    // swift: init(parametros)
    // Recurden que si usamos este constructor al momento de instanciar a Car tendremos que
    // pasarle todos estos parametros
    init(weigth: Float, maxSpeed: Float, model: String, brand: String, dateOfBorn: String, color: String) {
        // ahora vamos a decir que los valores de nuestros parametros vayan hacia los atributos
        // para poder acceder a un atributos desde un constructor usamos self.nombreAtributo
        self.weigth = weigth
        self.maxSpeed = maxSpeed
        self.model = model
        self.brand = brand
        self.dateOfBorn = dateOfBorn
        self.color = color
    }
    
    // En java siempre se suele colocar un contructor vacio y uno lleno
    // En swift tambien se puede hacer eso no es tan comun pero tambien se puede
    // Esto va a servir para cuando instanciemos a Car y no lo pase ni un parametro
    // como no le pasamos nada los valores que tendran seran los de abajo
    init() {
        self.weigth = 1000.8
        self.maxSpeed = 200.5
        self.model = "GLA 200"
        self.brand = "Mercedez"
        self.dateOfBorn = "2022"
        self.color = "red"
    }
    
    func showCarData() -> String {
        // queda como tarear completar esta funcion
        return ""
    }
}
