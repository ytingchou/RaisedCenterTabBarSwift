//
//  MainTableViewController.swift
//  RaisedCenterTabBarSwift
//
//  Created by Yuting Chou on 2015/12/23.
//  Copyright © 2015年 Mary Cat House. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    let instagramTabItems = [
        ["title": "Feed", "image": "112-group"],
        ["title": "Popular", "image": "29-heart"],
        ["title": "Share", "image": ""],
        ["title": "News", "image": "news"],
        ["title": "@user", "image": "123-id-card"],
                            ]

    let pathTabItems = [
        ["title": "Today", "image": "tab-today"],
        ["title": "Explore", "image": "tab-explore"],
        ["title": "", "image": ""],
        ["title": "Friends", "image": "tab-friends"],
        ["title": "Me", "image": "tab-me"],
    ]

    let dailyBoothTabItems = [
        ["title": "Home", "image": "tab_feed"],
        ["title": "Live", "image": "tab_live"],
        ["title": "", "image": ""],
        ["title": "Profiles", "image": "tab_feed_profile"],
        ["title": "Messages", "image": "tab_messages"],
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let segueIdentifier = segue.identifier {
            switch segueIdentifier {
            case "showInstagramTabBar":
                let destinationController = segue.destinationViewController as! DemoCustomTabBarController
                destinationController.title = "Instagram"
                destinationController.tabBarItems = instagramTabItems
                destinationController.centerButtonImage = "cameraTabBarItem"
                destinationController.centerButtonHighlightImage = nil
            case "showPathTabBar":
                let destinationController = segue.destinationViewController as! DemoCustomTabBarController
                destinationController.title = "Path"
                destinationController.tabBarItems = pathTabItems
                destinationController.centerButtonImage = "capture-button"
                destinationController.centerButtonHighlightImage = nil
            case "showDailyBoothTabBar":
                let destinationController = segue.destinationViewController as! DemoCustomTabBarController
                destinationController.title = "DailyBooth"
                destinationController.tabBarItems = dailyBoothTabItems
                destinationController.centerButtonImage = "camera_button_take"
                destinationController.centerButtonHighlightImage = "tabBar_cameraButton_ready_matte"
            default:
                break
            }
        }
    }

}
