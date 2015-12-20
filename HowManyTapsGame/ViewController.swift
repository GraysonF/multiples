//
//  ViewController.swift
//  HowManyTapsGame
//
//  Created by Grayson faircloth on 12/20/15.
//  Copyright © 2015 Grayson Faircloth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    var maxValue = 100
    var multipleAmt = 0
    var prevValue = 0
    
    
    
    @IBOutlet var Logo: UIImageView!
    @IBOutlet var PlayBtn: UIButton!
    @IBOutlet var numberToAdd: UITextField!
    
    @IBOutlet var addBtn: UIButton!
    @IBOutlet var addLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Logo.hidden = false
        PlayBtn.hidden = false
        numberToAdd.hidden = false
        
        addBtn.hidden = true
        addLabel.hidden = true
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressToPlay(sender: AnyObject) {
        if (numberToAdd.text != nil && numberToAdd.text != ""){
          
            Logo.hidden = true
            PlayBtn.hidden = true
            numberToAdd.hidden = true
            
            addBtn.hidden = false
            addLabel.hidden = false
            
            currentValue = 0
            
            prevValue = 0
            
            addLabel.text = "Press ADD to add!"
            
        }
        
        
        
        
    }

    
    @IBAction func pressToAdd(sender: AnyObject) {
        
        if (currentValue < 100) {
        
        multipleAmt = Int(numberToAdd.text!)!
        
      
        
        currentValue += multipleAmt
        
        
        addLabel.text = "\(prevValue) + \(multipleAmt) = \(currentValue)"
        
        
        prevValue += multipleAmt
        }
        
        else {
            
            
            
            Logo.hidden = false
            PlayBtn.hidden = false
            numberToAdd.hidden = false
            
            addBtn.hidden = true
            addLabel.hidden = true
            
            
            
            
        }
        
    }
    
    
}

