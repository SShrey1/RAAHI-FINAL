//
//  ViewController2.swift
//  CustomTableView
//
//  Created by User@Param on 29/10/24.
//

import UIKit
import WebKit

class ViewController2: UIViewController, UITableViewDataSource {
    @IBOutlet weak var table2: UITableView!

//    struct Rafting {
//        let title: String
//        let imageName: String
//        let location: String
//        let distance: String
//        let cost: String
//    }
//    
//    let data3: [Rafting] = [
//        Rafting(title: "River Ganga", imageName: "rafting1", location: "Rishikesh,Uttarakhand", distance: "9km-36km", cost: "Rs 2500/ Per Person"),
//        Rafting(title: "Teesta River", imageName: "rafting2", location: "Darjeeling,Sikkim", distance: "11km-37km", cost: "Rs 6000/ Per Person"),
//        Rafting(title: "Barapole River", imageName: "rafting3", location: "Coorg,Karnataka", distance: "8km", cost: "Rs 400/ Per Person"),
//        Rafting(title: "Kundala River", imageName: "rafting4", location: "Kolad,Maharastra", distance: "16km", cost: "Rs 1200/ Per Person"),
//        Rafting(title: "Brahamaputra River", imageName: "rafting5", location: "Arunachal Pradesh", distance: "180km", cost: "Rs 1100/ Per Person")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table2.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Rafting = data3[indexPath.row]
        let cell1 = table2.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! ParamTableViewCell
        cell1.label11.text = Rafting.title
        cell1.label12.text = Rafting.location
        cell1.label13.text = Rafting.distance
        cell1.label14.text = Rafting.cost
        cell1.iconImageView.layer.cornerRadius = 20.0
        cell1.iconImageView.image = UIImage(named: Rafting.imageName)
        return cell1
    }
    
    @IBAction func Btn_URL2(_ sender: UIButton) {
        guard let url = URL(string: "https://www.holidify.com/pages/river-rafting-in-india-88.html") else { return }
        
        // Initialize and present the web view controller
        let webVC = WebViewController2()
        webVC.urlToLoad = url
        present(webVC, animated: true, completion: nil)
    }
}

