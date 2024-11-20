//
//  extraCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 22/08/1946 Saka.
//

import UIKit

class extraCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var extraImage: UIImageView!
    
    
    @IBOutlet weak var extraLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        extraImage.layer.cornerRadius = extraImage.frame.size.width/2
        extraImage.layer.masksToBounds = true
    }
    
    func extra(with city : City){
        extraImage.image = city.image
        extraLabel.text = city.title
    }

    
}

