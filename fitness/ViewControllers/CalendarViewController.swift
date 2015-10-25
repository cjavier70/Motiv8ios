//
//  CalendarViewController.swift
//  Fitness
//
//  Created by MyAppTemplates Team on 18/02/15.
//  Copyright (c) 2015 MyAppTemplates. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

    var calendarView: MNCalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarView = MNCalendarView(frame: CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64))
        self.view.addSubview(calendarView)
        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnTapped (sender : UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
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

}
