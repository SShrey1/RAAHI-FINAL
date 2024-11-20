//
//  Cities2CollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 25/08/1946 Saka.
//

import UIKit

class Cities2CollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var City2Image: UIImageView!
    
    @IBOutlet weak var City2Label: UILabel!
    
    
    func setup(with city2 : City2){
        City2Label.text = city2.title
        City2Image.image = city2.image
        
//        City2Image.layer.cornerRadius = City2Image.frame.height / 3
//        City2Image.clipsToBounds = true
    }
    
}
