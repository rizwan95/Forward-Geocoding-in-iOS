//
//  ViewController.swift
//  Travel alarm
//
//  Created by R.M.K. CET  on 03/09/15.
//  Copyright (c) 2015 R.M.K. CET . All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate  {
    @IBAction func click(sender: AnyObject) {
        
        
        let geoCoder = CLGeocoder()
        
        let addressString = "Guindy Chennai India"
        
        
        geoCoder.geocodeAddressString(addressString, completionHandler:
            {(placemarks: [AnyObject]!, error: NSError!) in
                
                if error != nil {
                    println("Geocode failed with error: \(error.localizedDescription)")
                } else if placemarks.count > 0 {
                    let placemark = placemarks[0] as! CLPlacemark
               
                    
                    println(placemark.location.coordinate.latitude);
                  
                    
                   
                    
                    
                }
        })
        
        
        }

        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

