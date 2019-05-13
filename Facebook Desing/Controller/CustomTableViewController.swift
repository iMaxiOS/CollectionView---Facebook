//
//  CustomTableViewController.swift
//  Facebook Desing
//
//  Created by Maxim Granchenko on 5/13/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import UIKit

class CustomTableViewController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            viewController(icon: #imageLiteral(resourceName: "home"), controller: HomeViewController()),
            viewController(icon: #imageLiteral(resourceName: "youtube"), controller: VideoViewController()),
            viewController(icon: #imageLiteral(resourceName: "groupe"), controller: GroupsListController()),
            viewController(icon: #imageLiteral(resourceName: "bell"), controller: MessageViewController()),
            viewController(icon: #imageLiteral(resourceName: "menu"), controller: SettingsViewController()),
        ]
        
        selectedIndex = 2
        tabBar.unselectedItemTintColor = .black
        
    }
    
    func viewController(icon: UIImage, controller: UIViewController) -> UIViewController {
        controller.tabBarItem.image = icon
        return controller
    }
}
