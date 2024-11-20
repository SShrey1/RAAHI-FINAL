
import UIKit

final class LandscapeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTitleLbl: UILabel!
    
    func setup(_ item: ListItem) {
            // Set the image and title
            cellImageView.image = UIImage(named: item.image)
            cellTitleLbl.text = item.title
            
            // Ensure the corner radius is applied correctly
            cellImageView.layer.cornerRadius = 5  // Set desired corner radius
            cellImageView.layer.masksToBounds = true // Ensures the corners are clipped
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            // Apply corner radius to the entire cell if needed
            contentView.layer.cornerRadius = 25
            contentView.layer.masksToBounds = true
        }
    }
