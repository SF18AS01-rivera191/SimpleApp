//
//  ViewController.swift
//  SimpleApp
//
//  Created by Cristian Rivera on 12/31/18.
//  Copyright © 2018 Cristian Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label: UILabel = UILabel();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.backgroundColor = .yellow;
        label.numberOfLines = 0;   //0 permits any number of lines
        label.textColor = .red;
        label.text = "Please swipe any direction \n on your screen"
        label.frame.origin = CGPoint(x: 50, y: 300);  //frame is a CGRect.
        label.frame.size = label.intrinsicContentSize; //needed if not using constraints
        print("label.frame = \(label.frame)");         //(100.0, 100.0, 169.0, 61.0)
        print(view.subviews.count);
        view.addSubview(label);
        print(view.subviews.count);
    }
    @IBAction func returnedInput(_ sender: UITextField) {
        sender.resignFirstResponder();
        let name:String = sender.text!
        label.text = "Welcome \(name) swipe any\n direction on your screen "
    }
    
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        label.text = "You just swipe up ";
    
    }
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        label.text = "You just swipe right";
    }
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        label.text = "You just swipe down";
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        label.text = "You just swipe left";
    }
    
}

