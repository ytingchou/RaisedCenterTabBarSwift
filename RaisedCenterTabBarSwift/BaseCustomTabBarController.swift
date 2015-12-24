//
//  BaseCustomTabBarController.swift
//  RaisedCenterTabBarSwift
//
//  Created by Yuting Chou on 2015/12/23.
//  Copyright © 2015年 Mary Cat House. All rights reserved.
//

import UIKit

class BaseCustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Create a view controller and setup it's tab bar item with a title and image
    func viewControllerWithTabTitle(title: String, image: UIImage?) -> UIViewController {
        let viewController = UIViewController()
        viewController.tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
        return viewController
    }
    
    // Create a custom UIButton and add it to the center of our tab bar
    func addCenterButtonWithImage(buttonImage: UIImage?, highlightImage: UIImage?) {
        
        guard let buttonImage = buttonImage else {
            return
        }
        
        let button = UIButton(type: .Custom)
        button.autoresizingMask = [.FlexibleRightMargin, .FlexibleLeftMargin, .FlexibleBottomMargin, .FlexibleTopMargin]
        button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height)
        button.setBackgroundImage(buttonImage, forState: .Normal)
        
        if let highlightImage = highlightImage {
            button.setBackgroundImage(highlightImage, forState: .Highlighted)
        }
        
        let heightDifference = buttonImage.size.height - tabBar.frame.size.height
        if (heightDifference < 0) {
            button.center = self.tabBar.center
        } else {
            var center = self.tabBar.center
            center.y = center.y - heightDifference/2.0
            button.center = center
        }
        
        view.addSubview(button)
    }
}
