//
//  ViewContoller2.swift
//  RAAHI
//
//  Created by admin3 on 28/10/24.
//

import Foundation
import UIKit

class OnBoardingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBAction func addItinerary1(_ sender: Any) {
        if let button = sender as? UIButton {
                // Show the popup with a reference to the button
                showPopup(button: button)
        }
    }
    
    @IBAction func addItinerary2(_ sender: Any) {
        if let button = sender as? UIButton {
                // Show the popup with a reference to the button
                showPopup(button: button)

        }
    }
    
    
    @IBAction func addItinerary3(_ sender: Any) {
        if let button = sender as? UIButton {
                // Show the popup with a reference to the button
                showPopup(button: button)

        }
    }
    
    private func showPopup(button: UIButton) {
        // Create the alert
        let alert = UIAlertController(
            title: "Where do you want to save this itinerary?",
            message: nil,
            preferredStyle: .alert
        )
        
        // Add "My Itinerary" button
        let saveAction = UIAlertAction(title: "My Itinerary", style: .default) { _ in
            // Save the itinerary and update the button
            self.saveToMyItinerary(button: button)
        }
        alert.addAction(saveAction)
        
        // Add a cancel button
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            // Optionally, reset the button's image if cancel is pressed
            // button.setImage(nil, for: .normal) // Uncomment if you want to reset the image on cancel
        }
        alert.addAction(cancelAction)
        
        // Present the alert
        self.present(alert, animated: true, completion: nil)
    }

    @objc private func saveToMyItinerary(button: UIButton) {
        // Logic to save the itinerary
        print("Itinerary saved to 'My Itinerary'")
        
        // Change the button's image to a tick only when "My Itinerary" is selected
        button.setImage(UIImage(named: "tick"), for: .normal)
        button.tintColor = .none // Optional: if your custom image has its own color
        button.isEnabled = false // Disable the button after selection
    }
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var profileName: UILabel!
    
    @IBOutlet weak var profileDescription: UILabel!
    
    
    @IBOutlet weak var itinerarySentence: UILabel!
    
    
    @IBOutlet weak var tableitinerary: UITableView!
    
//    struct userItineraryList{
//        let day: String
//        let title1: String
//        let title2: String
//        let title3: String
//        let image1: String
//        let image2: String
//        let image3: String
//        
//    }
//    
//    let data:[userItineraryList] = [
//        userItineraryList(day: "Day 1", title1: "Virupaksha Temple", title2: "Bazaars of Hampi", title3: "Stone Chariot", image1: "image 229", image2: "image 230", image3: "image 231"),
//        userItineraryList(day: "Day 2", title1: "Vitalia Temple", title2: "Lotus Mahal", title3: "Coracle River Ride", image1: "image 232", image2: "image 234", image3: "image 235"),
//        userItineraryList(day: "Day 3", title1: "Hemkuta Hill", title2: "Underground Shiva Temple", title3: "Jude's Church", image1: "image 236", image2: "image 237", image3: "image 211")
//        
//        
//    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        tableitinerary.dataSource = self
        tableitinerary.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userItinerary = data[indexPath.row]
        let cell = tableitinerary.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.dayLabel.text = userItinerary.day
        cell.iconLabel.text = userItinerary.title1
        cell.iconLabel2.text = userItinerary.title2
        cell.iconLabel3.text = userItinerary.title3
        cell.iconImage.image = UIImage(named: userItinerary.image1)
        cell.iconImage2.image = UIImage(named: userItinerary.image2)
        cell.iconImage3.image = UIImage(named: userItinerary.image3)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
