//
//  ViewController.swift
//  HideShopping
//
//  Created by Craig Newcomb on 1/8/16.
//  Copyright © 2016 Craig Newcomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var heb: UIImageView!

    @IBOutlet weak var hebButton: UIButton!
    
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

    @IBAction func unhideButton(sender: AnyObject) {
        walmart.hidden = false
        walmartButton.hidden = false
        wholeFood.hidden = false
        wholeFoodButton.hidden = false
        heb.hidden = false
        hebButton.hidden = false
        messageButton.hidden = true
        
    }
  
    @IBAction func hideWalmart(sender: AnyObject) {
        walmart.hidden = true
        walmartButton.hidden = true
        checkHidden()
    }

    @IBAction func hideWholeFood(sender: AnyObject) {
        wholeFood.hidden = true
        wholeFoodButton.hidden = true
        checkHidden()
    }
    @IBAction func hideHEB(sender: AnyObject) {
        heb.hidden = true
        hebButton.hidden = true
        checkHidden()
    }
    
 
/* 
    
    Original code for reference. I found out that using the block below is much more compact when using && to test if ALL are true. Note we don't need to test both the buttons and logos for hidden, because it is implied they are both hidden if one is hidden, given the behavior of the app; we could have just as easily checked all the buttons.
    
    func checkHidden() {
        if walmart.hidden == true {
            if heb.hidden == true {
                if wholeFood.hidden == true{
                    messageButton.hidden = false
                } else{}
            } else{}
        } else{}
    }
    
*/
    
    
    func checkHidden() {
        if walmart.hidden == true && heb.hidden == true && wholeFood.hidden == true {
            messageButton.hidden = false
        }
    }

}

