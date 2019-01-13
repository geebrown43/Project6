//
//  ViewController.swift
//  Project6
//
//  Created by Gavin Brown on 1/13/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool { // this tells ios to not show status bar(where time is displayed)
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false //disables auto layout feature
        label1.backgroundColor = UIColor.red
        label1.text = "These"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.cyan
        label2.text = "Are"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        label3.text = "Some"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.green
        label4.text = "Awesome"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orange
        label5.text = "Labels"
        label5.sizeToFit()
        
       let arr = [label1, label2, label3, label4, label5]
        
        for value in arr {
            view.addSubview(value)
        }
        
        let viewsDictionary: [String: UILabel] = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
            
            // addConstraints adds an array of constraints to our view controllers view
            // NSLayoutConstraint.constraints(withVisualFormat:) is the Auto Layout method that converts VFL into an array of constraints
            //"H:|[label}|" -- this string describes how we want the layout to look
            //H: -- Horizontal Layout
            // | -- means the edge of the View
        }
       
    }


}

