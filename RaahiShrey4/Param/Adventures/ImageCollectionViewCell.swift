//
//  ImageCollectionViewCell.swift
//  CustomTableView
//
//  Created by User@Param on 17/11/24.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var adsImage: UIImageView!
    override func awakeFromNib() {
            super.awakeFromNib()
            // Add corner radius to the UIImageView
            adsImage.layer.cornerRadius = 10  // Adjust this value as needed
            adsImage.clipsToBounds = true  // Ensures the image is clipped to the corner
        }
}
