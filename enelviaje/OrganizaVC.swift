//
//  CameraVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 03/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit


class OrganizaVC: BaseViewController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSlideMenuButton()
        self.title = "Planifica tu Viaje"
        
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
 
    @IBAction func irOrganiza(_ sender: Any) {
        
         performSegue(withIdentifier: "irOrganiza", sender: self)
    }
    
    
    @IBAction func irAgregar(_ sender: Any) {
        
         performSegue(withIdentifier: "irAgregar", sender: self)
    }
    
    
    
    
    
   
    
        
      
    
    
    
   
    


}
