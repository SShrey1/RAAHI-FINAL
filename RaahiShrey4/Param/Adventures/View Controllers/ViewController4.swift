//
//  ViewController4.swift
//  CustomTableView
//
//  Created by User@Param on 01/11/24.
//

import UIKit
import WebKit

class ViewController4: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table4: UITableView!
    
//    struct Bungee {
//        let title: String
//        let imageName: String
//        let location: String
//        let Height: String
//        let cost: String
//    }
//    
//    let data5: [Bungee] = [
//        Bungee(title: "Bungee Heights", imageName: "bj1", location: "Rishikesh,Uttarakhand", Height: "83 m ft", cost: "Rs 3,500/ Per Person"),
//        Bungee(title: "Della Adventures", imageName: "bj2", location: "Lonavla,Mahrashtra", Height: "45 m", cost: "Rs 1,500/ Per Person"),
//        Bungee(title: "Ozone Adventures", imageName: "bj3", location: "Banglore, Karnataka", Height: "25 m", cost: "Rs 400/ Per Person"),
//        Bungee(title: "Wanderlust", imageName: "bj4", location: "New Delhi", Height: "52 m", cost: "Rs 3,000/ Per Person"),
//        Bungee(title: "Gravity Adventure", imageName: "bj5", location: "Goa", Height: "25 m", cost: "Rs 500/ Per Person")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table4.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data5.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Bungee = data5[indexPath.row]
        let cell3 = table4.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Custom3TableViewCell
        cell3.label21.text = Bungee.title
        cell3.label22.text = Bungee.location
        cell3.label23.text = Bungee.Height
        cell3.label24.text = Bungee.cost
        cell3.iconImageView.layer.cornerRadius = 20.0
        cell3.iconImageView.image = UIImage(named: Bungee.imageName)
        return cell3
    }
    
    @IBAction func Btn_URL4(_ sender: UIButton) {
        guard let url = URL(string: "https://www.holidify.com/collections/bungee-jumping-in-india") else { return }
        
        // Present WebViewController4
        let webVC = WebViewController4()
        webVC.urlToLoad = url
        present(webVC, animated: true, completion: nil)
    }
}
