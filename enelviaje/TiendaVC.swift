//
//  TiendaVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 03/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class TiendaVC: BaseViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSlideMenuButton()
        self.title = "Tienda"

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
