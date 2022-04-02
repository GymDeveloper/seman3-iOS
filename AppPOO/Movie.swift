//
//  Movie.swift
//  AppPOO
//
//  Created by Linder Anderson Hassinger Solano    on 2/04/22.
//

import Foundation

class Movie {
    
    // atributos para movie
    let name: String
    let time: String
    let gender: String
    let director: String
    let actors: [String]
    
    // constructores
    // como es un constructor en java?
    // java: Movie(parametros)
    // php: __constructor(parametros)
    // python: __init__ (parametros)
    // swift: init(parametros)
    init(name: String, time: String, gender: String, director: String, actors: [String]) {
        // trende que igualar los atributos a los parametros?
        self.name = name
        self.time = time
        self.gender = gender
        self.director = director
        self.actors = actors
    }
    
    // constructores vacias
    // para poder poner valores predeterminados sin recibir parametros
    init() {
        self.name = "Batman"
        self.time = "3 hours"
        self.gender = "action"
        self.director = "Juanito Perez"
        self.actors = ["Robert", "Juana", "Lucia", "Carlos"]
    }
    
}
