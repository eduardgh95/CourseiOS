//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Ada Palazuelos on 8/14/19.
//  Copyright © 2019 EGH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let VC = self.storyboard!.instantiateViewController(withIdentifier: "MainID") as! Datos
        self.present(VC , animated: false)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
