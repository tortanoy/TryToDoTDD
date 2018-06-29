//
//  ViewController.swift
//  ToDo
//
//  Created by Surapong.suw on 28/6/2561 BE.
//  Copyright © 2561 surapongs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("Step 1")
        //myFunc()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func myFunc() {
        for i in 1...10 {
            print("In \(i)")
            defer { print("Deferred \(i)") }
            print("Out \(i)")
        }
    }
}

