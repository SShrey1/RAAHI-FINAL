
import UIKit

final class Story2CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    
    func setup(_ item: ListItem) {
        cellImageView.image = UIImage(named: item.image)
        cellImageView.layoutIfNeeded()
        let cornerRadius = cellImageView.frame.height / 7
        cellImageView.layer.cornerRadius = cornerRadius
        cellImageView.clipsToBounds = true
        //cellImageView.layer.cornerRadius = cellImageView.frame.height / 2
    }
}
