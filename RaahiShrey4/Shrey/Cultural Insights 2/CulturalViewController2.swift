//
//  CulturalViewController2.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class CulturalViewController2: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = createCompositionalLayout()
        
        
    }
    
    private func createCompositionalLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnvironment in
            if sectionIndex == 0 {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(89), heightDimension: .absolute(100))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(89), heightDimension: .absolute(100))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
                section.interGroupSpacing = 10
                return section
            } else {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(200), heightDimension: .absolute(300))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(200), heightDimension: .absolute(300))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0)
                return section
            }
            
        }
        
        return layout
    }
    
}
    
    extension CulturalViewController2: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 2
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if section == 0 {
                return selections.count
            } else {
                return insites.count
            }
            
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if indexPath.section == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Categories3CollectionViewCell", for: indexPath) as! Categories3CollectionViewCell
                cell.setup(with: selections[indexPath.row])
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Insights3CollectionViewCell", for: indexPath) as! Insights3CollectionViewCell
                cell.setup3(with: insites[indexPath.row])
                return cell
            }
        
    }
}
