//
//  Datos.swift
//  Hamburguesas
//
//  Copyright © 2019 EGH. All rights reserved.
//

import Foundation




import UIKit

class Datos: UIViewController {
    
    let randomPais = ColeccionDePaises()
    let randomHamburguesa = ColeccionDeHamburguesa()

    
    @IBOutlet weak var paisLabel: UILabel!
    
    @IBOutlet weak var hamburguesaLabel: UILabel!
    
    @IBAction func btnPresiona(_ sender: Any) {
        paisLabel.text = randomPais.obtenPais()
        hamburguesaLabel.text = randomHamburguesa.obtenHamburguesa()
    }
    
    
    class ColeccionDePaises{
        
        let paises:[String] = ["Mexico","Alemania","USA","Chile","Argentina","Croacia","Canada","Brasil","Marruecos","Francia","España","Italia","Portugal","Japon","China","India","Inglaterra","Panama","Rusia","Islandia"]
        
        
        func obtenPais()->String{
            return paises[Int(arc4random() % UInt32(paises.count))]
        }
    }

    class ColeccionDeHamburguesa{
        
          let hamburguesas:[String] = ["Hamburguesa1","Hamburguesa2","Hamburguesa3","Hamburguesa4","Hamburguesa5","Hamburguesa6","Hamburguesa7","Hamburguesa8","Hamburguesa9","Hamburguesa10","Hamburguesa11","Hamburguesa12","Hamburguesa13","Hamburguesa14","Hamburguesa15","Hamburguesa16","Hamburguesa17","Hamburguesa18","Hamburguesa19","Hamburguesa20"]
        
        func obtenHamburguesa()->String{
            return hamburguesas[Int(arc4random() % UInt32(hamburguesas.count))]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
