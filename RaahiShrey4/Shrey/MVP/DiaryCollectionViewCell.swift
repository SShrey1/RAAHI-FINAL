//
//  DiaryCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 18/08/1946 Saka.
//

import UIKit

class DiaryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userDiaryImageView: UIImageView!
    
    @IBOutlet weak var userDiaryLocationLabel: UILabel!
    
    
    @IBOutlet weak var userDiaryCaptionLabel: UILabel!
    
    
    @IBOutlet weak var userDiaryNameLabel: UILabel!
    
    @IBOutlet weak var userDiaryBackgroundView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    func configure(with diary: Diary) {
        userDiaryImageView.image = diary.image
        userDiaryLocationLabel.text = diary.location
        userDiaryCaptionLabel.text = diary.caption
        userDiaryNameLabel.text = diary.name
        
        
        userDiaryBackgroundView.layer.cornerRadius = 20
        userDiaryBackgroundView.layer.masksToBounds = false
        /*
        userDiaryBackgroundView.layer.shadowColor = UIColor.black.cgColor
        userDiaryBackgroundView.layer.shadowOpacity = 0.2
        userDiaryBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
        userDiaryBackgroundView.layer.shadowRadius = 4
         */
        
        userDiaryImageView.layer.cornerRadius = 20
        userDiaryImageView.layer.masksToBounds = true
    }
    
}
