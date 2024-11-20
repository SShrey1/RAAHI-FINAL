
import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var profileButton: UIButton!
    
    private let sections = MockData.shared.pageData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.collectionViewLayout = createLayout()
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
            guard let self = self else { return nil }
            let section = self.sections[sectionIndex]
            switch section {
            case .trending:
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(160), heightDimension: .absolute(204)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.interGroupSpacing = 10
                section.contentInsets = .init(top: 0, leading: 10, bottom: 10, trailing: 7)
                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
                section.supplementariesFollowContentInsets = false
                return section
            case .adventure:
                        let item = NSCollectionLayoutItem(
                            layoutSize: .init(
                                widthDimension: .fractionalWidth(1),
                                heightDimension: .fractionalHeight(1)
                            )
                        )
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(
                        widthDimension: .absolute(110),  // Match the width
                        heightDimension: .absolute(110)  // Make it square for circular images
                    ),
                    subitems: [item]
                )
                        let section = NSCollectionLayoutSection(group: group)
                        section.orthogonalScrollingBehavior = .continuous  // Match scrolling behavior
                        section.interGroupSpacing = 0
                        section.contentInsets = .init(top: 0, leading: 0, bottom: 10, trailing: 7)  // Match margins
                        section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
                        section.supplementariesFollowContentInsets = false
                return section
    
            case .diary:
                let item = NSCollectionLayoutItem(
                    layoutSize: .init(
                        widthDimension: .fractionalWidth(1),  // Each item fills the group
                        heightDimension: .fractionalHeight(1) // Full height of the group
                    )
                )
                
                // Group containing two items in a row
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(
                        widthDimension: .fractionalWidth(1),  // Group width matches the section width
                        heightDimension: .absolute(215)       // Fixed height for the cards
                    ),
                    subitem: item,
                    count: 2 // Two items side by side
                )
                group.interItemSpacing = .fixed(10)  // Spacing between items within a row
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10  // Vertical spacing between rows
                section.contentInsets = .init(top: 10, leading: 10, bottom: 10, trailing: 5)  // Padding around the section
                
                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
                section.supplementariesFollowContentInsets = false
                return section

            }
        }
    }
    
    private func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
        .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }
}

extension HomePageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch sections[indexPath.section] {
        case .trending(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! Story2CollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case .adventure(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PortraitCollectionViewCell", for: indexPath) as! PortraitCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case .diary(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandscapeCollectionViewCell", for: indexPath) as! LandscapeCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewHeaderReusableView", for: indexPath) as! CollectionViewHeaderReusableView
            header.setup(sections[indexPath.section].title)
            return header
        default:
            return UICollectionReusableView()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            switch sections[indexPath.section] {
            case .adventure(let items):
                let selectedItem = items[indexPath.row]
                var viewController: UIViewController?
                
                switch selectedItem.title {
                case "Trekking":
                    viewController = storyboard?.instantiateViewController(withIdentifier: "RaftingViewController")
                case "Safari":
                    viewController = storyboard?.instantiateViewController(withIdentifier: "NationalParkViewController")
                case "Bungee":
                    viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController4")
                case "Rafting":
                    viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController2")
                case "Sky Diving":
                    viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController3")
                default:
                    break
                }
                
                if let viewController = viewController {
                    navigationController?.pushViewController(viewController, animated: true)
                }
                
            default:
                break
            }
        }
}
