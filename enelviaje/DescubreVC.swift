//
//  DescubreVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 03/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class DescubreVC: BaseViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    var destino:String = ""
    var dias:String = ""
    var dinero:String = ""
    
    @IBOutlet weak var pickerView: UIPickerView!
    
     @IBOutlet weak var labelDestino: UILabel!
     @IBOutlet weak var labelDias: UILabel!
     @IBOutlet weak var labelDinero: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSlideMenuButton()
        self.title = "¡Descubre rutas!"
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerView.selectRow(0, inComponent: 0, animated: true)
        pickerView.selectRow(0, inComponent: 1, animated: true)
        pickerView.selectRow(0, inComponent: 2, animated: true)

        // Do any additional setup after loading the view.
    }
    
    var pickerData = [
        ["Asia","Africa","America","Europa","Oceania"],
        ["1 a 10", "10 a 20", "20 a 30", "30 a 40", "40 a 50"],
         ["$5000 a $10000","$10000 a $20000","$20000 a $40000","$40000 a $60000","$60000 a $100000"]
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(component)
        print(row)
        
        switch (component) {
        case 0:
            destino = pickerData[component][row]
            labelDestino.text = "Quiero ir a: " + destino
            print("Quiero ir a:" + destino)
        case 1:
            dias = pickerData[component][row]
            labelDias.text = "Durante: " + dias + " dias"
            print("Durante: " + dias)
        case 2:
            dinero = pickerData[component][row]
            labelDinero.text = "Y con: " + dinero + " pesos"
            print("Y con:" + dinero + "pesos")
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "irRutas" {
            let vistaRutas = segue.destination as! vistaRutasVC
           vistaRutas.destino = labelDestino.text!
            vistaRutas.dias = labelDias.text!
            vistaRutas.dinero = labelDinero.text!
            
            
            
        }
    }
    
    @IBAction func encontrarRutas(_ sender: Any) {
        
        
        
        
    }
    
    
  

}
