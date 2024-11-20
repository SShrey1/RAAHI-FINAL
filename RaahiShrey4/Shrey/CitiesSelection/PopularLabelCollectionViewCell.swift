//
//  PopularLabelCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 25/08/1946 Saka.
//

import UIKit

class PopularLabelCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var PopularLabel: UILabel!
    
    func setup(with popular : Popular){
        PopularLabel.text = popular.title
    }
    
}
