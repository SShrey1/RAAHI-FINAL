//
//  ViewController.swift
//  RAAHI
//
//  Created by admin3 on 23/10/24.
//

import UIKit

class SplashViewController: UIViewController {

    //  @IBOutlet weak var splashLabel: UILabel!
    
      //  @IBOutlet weak var splashSubHeading: UILabel!
    
    
    @IBOutlet weak var collectionView1: UICollectionView!
    
    @IBOutlet weak var collectionView2: UICollectionView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var backgroundView: UIView?
    var popupView: UIView?
    
    
    @IBAction func addButton(_ sender: UIButton) {
        showSaveItineraryPopup()
    }
    
    func showSaveItineraryPopup() {
            // Remove any existing pop-up to avoid duplicates
            backgroundView?.removeFromSuperview()
            popupView?.removeFromSuperview()

            // Create a semi-transparent background view that covers the entire screen
            backgroundView = UIView(frame: self.view.bounds)
            backgroundView?.backgroundColor = UIColor.black.withAlphaComponent(0.5)
            backgroundView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.view.addSubview(backgroundView!)

            // Create the main pop-up view in the center of the screen
            popupView = UIView()
            popupView?.backgroundColor = UIColor.white
            popupView?.layer.cornerRadius = 12
            popupView?.translatesAutoresizingMaskIntoConstraints = false
            backgroundView?.addSubview(popupView!)

            // Add the title label to the pop-up
            let titleLabel = UILabel()
            titleLabel.text = "Where do you want to save this itinerary?"
            titleLabel.textAlignment = .center
            titleLabel.numberOfLines = 0
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            popupView?.addSubview(titleLabel)

            // Add the "My Itinerary" button
            let itineraryButton = UIButton(type: .system)
            itineraryButton.setTitle("My Itinerary", for: .normal)
            itineraryButton.addTarget(self, action: #selector(saveToMyItinerary), for: .touchUpInside)
            itineraryButton.translatesAutoresizingMaskIntoConstraints = false
            popupView?.addSubview(itineraryButton)

            // Constraints for popupView to center it in the backgroundView
            NSLayoutConstraint.activate([
                popupView!.centerXAnchor.constraint(equalTo: backgroundView!.centerXAnchor),
                popupView!.centerYAnchor.constraint(equalTo: backgroundView!.centerYAnchor),
                popupView!.widthAnchor.constraint(equalToConstant: 280),
                popupView!.heightAnchor.constraint(equalToConstant: 130),

                // Constraints for titleLabel within the pop-up
                titleLabel.topAnchor.constraint(equalTo: popupView!.topAnchor, constant: 16),
                titleLabel.leadingAnchor.constraint(equalTo: popupView!.leadingAnchor, constant: 16),
                titleLabel.trailingAnchor.constraint(equalTo: popupView!.trailingAnchor, constant: -16),

                // Constraints for itineraryButton within the pop-up
                itineraryButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
                itineraryButton.centerXAnchor.constraint(equalTo: popupView!.centerXAnchor),
                itineraryButton.bottomAnchor.constraint(equalTo: popupView!.bottomAnchor, constant: -16)
            ])
        }
    @objc func saveToMyItinerary() {
            // Dismiss the pop-up
            backgroundView?.removeFromSuperview()
            
            // Your logic to save the itinerary
            print("Itinerary saved to 'My Itinerary'")
        }
    
    
    
    var images: [String] = [
        "image 223","image 224","image 225","image 226","image 227","image 228"]
    
    var title1: [String] = [
        "Marina Beach","Covelong Beach","Elliot's Beach","Wild Tribe Ranch","Off-Road Sports","Dizzee World"]
    
    var title2: [String] = [
        "6:00 AM – 7:00 AM","10:00 AM – 11:30 AM","12:00 PM – 1:00 PM","2:00 PM – 3:30 PM","4:00 PM – 5:30 PM","6:00 PM – 7:30 PM"]
    
    var images2: [String] = [
        "image 228","image 227","image 226","image 225","image 224","image 223"]
    
    var title3: [String] = [
        "Dizzee World","Off-Road Sports","Wild Tribe Ranch","Elliot's Beach","Covelong Beach","Marina Beach"]
    
    var title4: [String] = [
        "6:00 AM – 7:00 AM","10:00 AM – 11:30 AM","12:00 PM – 1:00 PM","2:00 PM – 3:30 PM","4:00 PM – 5:30 PM","6:00 PM – 7:30 PM"]
        

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView1.collectionViewLayout = UICollectionViewFlowLayout()
        // Do any additional setup after loading the view.
        
        collectionView2.isHidden = true
        collectionView2.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView2.delegate = self
        collectionView2.dataSource = self
    }
    
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            collectionView1.isHidden = false
            collectionView2.isHidden = true
        }
        
        else {
            collectionView1.isHidden = true
            collectionView2.isHidden = false
        }
    }
    
}

extension SplashViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView1 {
            return title1.count
        } else {
            return title3.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionView1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AiBasedItinerary", for: indexPath) as! CollectionViewCell
            
            //cell.backgroundColor = UIColor.lightGray
            cell.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 20
            cell.layer.borderColor = UIColor.clear.cgColor
            //cell.layer.borderColor = UIColor.white.cgColor
            
            cell.aiLabel1.text = title1[indexPath.row]
            cell.aiLabel2.text = title2[indexPath.row]
            cell.aiimage.image = UIImage(named: images[indexPath.row])
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Day2CollectionViewCell", for: indexPath) as! Day2CollectionViewCell
            cell.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 20
            cell.layer.borderColor = UIColor.clear.cgColor
            
            cell.label1.text = title3[indexPath.row]
            cell.label2.text = title4[indexPath.row]
            cell.image1.image = UIImage(named: images2[indexPath.row])
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionView1 {
            let width = collectionView.frame.width - 20
                   return CGSize(width: width, height: width * 0.3)
        } else {
            let width = collectionView.frame.width - 20
                   return CGSize(width: width, height: width * 0.3)
        }
        
    }
    
}

