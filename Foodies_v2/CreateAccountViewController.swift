//
//  CreateAccountViewController.swift
//  Foodies_v2
//
//  Created by Samuel Shih on 2/24/15.
//  Copyright (c) 2015 Wei Chen. All rights reserved.
//

import UIKit
import Parse

class CreateAccountViewController: UIViewController {


    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressCancelButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(true , completion: { () -> Void in
        })
    }
    
    @IBAction func didPressCreateAccountButton(sender: AnyObject) {
        
        var user = PFUser()
        user.username = emailField.text
        user.password = passwordField.text
        
        // name success: and error:
        user.signUpInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
            
            // If there is an error do something
            if success == true {
                self.dismissViewControllerAnimated(true , completion: { () -> Void in
                    
                })
            }
            else {
                var alert = UIAlertView(title: "Oops!", message: "The username that you entered is already taken", delegate: nil, cancelButtonTitle: "OK")
                alert.show()
            }
        }

    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
