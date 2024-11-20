//
//  Cities3CollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class Cities3CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var CityLabel: UILabel!
    
    @IBOutlet weak var CityView: UIView!
    
    func setup(with city3 : City3) {
        CityLabel.text = city3.title
    }
    
}
