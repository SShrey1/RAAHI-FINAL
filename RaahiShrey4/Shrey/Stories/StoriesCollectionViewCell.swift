//
//  StoriesCollectionViewCell.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var StoryImage: UIImageView!
    @IBOutlet weak var StoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        StoryImage.layer.cornerRadius = StoryImage.frame.height / 2
        StoryImage.clipsToBounds = true
    }
    
    func setup(with story : Story) {
        StoryImage.image = story.image
        StoryTitle.text = story.title
        
    }
    
}
