//
//  ViewController3.swift
//  CustomTableView
//
//  Created by User@Param on 31/10/24.
//
import UIKit

class ViewController3: UIViewController, UITableViewDataSource {

    @IBOutlet weak var table3: UITableView!

//    struct Diving {
//        let title: String
//        let imageName: String
//        let location: String
//        let Height: String
//        let cost: String
//    }
//
//    let data4: [Diving] = [
//        Diving(title: "Thrills Extreme", imageName: "sd1", location: "Aambey Valley, Maharashtra", Height: "10,000 ft", cost: "Rs 20,000/ Per Person"),
//        Diving(title: "Parachuting Federation", imageName: "sd2", location: "Deesa, Gujarat", Height: "3,500 ft", cost: "Rs 16,500/ Per Person"),
//        Diving(title: "Thrills Extreme", imageName: "sd3", location: "Dhana, Madhya Pradesh", Height: "9,000 ft", cost: "Rs 35,000/ Per Person"),
//        Diving(title: "Sky High", imageName: "sd4", location: "Narnaul, Haryana", Height: "10,000 ft", cost: "Rs 27,500/ Per Person"),
//        Diving(title: "Sky High", imageName: "sd5", location: "Aligarh, Uttar Pradesh", Height: "9,000 ft", cost: "Rs 27,025/ Per Person")
//    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table3.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Diving = data4[indexPath.row]
        let cell2 = table3.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! Custom2TableViewCell
        cell2.label2.text = Diving.title
        cell2.label4.text = Diving.location
        cell2.label6.text = Diving.Height
        cell2.label8.text = Diving.cost
        cell2.iconImageView.layer.cornerRadius = 20.0
        cell2.iconImageView.image = UIImage(named: Diving.imageName)
        return cell2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data4.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    @IBAction func Btn_URL3(_ sender: UIButton) {
        guard let url = URL(string: "https://www.holidify.com/pages/skydiving-in-india-379.html") else { return }

        // Create the WebViewController instance
        let webVC = WebViewController()
        webVC.urlToLoad = url

        // Embed in a navigation controller for the "Done" button
        let navController = UINavigationController(rootViewController: webVC)
        self.present(navController, animated: true, completion: nil)
    }
}
