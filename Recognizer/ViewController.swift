//
//  ViewController.swift
//  Recognizer
//
//  Created by JHJG on 2016. 7. 18..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapDetected(sender: UITapGestureRecognizer) {
        statusLabel.text = "Double Tap"
    }
    @IBAction func pinchDetected(sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let velocity = sender.velocity
        let resultString = "Pinch - sacle = \(scale), velocity=\(velocity)"
        
        statusLabel.text = resultString
    }
    @IBAction func rotationDetected(sender: UIRotationGestureRecognizer) {
        let radians = sender.rotation
        let velocity = sender.velocity
        let resultString = "Rotation - Radians = \(radians), velocity = \(velocity)"
        
        statusLabel.text = resultString
        
    }
    @IBAction func swipeDetected(sender: UISwipeGestureRecognizer) {
        statusLabel.text = "Right swipe"
    }
    @IBAction func longPressDetected(sender: UILongPressGestureRecognizer) {
        statusLabel.text = "Long Press"
    }


}

