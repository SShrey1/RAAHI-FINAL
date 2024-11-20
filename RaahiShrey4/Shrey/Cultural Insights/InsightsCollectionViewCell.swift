//
//  InsightsCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 21/08/1946 Saka.
//

import UIKit

class InsightsCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var insiteView: UIView!
    
    @IBOutlet weak var insiteImage: UIImageView!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    func setup3(with insite: Insite) {
        
        insiteImage.image = insite.image
        NameLabel.text = insite.title
        typeLabel.text = insite.type
        priceLabel.text = insite.price
        
        insiteImage.layer.cornerRadius = 20
        insiteImage.layer.masksToBounds = true
        
        insiteView.layer.cornerRadius = 20
        insiteView.layer.masksToBounds = true
        
        
        
        
        
    }
    
}
