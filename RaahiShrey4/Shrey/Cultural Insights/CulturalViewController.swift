//
//  CulturalViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 21/08/1946 Saka.
//

import UIKit

class CulturalViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var CulturalLabel: UILabel!
    @IBOutlet weak var CityLabel: UILabel!
    @IBOutlet weak var adventureImage: UIImageView!
    @IBOutlet weak var advenLabel: UILabel!
    @IBOutlet weak var monImage: UIImageView!
    @IBOutlet weak var monLabel: UILabel!
    @IBOutlet weak var beachImage: UIImageView!
    @IBOutlet weak var beachesLabel: UILabel!
    @IBOutlet weak var shrineaImage: UIImageView!
    @IBOutlet weak var shrinesLabel: UILabel!
    
  //  @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    @IBOutlet weak var insightsSearchBar: UISearchBar!
    
    
    @IBOutlet weak var insightsCollectionView: UICollectionView!
    
    @IBOutlet weak var createTripButton: UIButton!
    
    var searchedInsites : [Insite] = insites
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
//        categoriesCollectionView.delegate = self
//        categoriesCollectionView.dataSource = self
//        categoriesCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
//        if let layout = categoriesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//                layout.scrollDirection = .horizontal
//            }
        
        insightsCollectionView.delegate = self
        insightsCollectionView.dataSource = self
        insightsCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        insightsSearchBar.delegate = self
        
        setupImageTapGestures()
        
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(resetToShowAllItems))
//        tapGesture.cancelsTouchesInView = false
//        view.addGestureRecognizer(tapGesture)
        
        
    }
    
func setupImageTapGestures() {
        let adventureTapGesture = UITapGestureRecognizer(target: self, action: #selector(filterByAdventure))
    adventureImage.isUserInteractionEnabled = true
    adventureImage.addGestureRecognizer(adventureTapGesture)
    
    let monumentsTapGesture = UITapGestureRecognizer(target: self, action: #selector(filterByMonuments))
    monImage.isUserInteractionEnabled = true
    monImage.addGestureRecognizer(monumentsTapGesture)
    
    let beachesTapGesture = UITapGestureRecognizer(target: self, action: #selector(filterByBeaches))
    beachImage.isUserInteractionEnabled = true
    beachImage.addGestureRecognizer(beachesTapGesture)
    
    let shrinesTapGesture = UITapGestureRecognizer(target: self, action: #selector(filterByShrines))
    shrineaImage.isUserInteractionEnabled = true
    shrineaImage.addGestureRecognizer(shrinesTapGesture)
    
    }
    
    @objc func filterByAdventure() {
        filterCollectionView(by : "Adventure")
    }
    
    @objc func filterByMonuments() {
        filterCollectionView(by : "Monuments")
    }
    
    @objc func filterByBeaches() {
        filterCollectionView(by : "Beaches")
    }
    
    @objc func filterByShrines() {
        filterCollectionView(by : "Shrines")
    }
    
//    @objc func resetToShowAllItems(){
//        searchedInsites = insites
//        insightsCollectionView.reloadData()
//    }
    func filterCollectionView(by type: String) {
        searchedInsites = insites.filter { $0.type == type }
        insightsCollectionView.reloadData()
            
        }
    
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchedInsites = insites
        } else {
            searchedInsites = insites.filter { insite in
                
                insite.title.lowercased().contains(searchText.lowercased())
                
            }
        }
        
        insightsCollectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchedInsites = insites
        searchBar.text = ""
        insightsCollectionView.reloadData()
    }
    
    
    
    
}


extension CulturalViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if collectionView == categoriesCollectionView {
//            return selections.count
//        } else {
            return searchedInsites.count
//        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if collectionView == categoriesCollectionView {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
//            cell.setup(with: selections[indexPath.row])
//            return cell
//        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InsightsCollectionViewCell", for: indexPath) as! InsightsCollectionViewCell
            cell.setup3(with: searchedInsites[indexPath.row])
            return cell
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == categoriesCollectionView {
//            return CGSize(width: 70, height: 100)
//        }
//        else {
            return CGSize(width: 175 , height: 226)
//        }
    }
    
    

    
    
    
}


