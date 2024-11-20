//
//  ProfileCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 05/11/24.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var CityImageView: UIImageView!
    @IBOutlet weak var CityLabel: UILabel!
    
    @IBOutlet weak var CityView: UIView!
    
    func setup(with city : City){
        CityImageView.image = city.image
        CityLabel.text = city.title
        
        CityView.layer.cornerRadius = 10
        CityView.layer.masksToBounds = false
        CityView.layer.shadowColor = UIColor.systemGray.cgColor
        CityView.layer.shadowOpacity = 0.2
        CityView.layer.shadowOffset = CGSize(width: 0, height: 2)
        CityView.layer.shadowRadius = 4
        
        CityImageView.layer.cornerRadius = 20
        CityImageView.layer.masksToBounds = true
        
//        let path = UIBezierPath(roundedRect: CityImageView.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 20, height: 20))
//        
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        CityImageView.layer.mask = mask
        
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        let path = UIBezierPath(roundedRect: CityImageView.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 20, height: 20))
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        CityImageView.layer.mask = mask
//    }
}
