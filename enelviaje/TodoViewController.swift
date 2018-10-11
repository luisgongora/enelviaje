//
//  TodoViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 07/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit
import Firebase


class TodoViewController: UIViewController, Todo {
    
    var todo: Todo!
    
    @IBOutlet weak var origenField: UITextField!
    
    @IBOutlet weak var destinoField: UITextField!
    @IBOutlet weak var fechaSalida: UIDatePicker!
    @IBOutlet weak var fechaEntrada: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveTodo(_ sender: Any) {
        
        if todo == nil {
            todo = TodoListVC()
        }
        
        // first section
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy hh:mm a"
        
        todo?.origen = self.origenField.text
        todo?.destino = self.destinoField.text
        todo?.fechaSalida = dateFormatter.stringFromDate(self.datePicker.date)
        todo?.fechaEntrada = dateFormatter.stringFromDate(self.datePicker.date)
        
        
        //second section
        let ref = Database.database().reference()
        let key = ref.child("todoList").childByAutoId().key
        
        let dictionaryTodo = [ "Origen"    : todo!.origen! ,
                               "Destino" : todo!.destino!,
                               "Fecha Salida"  : todo!.fechaSalida!],
                               "Fecha Entrada" : todo!.fechaEntrada!]
        
        let childUpdates = ["/todoList/\(key)": dictionaryTodo]
        ref.updateChildValues(childUpdates, withCompletionBlock: { (error, ref) -> Void in
            self.navigationController?.popViewControllerAnimated(true)
        })
        
    }
    
    

}
