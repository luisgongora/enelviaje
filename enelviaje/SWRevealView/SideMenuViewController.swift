//
//  SideMenuViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 02/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
   
     override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController().rearViewRevealWidth = 200
       

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   

  

}
