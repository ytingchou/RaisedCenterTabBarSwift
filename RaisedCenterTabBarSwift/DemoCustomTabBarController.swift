//
//  DemoCustomTabBarController.swift
//  RaisedCenterTabBarSwift
//
//  Created by Yuting Chou on 2015/12/23.
//  Copyright © 2015年 Mary Cat House. All rights reserved.
//

import UIKit

class DemoCustomTabBarController: BaseCustomTabBarController {
    var centerButtonImage: String!
    var centerButtonHighlightImage: String?
    
    var tabBarItems: [[String: String]]!

    override func viewDidLoad() {
        var newViewControllers = [UIViewController]()
        for item in tabBarItems! {
            let itemViewController = self.viewControllerWithTabTitle(item["title"]!,
                image: UIImage(named: item["image"]!))

            newViewControllers.append(itemViewController)
        }
        
        self.viewControllers = newViewControllers
    }

    override func viewWillAppear(animated: Bool) {
        addCenterButtonWithImage(UIImage(named: centerButtonImage),
            highlightImage: centerButtonHighlightImage != nil ? UIImage(named: centerButtonHighlightImage!) : nil)
    }
}