//
//  StoryViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class StoryViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let stories: [Story] = [
//        Story(image: UIImage(named: "Diary1"), title: "Diary1")!),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = createHorizontalLayout()
        
        
    }
    
    private func createHorizontalLayout() -> UICollectionViewLayout {
            let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(100), heightDimension: .absolute(150))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(100), heightDimension: .absolute(150))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .continuous
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            return UICollectionViewCompositionalLayout(section: section)
        }
}

extension StoryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCollectionViewCell", for: indexPath) as! StoriesCollectionViewCell
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyVC = storyboard?.instantiateViewController(withIdentifier: "SingleStoryViewController") as! SingleStoryViewController
        storyVC.story = stories[indexPath.row]
        navigationController?.pushViewController(storyVC, animated: true)
        
    }
    
}
