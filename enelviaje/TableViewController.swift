//
//  TableViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 04/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var imageList = ["destino1","destino2","destino3","destino4","destino1","destino2"]
    
    var titleList = ["Tips en Londres","Tips en Barcelona","Tips en Praga","Tips en Budapest","Tips en Madrid","Tips en Berlin"]
    
    var descriptionList = ["¿Qué hacer en Londres?","¿Qué hacer en Barcelona?","¿Qué hacer en Praga?","¿Qué hacer en Budapest?","¿Qué hacer en Madrid?","¿Qué hacer en Berlin?"]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        // Configure the cell...

        cell.cellTitle.text = titleList[indexPath.row]
        cell.cellDescription.text = descriptionList[indexPath.row]
        
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row])
        
        return cell
    }
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showDetail") {
            
            let dvc = segue.destination as! DetailViewController
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                dvc.sentData1 = titleList[indexPath.row] as String
                dvc.sentData2 = descriptionList[indexPath.row] as String
                dvc.sentData3 = imageList[indexPath.row] as String
                
               
                
                
                
                
            }
            
        }
        
       
    }
    

}
