//
//  MyCollectionCell.swift
//  uploadcopy
//
//  Created by User@Param on 13/11/24.
//

import UIKit

class MyCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var myScroll: UIImageView!
    @IBOutlet weak var selectLabel: UILabel!
    
    // This property controls the display of the selection indicator
    var isEditing: Bool = false {
        didSet {
            // Show or hide the select label based on editing mode
            selectLabel.isHidden = !isEditing
        }
    }
    
    override var isSelected: Bool {
        didSet {
            // Update the select label based on selection status if in editing mode
            if isEditing {
                selectLabel.text = isSelected ? "✔︎" : ""
            } else {
                selectLabel.text = "" // Clear selection indicator if not in editing mode
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Customize the select label appearance
        selectLabel.layer.cornerRadius = 15
        selectLabel.layer.masksToBounds = true
        selectLabel.layer.borderColor = UIColor.white.cgColor
        selectLabel.layer.borderWidth = 1.0
        selectLabel.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.7)
        selectLabel.textColor = UIColor.white
        selectLabel.textAlignment = .center
        selectLabel.isHidden = true // Initially hidden until editing mode is enabled
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        // Reset selection indicator for cell reuse
        selectLabel.isHidden = !isEditing
        selectLabel.text = ""
    }
}

