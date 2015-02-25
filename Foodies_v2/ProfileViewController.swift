//
//  ProfileViewController.swift
//  Foodies_v2
//
//  Created by Wei Chen on 2/24/15.
//  Copyright (c) 2015 Wei Chen. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLogoutButton(sender: AnyObject) {
        var actionSheetView = UIActionSheet(title: "Are you sure?", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Log Out")
        
        actionSheetView.showInView(view)
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        if (buttonIndex == 0){
            performSegueWithIdentifier("logoutSegue", sender: self)
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
