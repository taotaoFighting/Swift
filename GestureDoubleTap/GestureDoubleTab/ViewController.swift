//
//  ViewController.swift
//  GestureDoubleTab
//
//  Created by Carlos Butron on 01/12/14.
//  Copyright (c) 2015 Carlos Butron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
	
	override func viewDidLoad() {
		let tapGesture = UITapGestureRecognizer(target: self, action:
			#selector(ViewController.handleTap(_:)))
		tapGesture.numberOfTapsRequired = 2;
		image.addGestureRecognizer(tapGesture)
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func handleTap(_ sender : UIGestureRecognizer) {
        if (sender.view?.contentMode == UIViewContentMode.scaleAspectFit){
            sender.view?.contentMode = UIViewContentMode.center
        }else{
            sender.view?.contentMode = UIViewContentMode.scaleAspectFit
        }
	}
}
