//
//  ViewController.swift
//  MapKit iPad
//
//  Created by Carlos Butron on 02/12/14.
//  Copyright (c) 2014 Carlos Butron.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var myMap: MKMapView!
    
    var set = NSMutableArray()
    
    @IBAction func createAnotation(_ sender: AnyObject) {
        
        let a = MyAnotation(c: myMap.centerCoordinate, t: "Center", st: "The map center")
        mapView(myMap, viewFor: a)
        myMap.addAnnotation(a)
        set.add(a)
    }
    
    @IBAction func deleteAnotation(_ sender: AnyObject) {
        //new for swift 2.0
        let annotationsToRemove = self.myMap.annotations
        self.myMap.removeAnnotations(annotationsToRemove)
    }
    
    @IBAction func coordinates(_ sender: AnyObject) {
 
        latitude.text = "\(myMap.centerCoordinate.latitude)"
        longitude.text = "\(myMap.centerCoordinate.longitude)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myMap.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation:
        MKAnnotation) -> MKAnnotationView?{
            let pinView:MKPinAnnotationView = MKPinAnnotationView(annotation:
                annotation, reuseIdentifier: "Custom")
            //purple color to anotation
            //pinView.pinColor = MKPinAnnotationColor.Purple
            pinView.image = UIImage(named:"mypin.png")
            return pinView
    }
    
}
