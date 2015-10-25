//
//  StartViewController.swift
//  Fitness
//
//  Created by MyAppTemplates Team on 17/02/15.
//  Copyright (c) 2015 MyAppTemplates. All rights reserved.
//

import UIKit
import MediaPlayer

class StartViewController: UIViewController {
    
    @IBOutlet var contentScroll: UIScrollView!
    var imgButtonBg: UIImageView!
    var lastSelectedButton: UIButton!
    var moviePlayer : MPMoviePlayerController?
    @IBOutlet var playerContainerView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imgButtonBg = UIImageView(frame: CGRectMake(0, 0, 35, 35));
        imgButtonBg.image = UIImage(named: "number-circle-bg-start.png")
        contentScroll.addSubview(imgButtonBg)
        self.populateScrollView()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnTapped (sender : UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func populateScrollView() {
        for index in 1...10 {
            var btn:UIButton!
            btn = UIButton(frame: CGRectMake(CGFloat((index-1) * 40 + 30), 20, 30, 30))
            btn.setTitle(NSString(format: "%d", index) as String, forState: UIControlState.Normal)
            contentScroll.addSubview(btn)
            btn.addTarget(self, action: Selector("repbuttonTapped:"), forControlEvents: UIControlEvents.TouchUpInside)
            contentScroll.contentSize = CGSizeMake(CGFloat(index * 40 + 30), contentScroll.contentSize.height)
            if index==1 {
                imgButtonBg.center = btn.center
                btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                lastSelectedButton = btn
            }
        }
    }
    
    func repbuttonTapped (sender : UIButton) {
        imgButtonBg.center = sender.center
        sender.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        lastSelectedButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        lastSelectedButton = sender
    }
    
    
    @IBAction func playBtnTapped (sender: UIButton) {
        playVideo()
    }
    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("workout", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = CGRectMake(0, 0, playerContainerView.frame.size.width, playerContainerView.frame.size.height)
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            playerContainerView.addSubview(player.view)
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
