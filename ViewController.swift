//
//  ViewController.swift
//  fullcalc
//
//  Created by Eslam Sebaie on 9/27/19.
//  Copyright © 2019 Eslam Sebaie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var numberonscreen:Double = 0
    var previousnumber:Double = 0
    var performMath = false
    var operation:Double = 0
    var res:Double = 0
    @IBOutlet weak var labl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Numbers(_ sender: UIButton) {
        if(performMath == true)
        {
            labl.text = String(sender.tag-1)
             numberonscreen = Double(labl.text!)!
            performMath = false
        }
        else{
            
            labl.text = labl.text! + String(sender.tag-1)
            numberonscreen = Double(labl.text!)!
       }
    }
    @IBAction func operations(_ sender: UIButton) {
    
    if(labl.text != ""  && sender.tag != 16)
    {
        previousnumber = Double(labl.text!)!
        if(sender.tag == 11)
        {
            labl.text = "0"
        }
        
        else if(sender.tag == 12)
        {
            labl.text = "/"
            
        }
        else if(sender.tag == 13)
        {
            labl.text = "x"
            
        }
        
        else if(sender.tag == 14)
        {
            labl.text = "-"
            
        }
        else if(sender.tag == 15)
        {
            labl.text = "+"
            
        }
        
        operation = Double(sender.tag)
        performMath = true
        
        }
  else if(sender.tag == 16)
    {
        if(operation == 12)
        {
           res = previousnumber / numberonscreen
            labl.text = String(res)
        }
        else if(operation == 13)
        {
            res = previousnumber * numberonscreen
            labl.text = String(res)
        }
        else if(operation == 14)
        {
            res = previousnumber - numberonscreen
            labl.text = String(res)
        }
        
        if(operation == 15)
        {
            res = previousnumber + numberonscreen
            labl.text = String(res)
        }
        
        }
        
    
    }
    
    
    

}

