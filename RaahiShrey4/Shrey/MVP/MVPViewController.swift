//
//  MVPViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 18/08/1946 Saka.
//

import UIKit

class MVPViewController: UIViewController {
    
    

    
    @IBOutlet weak var pages: UIPageControl!
    

    @IBOutlet weak var mvpCollectionView: UICollectionView!
    
    
    @IBOutlet weak var mvpCelebrationsLabel: UILabel!
    
    @IBOutlet weak var diaryCollectionView: UICollectionView!
    
    
    var ImgArray = ["DurgaPuja", "BookFair", "Chhahu1", "Boisakh", "Poish"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diaryCollectionView.delegate = self
        diaryCollectionView.dataSource = self
        diaryCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollinSetUp), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func scrollinSetUp() {
        if index < ImgArray.count - 1 {
            index = index + 1
        } else {
            index = 0
        }
        pages.numberOfPages = ImgArray.count
        pages.currentPage = index
        mvpCollectionView.scrollToItem(at: IndexPath(item: index, section: 0), at: .right, animated: true)
    }
}


extension MVPViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == mvpCollectionView {
            return ImgArray.count
        } else {
            return diaries.count
        }
            
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mvpCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MVPCollectionViewCell", for: indexPath) as? MVPCollectionViewCell
            cell?.festiveImageView.image = UIImage(named: ImgArray[indexPath.row])
            cell?.layer.borderWidth = 1
            cell?.layer.borderColor = UIColor.white.cgColor
            cell?.layer.cornerRadius = 20
            return cell!
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiaryCollectionViewCell", for: indexPath) as? DiaryCollectionViewCell
            cell?.configure(with: diaries[indexPath.row])
            return cell!
        }
            
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == mvpCollectionView {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        } else {
            return CGSize(width: collectionView.frame.width / 2.1, height: 300 )
        }
            
        
    }
    
}
