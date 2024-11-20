//
//  ViewController.swift
//  CustomTableView
//
//  Created by User@Param on 23/10/24.
//

import UIKit
import WebKit

class NationalParkViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    
//    struct Safari {
//        var title: String
//        var imageName: String
//        var location: String
//        var bestTime: String
//        var cost: String
//    }
//
//    let data1: [Safari] = [
//        Safari(title: "Ranthambore National Park", imageName: "safari1", location: "Sawai Madhopur, Rajasthan", bestTime: "Best Time : Oct to June", cost: "Rs 1200/ Per Person"),
//        Safari(title: "Hemis National Park", imageName: "safari2", location: "Sawai Madhopur, Rajasthan", bestTime: "Best Time : May to Sept", cost: "Rs 1500/ Per Person"),
//        Safari(title: "Jim Corbett National Park", imageName: "safari3", location: "Nanital, Uttarakhand", bestTime: "Best Time : Oct to Feb", cost: "Rs 1250/ Per Person"),
//        Safari(title: "Bandhavgarh National Park", imageName: "safari4", location: "Umaria, Madhya Pradesh", bestTime: "Best Time : Nov to Feb", cost: "Rs 2000/ Per Person"),
//        Safari(title: "Sasan-Gir Wildlife Sanctuary", imageName: "safari3", location: "Talala Gir, Gujarat", bestTime: "Best Time : Dec to Mar", cost: "Rs 1100/ Per Person")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Safari = data1[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ParamCustomTableViewCell
        cell.label.text = Safari.title
        cell.label1.text = Safari.location
        cell.label2.text = Safari.bestTime
        cell.label3.text = Safari.cost
        cell.iconImageView.layer.cornerRadius = 20.0
        cell.iconImageView.image = UIImage(named: Safari.imageName)
        return cell
    }
    
    @IBAction func Btn_URL(_ sender: UIButton) {
        guard let url = URL(string: "https://ranthamboretigerreserve.in/?campaignid=14630256461&gad_source=1&gbraid=0AAAAACwRLJ200JsNCfVWhRpXCoO1u4AKG&gclid=Cj0KCQjwgL-3BhDnARIsAL6KZ69Eur39RQfltLploRYhKxBo00W0pHzUcrVptm0fd37TPMkgsrZl70YaAhipEALw_wcB") else { return }
        
        let webVC = WebViewController()
        webVC.urlToLoad = url
        self.present(webVC, animated: true, completion: nil)
    }
}

