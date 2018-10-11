//
//  ConvertidorVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 04/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class ConvertidorVC: BaseViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var myCurrency: [String] = []
    var myValues: [Double] = []
    
    var activeCurrency:Double = 0
    
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var output: UILabel!
    
    
    //CREATING PICKERVIEW
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myCurrency.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myCurrency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activeCurrency = myValues[row]
    }
    
    @IBAction func action(_ sender: Any) {
        
        if (input.text != "") {
        output.text = String(Double(input.text!)! * activeCurrency)
        }
    }
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSlideMenuButton()
        self.title = "Convertidor"

        // Do any additional setup after loading the view.
    
        //Obteniendo Datos
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=c8ffee8b1da1afebfa7258f77a19d717")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error != nil{
                
                print("ERROR")
                
            } else {
                
                if let content = data {
                    
                    do{
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        //print(myJson)
                        
                        if let rates = myJson["rates"] as? NSDictionary
                        {
                            var fistOne = true
                            //print (rates)
                            for(key, value) in rates
                            {
                                self.myCurrency.append((key as? String)!)
                                self.myValues.append((value as? Double)!)
                            }
                           // print(self.myCurrency)
                            // print(self.myValues)
                        }
                        
                    }
                    catch {
                        
                        
                        
                    }
                }
                
            }
            self.pickerView.reloadAllComponents()
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
