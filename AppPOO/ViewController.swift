//
//  ViewController.swift
//  AppPOO
//
//  Created by Linder Anderson Hassinger Solano    on 31/03/22.
//

import UIKit

class ViewController: UIViewController {
    // NOTE: La conexiones de tipo Outlet
    // van siempre antes del viewDidLoad
    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var dateOfBorn: UILabel!
    @IBOutlet weak var lblSpeed: UILabel!
    @IBOutlet weak var lblModel: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    // La conexiones de tipo Outlet sirven
    // para poder enlazar un elemento visual
    // con nuestro controllador
    //@IBOulet weak var nombreDeLaVariable: Tipo
    
    
    // Instaciamos a Person
    let person: Person = Person()
    // car1 esta usando el constructor vacio
    let car1: Car = Car()
    // car2 esta usando el primer constructor que recibo todos los parametros
    let car2: Car = Car(weigth: 100.5, maxSpeed: 232.5, model: "M4", brand: "BMW", dateOfBorn: "2021", color: "black")
    
    // La funcion viewDidLoad es la primera
    // que se ejecuta al mostrar la vista
    // esto es el paralelo a onCreate en android
    override func viewDidLoad() {
        super.viewDidLoad()
       // vamos a modificar el texto del label
        // cuando se muesta esta pantalla
        lblHello.text = "Hello Tecsup"
        lblBrand.text = car1.brand // mercedez
        lblColor.text = car1.color
        lblModel.text = car1.model
        lblSpeed.text = String(car1.maxSpeed)
        lblWeight.text = String(car1.weigth)
        dateOfBorn.text = car1.dateOfBorn
        
        // la funcion .text permite
        // cambiar el valor del texto de un label
    }
    
    // La conexiones de tipo Action van debajo
    // del viewDidLoad
    
    // La conexiones de tipo Action basicamente
    // son los eventos que podremos ontener del
    // usuario por ejemplo el touch que haga en la pantalla o en algun boton
    
    @IBAction func getUserData(_ sender: UIButton) {
        print("Hola me llamo Linder")
        lblHello.text = person.showUserData()
    }
    
}

