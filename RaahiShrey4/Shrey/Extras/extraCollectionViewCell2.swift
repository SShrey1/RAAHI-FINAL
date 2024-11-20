//
//  extraCollectionViewCell2.swift
//  RaahiShrey4
//
//  Created by user@59 on 23/08/1946 Saka.
//

import UIKit

class extraCollectionViewCell2: UICollectionViewCell {
    
    @IBOutlet weak var extra2im: UIImageView!
    
    @IBOutlet weak var extra2lb: UILabel!
    
    
    func extra2(with city : City) {
        extra2im.image = city.image
        extra2lb.text = city.title
    }

    
}


