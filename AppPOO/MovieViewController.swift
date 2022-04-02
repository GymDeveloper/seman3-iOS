//
//  MovieViewController.swift
//  AppPOO
//
//  Created by Linder Anderson Hassinger Solano    on 2/04/22.
//

import UIKit

class MovieViewController: UIViewController {

    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lbltime: UILabel!
    @IBOutlet weak var lbldirector: UILabel!
    @IBOutlet weak var lblactors: UILabel!
    @IBOutlet weak var lblgender: UILabel!
    // como instaciamos una clase?
    // en esta instancia a que constructor estoy llamando?
    let movie: Movie = Movie()
    
    // aca estamos llamando al constructor que nos pide todos los parametros
    let movie2: Movie = Movie(name: "Superman", time: "2 hours", gender: "action", director: "Yael Martinez", actors: ["Kalvin", "Lois", "Adriana"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ahora que ya instacie podre accede a los valores y funciones de esta?
    }
    
    @IBAction func onTapBatman(_ sender: Any) {
//        lblname.text = movie.name
//        lbldirector.text = movie.director
//        lbltime.text = movie.time
//        lblgender.text = movie.gender
//        lblactors = movie.actors
        // recuerden que movie.actors es un array
        // por ende no podemos setear este elemento a un label
        // vamos a iterar actor para que en cada vuelta le agregue el actor a lblactor
        // antes del for vamos a limpiar lblactor
//        lblactors.text = ""
//        for actor in movie.actors {
//            // lblactors.text! = actor + actor + " "
//            lblactors.text! += actor + ", "
//        }
        setDataMovie(movie: movie)
    }
    
    @IBAction func onTapSuperman(_ sender: Any) {
//        lblname.text = movie2.name
//        lbldirector.text = movie2.director
//        lbltime.text = movie2.time
//        lblgender.text = movie2.gender
//        lblactors.text = ""
//        for actor in movie2.actors {
//            lblactors.text! += actor + ", "
//        }
        setDataMovie(movie: movie2)
    }
    
    func setDataMovie(movie: Movie) {
        lblname.text = movie.name
        lbldirector.text = movie.director
        lbltime.text = movie.time
        lblgender.text = movie.gender
        lblactors.text = ""
        for actor in movie.actors {
            // ponemos ! porque podria haber un actor en que actor este vacio
            // para poder asegurarme que mi app no se muera y al menos saque un string vacio de eso
            lblactors.text! += actor + ", "
        }
    }
    
}
