//
//  ViewController.swift
//  HideShopping
//
//  Created by Craig Newcomb on 1/8/16.
//  Copyright © 2016 Craig Newcomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var walmart: UIImageView!

    @IBOutlet weak var wholeFood: UIImageView!
    
    @IBOutlet weak var walmartButton: UIButton!
    
    @IBOutlet weak var wholeFoodButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func hideWalmart(sender: AnyObject) {
        walmart.hidden = true
        walmartButton.hidden = true
    }

    @IBAction func hideWholeFood(sender: AnyObject) {
        wholeFood.hidden = true
        wholeFoodButton.hidden = true
    }
}

