//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Daniel Margulis on 12/6/15.
//  Copyright © 2015 Daniel Margulis. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    @IBOutlet weak var colorControl: UISegmentedControl!
    
    @IBOutlet weak var defaultTipLabel: UILabel!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        defaultTipControl.selectedSegmentIndex = defaults.integerForKey("defaultTip")
        colorControl.selectedSegmentIndex = defaults.integerForKey("colorChoice")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func changeDefaultTip(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
        
    }

    @IBAction func changeColor(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(colorControl.selectedSegmentIndex, forKey: "colorChoice")
        defaults.synchronize()
        if(colorControl.selectedSegmentIndex==0){
            self.view.backgroundColor = UIColor.whiteColor()
            defaultTipLabel.textColor = UIColor.blackColor()
            colorLabel.textColor = UIColor.blackColor()
        }
        else{
            self.view.backgroundColor = UIColor.blackColor()
            defaultTipLabel.textColor = UIColor.whiteColor()
            colorLabel.textColor = UIColor.whiteColor()
        }
    }
}
