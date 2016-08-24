//
//  ViewController.swift
//  ClosuresExample1
//
//  Created by mitchell hudson on 8/23/16.
//  Copyright © 2016 Mitchell Hudson. All rights reserved.
//


// This example shows closures used in a typical UIKit app
//
// Exercise: 
// 1) Find all of closures
// 2) 


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonTapped(sender: UIButton) {
        let alert = UIAlertController(title: "Login", message: "", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default) { (action) in
            self.doLogin()
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            self.loginCanceled()
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Username"
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Password"
            textField.secureTextEntry = true
        }
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        presentViewController(alert, animated: true, completion: fadeBack)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func doLogin() {
        print("Doing log in stuff...")
        fadeUp()
    }

    func loginCanceled() {
        print("You canceled login")
        fadeUp()
    }
    
    func fadeBack() {
        UIView.animateWithDuration(1) { 
            self.view.backgroundColor = UIColor.blackColor()
        }
    }
    
    func fadeUp() {
        UIView.animateWithDuration(1) {
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }
    
    func fadeRed() {
        UIView.animateWithDuration(1) { 
            self.view.backgroundColor = UIColor.redColor()
        }
    }
}

