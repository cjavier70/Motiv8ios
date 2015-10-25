//
//  SettingsViewController.swift
//  Fitness
//
//  Created by MyAppTemplates Team on 16/02/15.
//  Copyright (c) 2015 MyAppTemplates. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var tblContents: UITableView!
    var items : NSMutableArray = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addItems()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnTapped (sender : UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func logoutBtnTapped (sender : UIButton) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    func addItems() {
    items.addObject(["bgImg":"ic-account", "type":"Account"])
    items.addObject(["bgImg":"ic-medical-training", "type":"Medical Training Data"])
    items.addObject(["bgImg":"ic-training-history", "type":"Training History"])
    items.addObject(["bgImg":"ic-purchased", "type":"Purchased"])
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell : SettingsTableViewCell!
        var itemDic = items.objectAtIndex(indexPath.row) as! [String : String];
        cell = tblContents.dequeueReusableCellWithIdentifier("SettingsCell") as! SettingsTableViewCell
        cell.imgIcon.image = UIImage(named: itemDic["bgImg"]!)
        cell.lblTitle.text = itemDic["type"]! as String
        return cell
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
