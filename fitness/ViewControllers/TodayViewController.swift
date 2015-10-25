//
//  TodayViewController.swift
//  Fitness
//
//  Created by MyAppTemplates Team on 18/02/15.
//  Copyright (c) 2015 MyAppTemplates. All rights reserved.
//

import UIKit


class TodayViewController: UIViewController {

    @IBOutlet var tabBtn1: UIButton!
    @IBOutlet var tabBtn2: UIButton!
    @IBOutlet var tabBtn3: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnTapped (sender : UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func tabBtnTapped (sender : UIButton) {
        tabBtn1.selected = false
        tabBtn2.selected = false
        tabBtn3.selected = false
        sender.selected = true
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
