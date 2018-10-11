//
//  MisViajesTableVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 08/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

/*import UIKit
import Firebase

class MisViajesTableVC: UITableViewController {
    
    var refViajes: DatabaseReference!
    var listaViajes = [ViajesModel]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        refViajes = Database.database().reference().child("viajes")
        refViajes.observe(DataEventType.value, with: {(snapshot) in
            self.listaViajes.removeAll()
            
            for viajes in snapshot.children.allObjects as![DataSnapshot]{
                
                let viajesObject = viajes.value as? [String: AnyObject]
                let nombreViaje = viajesObject?["nombreViaje"]
                let nombreDestino = viajesObject?["nombreDestino"]
                let nombreOrigen = viajesObject?["nombreOrigen"]
                let fechaIda = viajesObject?["fechaIda"]
                let fechaVuelta = viajesObject?["fechaVuelta"]
                let viajeId = viajesObject?["id"]
                
                let viajes = ViajesModel(id: viajeId as! String?, nombreViaje: nombreViaje as! String?, nombreDestino: nombreDestino as! String?, nombreOrigen: nombreOrigen as! String?, fechaIda: fechaIda as! String?, fechaVuelta: (fechaVuelta as! String?)!)
                
                self.listaViajes.append(viajes)
                
            }
            
            
        })

       
        
    }

    @IBAction func agregarViaje(_ sender: Any) {
        
         performSegue(withIdentifier: "agregarViaje", sender: self)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
 */
