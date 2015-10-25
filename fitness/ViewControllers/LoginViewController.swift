//
//  LoginViewController.swift
//  Fitness
//
//  Created by MyAppTemplates Team on 16/02/15.
//  Copyright (c) 2015 MyAppTemplates. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var contentScroll: UIScrollView!
    @IBOutlet var txtUsername : UITextField!
    @IBOutlet var txtPassword : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("willShowKeyBoard:"), name:UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("willHideKeyBoard:"), name:UIKeyboardWillHideNotification, object: nil)
        txtUsername.leftView = UIView(frame: CGRectMake(0, 0, 15, 20))
        txtPassword.leftView = UIView(frame: CGRectMake(0, 0, 15, 20))
        txtUsername.leftViewMode = UITextFieldViewMode.Always
        txtPassword.leftViewMode = UITextFieldViewMode.Always
        // Do any additional setup after loading the view.
    }
    
    
    func willShowKeyBoard(notification : NSNotification){
        
        contentScroll.setContentOffset(CGPointMake(0, 120), animated: true);
    }
    
    func willHideKeyBoard(notification : NSNotification){
        
        contentScroll.setContentOffset(CGPointMake(0, 0), animated: true);
    }
    
    func textFieldShouldReturn (textField: UITextField!) -> Bool{
        if ((textField == txtUsername)){
            txtPassword.becomeFirstResponder();
        } else if (textField == txtPassword){
            textField.resignFirstResponder()
        }
        return true
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
