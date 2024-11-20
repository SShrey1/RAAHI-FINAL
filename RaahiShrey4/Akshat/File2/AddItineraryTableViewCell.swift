//
//  AddItineraryTableViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 29/08/1946 Saka.
//

import UIKit

class AddItineraryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var iconImageView2: UIImageView!
    
    @IBOutlet weak var Title10: UILabel!
    
    
    @IBAction func addButton(_ sender: Any) {
        showPopup(button: sender as! UIButton)
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
            
        }
        alert.addAction(cancelAction)
        
        // Present the alert
        self.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }

    private func saveToMyItinerary(button: UIButton) {
        // Logic to save the itinerary
        print("Itinerary saved to 'My Itinerary'")
        
        // Change the button's image to a tick only when "My Itinerary" is selected
        button.setImage(UIImage(named: "tick"), for: .normal)
        button.tintColor = .none
        button.isEnabled = false
    }
    
}
