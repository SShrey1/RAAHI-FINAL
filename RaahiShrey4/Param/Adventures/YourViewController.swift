//
//  YourViewController.swift
//  CustomTableView
//
//  Created by User@Param on 05/11/24.
//

import UIKit
import AVFoundation
import Photos
import PhotosUI

class YourViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, PHPickerViewControllerDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myView1: UIView!
    
    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    @IBAction func EditPostButton(_ sender: Any) {
    }
    
    
    
    
    
    
    @IBAction func camera(_ sender: Any) {
        openCamera()
    }
    
    @IBAction func Photos(_ sender: Any) {
        openPhotoGallery()
    }
    var imageArray = ["pahadi1","pahadi2","pahadi3","pahadi4"]
    var index = 0
    var timer: Timer?

    func openCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let pickerController = UIImagePickerController()
            pickerController.delegate = self
            pickerController.sourceType = .camera
            pickerController.allowsEditing = true
            self.present(pickerController, animated: true, completion: nil) // Use self to present
        } else {
            print("Camera is not available on this device.")
        }
    }

    func openPhotoGallery() {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 0  // Set to 0 for unlimited selection, or a specific number for a limit
        configuration.filter = .images  // Only show images in the picker
        
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }

    // Called when an image or video is selected from the photo gallery
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true, completion: nil)
        
        var selectedImages: [UIImage] = []
        
        for result in results {
            if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
                result.itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
                    if let image = image as? UIImage {
                        DispatchQueue.main.async {
                            selectedImages.append(image)
                            // Add selected images to the array
                            // Add image names or data if needed
                              // Reload the collection view to show selected images
                        }
                    }
                }
            }
        }
    }

    // Called when the user cancels the picker
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

    // Called when an image is picked from the camera
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] as? UIImage {
            print("Image selected: \(image)")
            // Handle the selected image (e.g., display it in an UIImageView or add to the collection view)
            
            // If you want to store the image or add it to the collection view
             // You can store actual images or image names
              // Reload the collection view to show the newly added image
        }
        picker.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        MyCollectionView.layer.cornerRadius = 10 // Set to your desired radius
        MyCollectionView.layer.masksToBounds = true

        MyCollectionView.delegate = self
        MyCollectionView.dataSource = self
        
        

                // Schedule the timer
                timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollingsetup), userInfo: nil, repeats: true)}
    @objc func scrollingsetup() {
        if index < imageArray.count - 1 {
            index += 1
        } else {
            index = 0
        }
        MyCollectionView.scrollToItem(at: IndexPath(item: index, section: 0), at: .centeredHorizontally, animated: true)
        
        
        // Apply corner radius
        myView.layer.cornerRadius = 10
        myView1.layer.cornerRadius = 10
        myView.layer.masksToBounds = true
        
        // Ensure the view is visible
        myView.isHidden = false
        myView1.isHidden = false
        view.bringSubviewToFront(myView)
        view.bringSubviewToFront(myView1)
    }

    
    @objc func buttonTapped() {
        print("Button was tapped!")
    }
    @objc(collectionView:cellForItemAtIndexPath:) internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Dequeue the cell using its identifier
        let cell =
        collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as? ImageCollectionViewCell
        
        // Set the image in the cell
        cell?.adsImage.image = UIImage(named: imageArray[indexPath.row])
        
        return cell!
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Make the cell size equal to the collection view's dimensions
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }

    
}
    

    
