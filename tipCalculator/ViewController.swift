//
//  ViewController.swift
//  tipCalculator
//
//  Created by Daniel Margulis on 12/6/15.
//  Copyright © 2015 Daniel Margulis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var blackBarView: UIView!
    
    @IBOutlet weak var tipTextLabel: UILabel!
    
    @IBOutlet weak var billTextLabel: UILabel!
    
    @IBOutlet weak var totalTextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        let defaults = NSUserDefaults.standardUserDefaults()
        tipControl.selectedSegmentIndex = defaults.integerForKey("defaultTip")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercents = [0.18, 0.2, 0.22]
        let tipPercent = tipPercents[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        let tip = billAmount*tipPercent
        let total = billAmount+tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        tipControl.selectedSegmentIndex = defaults.integerForKey("defaultTip")
        
        self.blackBarView.alpha = 0
        UIView.animateWithDuration(0.4, animations:{
            self.blackBarView.alpha = 1
        })
        
        let tipPercents = [0.18, 0.2, 0.22]
        let tipPercent = tipPercents[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        let tip = billAmount*tipPercent
        let total = billAmount+tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        //Create Colors
        if(defaults.integerForKey("colorChoice")==0){
            self.view.backgroundColor = UIColor.whiteColor()
            tipLabel.textColor = UIColor.blackColor()
            totalLabel.textColor = UIColor.blackColor()
            tipTextLabel.textColor = UIColor.blackColor()
            billTextLabel.textColor = UIColor.blackColor()
            blackBarView.backgroundColor = UIColor.blackColor()
            totalTextLabel.textColor = UIColor.blackColor()
            
        }
        else{
            self.view.backgroundColor = UIColor.blackColor()
            tipLabel.textColor = UIColor.whiteColor()
            totalLabel.textColor = UIColor.whiteColor()
            tipTextLabel.textColor = UIColor.whiteColor()
            billTextLabel.textColor = UIColor.whiteColor()
            blackBarView.backgroundColor = UIColor.whiteColor()
            totalTextLabel.textColor = UIColor.whiteColor()
        }
        
        

        
    }
    

}

