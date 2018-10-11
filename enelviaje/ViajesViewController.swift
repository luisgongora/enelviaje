//
//  ViajesViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 11/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class ViajesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView?
   
     var viajes: [ViajesModel] = [ViajesModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        viajes = [ViajesModel]()
        
        (UIApplication.shared.delegate as! AppDelegate).refViajes.observe(.value, with: { snapshot in
            let dictRoot = snapshot.value as? [String : AnyObject] ?? [:]
            let dictViajes = dictRoot["viajes"] as? [String: AnyObject] ?? [:]
            for key in Array(dictViajes.keys) {
                
                self.viajes.append(ViajesModel(dictionary: dictViajes[key] as! [String: AnyObject], key: key))
              
           }
            
            self.tableView?.reloadData()
            print(dictViajes)
         })
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        let porViajes = viajes[indexPath.row]
        
        
        cell.textLabel?.text = "nombre viaje: \(porViajes.nombreViaje), destino viaje: \(porViajes.nombreDestino),origen viaje: \(porViajes.nombreOrigen)"
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return viajes.count
    
    }
    
  
    
   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }

}
