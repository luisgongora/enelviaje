//
//  MenuController.swift
//  enelviaje
//
//  Created by Cosmonautas on 03/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate {
    
    var menuOptions = ["Organiza", "Planifica", "Tienda", "Blog"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuOptions.count
        
    }
    
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: menuOptions[indexPath.row], sender: self)
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
