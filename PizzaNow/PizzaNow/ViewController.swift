//
//  ViewController.swift
//  PizzaNow
//
//  Created by Jason Larsen on 6/17/15.
//  Copyright © 2015 Heartbit, LLC. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var pizzaTextField: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
    }

    @IBAction func pressedSendNow(sender: UIButton) {
        if let pizzaName = pizzaTextField.text {
            let alert = UIAlertController(title: "Sending Pizza!", message: "Your \(pizzaName.lowercaseString) pizza is on its way!", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }
    }

    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        let coordinate = userLocation.coordinate
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000)
        mapView.region = region
    }
}

