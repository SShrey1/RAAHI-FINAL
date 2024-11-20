//
//  Categories3CollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class Categories3CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var CatImage: UIImageView!
    
    @IBOutlet weak var CatLabel: UILabel!
    
    func setup(with selection : Selection) {
        CatImage.image = selection.image
        CatLabel.text = selection.title
        
        
    }
}
