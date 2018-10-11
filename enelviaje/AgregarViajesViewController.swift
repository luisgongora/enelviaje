//
//  ToDoAddVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 07/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit
import Firebase

class AgregarViajesViewController: UIViewController{
    
    var refViajes: DatabaseReference!
    
    
    @IBOutlet weak var nombreViaje: UITextField!
    
    @IBOutlet weak var origenTxtField: UITextField!
    
    @IBOutlet weak var destinoTxtField: UITextField!
    
    @IBOutlet weak var fechaIda: UIDatePicker!
    
    @IBOutlet weak var fechaRegreso: UIDatePicker!
    
    @IBOutlet weak var labelMsg: UILabel!
    
    @IBAction func saveData(_ sender: UIButton) {
        
        agregarViaje()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
        
        let tapGesture = UITapGestureRecognizer(target: self, action:     #selector(tapGestureHandler))
        view.addGestureRecognizer(tapGesture)
        
        refViajes = Database.database().reference().child("viajes")
        
     }
    
    
    @objc func tapGestureHandler() {
        
        nombreViaje.endEditing(true)
        origenTxtField.endEditing(true)
        destinoTxtField.endEditing(true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func agregarViaje()  {
        
        let key = refViajes.childByAutoId().key!
            
            
            let viajes = ["id": key,
                          "nombre Viaje": nombreViaje.text! as String,
                          "origen": origenTxtField.text! as String,
                          "destino": destinoTxtField.text! as String
            ]
            
        refViajes.child(key).setValue(viajes)
          labelMsg.text! = "Viaje Agregado"
        
        
       
    }
    
   /* override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nombreViaje.resignFirstResponder()
        origenTxtField.resignFirstResponder()
        destinoTxtField.resignFirstResponder()
    }

*/
}
