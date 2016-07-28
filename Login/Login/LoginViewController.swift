//
//  LoginViewController.swift
//  Login
//
//  Created by Amit Kondhalkar on 27/07/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
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

    @IBAction func loginTapped(sender: UIButton) {
        print("login tapped")
        
        guard let email = tfEmail?.text else {
            return
        }
        guard let pwd = tfPassword?.text else {
            return
        }
        
        print(email)
        print(pwd)
        
        if ( email.isEmpty || pwd.isEmpty ) {
            print("email or pwd is empty")
        } else if(false) { // email validation
            
        } else if(false) { // pwd validation
            
        } else {
            //todo: call login service and set success var
            let success = 1
            
            if(success == 1)
            {
                NSLog("Login SUCCESS");
                
                let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
                prefs.setObject(email, forKey: "EMAIL")
                prefs.setInteger(1, forKey: "ISLOGGEDIN")
                prefs.synchronize()
                
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            self.dismissViewControllerAnimated(true, completion: nil)
        }

    }
}
