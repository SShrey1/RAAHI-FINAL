//
//  ExtraViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 22/08/1946 Saka.
//

import UIKit

class ExtraViewController: UIViewController {
    
    
    @IBOutlet weak var extraCollectionView: UICollectionView!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        
        extraCollectionView.delegate = self
        extraCollectionView.dataSource = self
        extraCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
//        if let layout = extraCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//                    layout.scrollDirection = .horizontal // Set scroll direction to horizontal
//                    layout.minimumLineSpacing = 10 // Adjust the space between cells
//                    layout.itemSize = CGSize(width: 120, height: 120) // Set your desired item size
//                }
        
        }
}

extension ExtraViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cities.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "extraCollectionViewCell", for: indexPath) as! extraCollectionViewCell
            cell.extra(with: cities[indexPath.row])
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "extraCollectionViewCell2", for: indexPath) as! extraCollectionViewCell2
            cell.extra2(with: cities[indexPath.row])
            return cell
            
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            let height = collectionView.frame.height / 4
            return CGSize(width: collectionView.frame.width, height: height)
                    } else {
                        
                        let height = (collectionView.frame.height * 2) / 3
                        return CGSize(width: collectionView.frame.width, height: height)
                    
        }
        
    }
    
    
    
}
