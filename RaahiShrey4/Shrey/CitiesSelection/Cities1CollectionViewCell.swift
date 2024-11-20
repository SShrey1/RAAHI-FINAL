//
//  Cities1CollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 25/08/1946 Saka.
//

import UIKit

class Cities1CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var CityImage: UIImageView!
    @IBOutlet weak var CityLabel: UILabel!
    
    func setup(with city1 : City1){
        CityLabel.text = city1.title
        CityImage.image = city1.image
        
//        CityImage.layer.cornerRadius = CityImage.frame.height / 3
//        CityImage.clipsToBounds = true
    }
    
}


