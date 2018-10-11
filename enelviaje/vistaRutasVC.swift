//
//  vistaRutasVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 05/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class vistaRutasVC: UIViewController {
    
    var destino:String = ""
    var dias:String = ""
    var dinero:String = ""
    
    @IBOutlet weak var labelDestino: UILabel!
    @IBOutlet weak var labelDias: UILabel!
    @IBOutlet weak var labelDinero: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Rutas Recomendadas"
        
        labelDestino.text = destino
        labelDias.text = dias
        labelDinero.text = dinero

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
