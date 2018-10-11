//
//  DetailViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 04/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    
    var sentData1: String!
    var sentData2: String!
    var sentData3: String!
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var detailMapView: MKMapView!
    
    @IBOutlet weak var directionButton: UIButton!
    
    
    var latitude = 0.0
    var longitude = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        directionButton.layer.cornerRadius = 5
        detailMapView.layer.cornerRadius = 5
        
        self.navigationItem.title = sentData1
        
        detailTitle.text = sentData1
        detailDescription.text = sentData2
        detailImageView.image = UIImage(named: sentData3)
        
        if detailTitle.text == "Tips en Londres"{
            
            detailTextView.text = "Este es el texto del textView para Londres"
            
            latitude = 51.500729199999
            longitude = -0.12462540000001354
            
        }
        
        if detailTitle.text == "Tips en Barcelona" {
            
             detailTextView.text = "Este es el texto del textView para Barcelona"
            
            latitude = 51.500729199999
            longitude = -0.12462540000001354
            
        }
        
        if detailTitle.text == "Tips en Praga" {
            
            detailTextView.text = "Este es el texto del textView para Praga"
            
            latitude = 51.500729199999
            longitude = -0.12462540000001354
            
        }
        if detailTitle.text == "Tips en Budapest" {
            
            detailTextView.text = "Este es el texto del textView para Budapest"
            
            latitude = 51.500729199999
            longitude = -0.12462540000001354
            
        }
        
        if detailTitle.text == "Tips en Madrid" {
            
            detailTextView.text = "Este es el texto del textView para Madrid"
            
            latitude = 51.500729199999
            longitude = -0.12462540000001354
            
        }
        
        
    if detailTitle.text == "Tips en Berlin" {
            
            detailTextView.text = "Este es el texto del textView para Berlin"
        
        latitude = 51.500729199999
        longitude = -0.12462540000001354
            
        }
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        
        detailMapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let pinAnnotation = MKPointAnnotation()
        pinAnnotation.coordinate = pinLocation
        pinAnnotation.title = detailTitle.text
        pinAnnotation.subtitle = detailDescription.text
        
        self.detailMapView.addAnnotation(pinAnnotation)

        // Do any additional setup after loading the view.
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
    
    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
        
        
    }
    

}
