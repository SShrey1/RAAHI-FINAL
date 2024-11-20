//
//  ItineraryTableViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 18/08/1946 Saka.
//

import UIKit

class ItineraryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var itineraryImageView: UIImageView!
    
    @IBOutlet weak var itineraryTitleLabel: UILabel!
    
    @IBOutlet weak var itineraryTypeLabel: UILabel!
    
    @IBOutlet weak var itineraryStatusLabel: UILabel!
    
    @IBOutlet weak var arrowImageView: UIImageView!
    
    @IBOutlet weak var itinerayCardView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        itinerayCardView.layer.cornerRadius = 10
        itinerayCardView.layer.shadowColor = UIColor.systemGray.cgColor
        itinerayCardView.layer.shadowOpacity = 0.2
        itinerayCardView.layer.shadowOffset = CGSize(width: 0, height: 2)
        itinerayCardView.layer.shadowRadius = 4
        
        itineraryImageView.layer.cornerRadius = 20
        itineraryImageView.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
