//
//  SMViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 03/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit


class SMViewController: BaseViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSlideMenuButton()
        self.title = "¡Hola! Estás EnElViaje"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var nav = self.navigationController?.navigationBar
        nav?.barTintColor = UIColor(red: 113/255, green:181/255, blue:175/255, alpha:1)
        nav?.tintColor = UIColor(red: 255/255, green:255/255, blue:255/255, alpha:1)
        
        
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
