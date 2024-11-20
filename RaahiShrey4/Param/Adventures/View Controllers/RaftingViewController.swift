//
//  ViewController5.swift
//  CustomTableView
//
//  Created by User@Param on 01/11/24.
//

import UIKit
import WebKit

class RaftingViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table5: UITableView!
    
//    struct Trek {
//        let title: String
//        let imageName: String
//        let location: String
//        let duration: String
//        let cost: String
//    }
//    
//    let data2: [Trek] = [
//        Trek(title: "Kashmir Great Lakes Trek", imageName: "t1", location: "Sonmarg, J&K", duration: "6 Days", cost: "Rs 17,950/ Per Person"),
//        Trek(title: "Bhrigu Lake Trek", imageName: "t2", location: "Manali, Himachal Pradesh", duration: "5 Days", cost: "Rs 4,200/ Per Person"),
//        Trek(title: "Hampta Pass Trek", imageName: "t3", location: "Manali, Himachal Pradesh", duration: "5 Days", cost: "Rs 11,500/ Per Person"),
//        Trek(title: "Sandakphu Trek", imageName: "t4", location: "Dhotrey, West Bengal", duration: "7 Days", cost: "Rs 12,600/ Per Person"),
//        Trek(title: "Goechala Trek", imageName: "t5", location: "Sikkim", duration: "11 Days", cost: "Rs 16,400/ Per Person")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table5.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let trek = data2[indexPath.row]
        let cell4 = table5.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! Custom4TableViewCell
        cell4.labe31.text = trek.title
        cell4.label32.text = trek.location
        cell4.label33.text = trek.duration
        cell4.label34.text = trek.cost
        cell4.iconImageView.layer.cornerRadius = 20.0
        cell4.iconImageView.image = UIImage(named: trek.imageName)
        return cell4
    }
    
    @IBAction func Btn_URL5(_ sender: UIButton) {
        guard let url = URL(string: "https://himalayatrekker.com/tours/kashmir-great-lakes-trek/") else { return }
        
        // Present WebViewController5
        let webVC = WebViewController5()
        webVC.urlToLoad = url
        present(webVC, animated: true, completion: nil)
    }
}
