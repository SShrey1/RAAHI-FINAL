//
//  ViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 05/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var itineraryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        itineraryTableView.isHidden = true
        itineraryTableView.dataSource = self
        itineraryTableView.delegate = self
        itineraryTableView.separatorInset = .init(top: 10, left: 0, bottom: 0, right: 0)
        
    }
    
    @IBAction func editProfileButton(_ sender: UIButton) {
        
//        performSegue(withIdentifier: "EditProfile", sender: nil)
        let profileVC = ProfileViewController()
        profileVC.modalPresentationStyle = .popover
        self.present(profileVC, animated: true, completion: nil)
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            collectionView.isHidden = false
            itineraryTableView.isHidden = true
        }
        else
        {
            collectionView.isHidden = true
            itineraryTableView.isHidden = false
        }
    }
    
}

// Collection View extension in view controller

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cities.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionViewCell", for: indexPath) as! ProfileCollectionViewCell
        cell.setup(with: cities[indexPath.row])
        return cell
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 180)
    }
}

extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(cities[indexPath.row].title)
    }
}

// Table View extension in view controller

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return itineraries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItineraryCell", for: indexPath) as! ItineraryTableViewCell
        let itinerary = itineraries[indexPath.row]
        
        cell.itineraryTitleLabel.text = itinerary.title
        cell.itineraryTypeLabel.text = "Itinerary - " + (itinerary.title.contains("AI") ? "AI" : "Manual")
        cell.itineraryStatusLabel.text = itinerary.status
        
        cell.itineraryImageView.image = itinerary.image
        cell.arrowImageView.image = UIImage(systemName: "chevron.right")
        
        cell.itineraryStatusLabel.textColor = itinerary.status == "Visited" ? UIColor.green : UIColor.red
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }

    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        print("User logged out")
        
        redirectToLogin()
        
    }
    
    func redirectToLogin() {
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .popover
        present(loginVC, animated: true, completion: nil)
    }
    
    
}


