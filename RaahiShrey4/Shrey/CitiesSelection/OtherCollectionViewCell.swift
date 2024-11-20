//
//  OtherCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class OtherCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var OtherCitiesLabel: UILabel!
    
    func setup(with other : Other){
        OtherCitiesLabel.text = other.title
    }
    
}
