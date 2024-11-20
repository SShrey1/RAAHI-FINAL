//
//  ViewController.swift
//  RAAHI
//
//  Created by admin3 on 23/10/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: InsightsViewController())
        let vc3 = UINavigationController(rootViewController: ItineraryViewController())
        
        
        vc1.tabBarItem.image = UIImage(named: "house.fill")
        vc2.tabBarItem.image = UIImage(named: "globe.europe.africa.fill")
        vc3.tabBarItem.image = UIImage(named: "newspaper.fill")
        
        vc1.title = "Home"
        vc2.title = "Insights"
        vc3.title = "Itinerary"
        
    
        setViewControllers([vc1, vc2, vc3], animated: true)
    }
    
    
   

}

