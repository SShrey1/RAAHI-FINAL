import UIKit

class PreviewViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var descrp: UITextField!
    @IBOutlet weak var caption: UITextField!
    
    
//    var scrollImages: [String] = ["g1", "g2", "g3", "g4"]
//    var selectedImages = Set<IndexPath>()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        setupUI()
//        setupCollectionView()
//        setupSearchBar()
//    }
//    
//    // MARK: - Setup Methods
//    private func setupUI() {
//        caption.layer.cornerRadius = 10
//        descrp.layer.cornerRadius = 10
//        navigationItem.rightBarButtonItem = editButtonItem
//    }
//    
//    private func setupCollectionView() {
//        collectionView.delegate = self
//        collectionView.dataSource = self
//    }
//    
//    private func setupSearchBar() {
//        searchBar.delegate = self
//    }
//    
//    // MARK: - Log Input Data to Debug Console
//    @IBAction func logInputData(_ sender: UIButton) {
//        let searchText = searchBar.text ?? "No search text entered"
//        let captionText = caption.text ?? "No caption text entered"
//        let descrpText = descrp.text ?? "No description text entered"
//        
//        print("Search Bar Text: \(searchText)")
//        print("Caption Text: \(captionText)")
//        print("Description Text: \(descrpText)")
//    }
//    
//    // MARK: - Edit Mode Toggle
//    override func setEditing(_ editing: Bool, animated: Bool) {
//        super.setEditing(editing, animated: animated)
//        collectionView.allowsMultipleSelection = editing
//        
//        // Update cells to show selection indicators if in edit mode
//        collectionView.indexPathsForVisibleItems.forEach { indexPath in
//            if let cell = collectionView.cellForItem(at: indexPath) as? MyCollectionCell {
//                cell.isEditing = editing
//            }
//        }
//        
//        // Clear selected images when exiting edit mode
//        if !editing {
//            selectedImages.removeAll()
//            collectionView.reloadData()
//        }
//    }
//    
//    // MARK: - UICollectionViewDataSource
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return scrollImages.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionCell
//        cell.myScroll.image = UIImage(named: scrollImages[indexPath.row])
//        cell.myScroll.layer.cornerRadius = 30
//        cell.isEditing = isEditing
//        return cell
//    }
//    
//    // MARK: - UICollectionViewDelegate
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if isEditing {
//            selectedImages.insert(indexPath)
//        } else {
//            let selectedData = scrollImages[indexPath.item]
//            performSegue(withIdentifier: "detail", sender: selectedData)
//        }
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        if isEditing {
//            selectedImages.remove(indexPath)
//        }
//    }
//    
//    // MARK: - Delete Selected Images
//    @IBAction func deleteSelectedImages(_ sender: Any) {
//        
//        guard isEditing, !selectedImages.isEmpty else { return }
//        
//        // Sort indices to avoid shifting issues when deleting
//        let indicesToDelete = selectedImages.sorted(by: { $0.item > $1.item })
//        for indexPath in indicesToDelete {
//            scrollImages.remove(at: indexPath.item)
//        }
//        
//        // Clear selected indices and update collection view
//        selectedImages.removeAll()
//        collectionView.deleteItems(at: indicesToDelete)
//    }
//    
//    // MARK: - UISearchBarDelegate
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        // Print search bar text when the search button is clicked
//        if let searchText = searchBar.text {
//            print("Search Text Entered: \(searchText)")
//        }
//        searchBar.resignFirstResponder() // Dismiss the keyboard
//    }
//}


    var scrollImages: [String] = ["g1", "g2", "g3", "g4"]
    var selectedImages = Set<IndexPath>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Assuming you have a UIButton to trigger this action
        
        setupUI()
        setupCollectionView()
        setupSearchBar()
    }
    
    // MARK: - Setup Methods
    private func setupUI() {
        caption.layer.cornerRadius = 10
        descrp.layer.cornerRadius = 10
        navigationItem.rightBarButtonItem = editButtonItem
    }
    
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func setupSearchBar() {
        searchBar.delegate = self
    }
    
    // MARK: - Log Input Data to Debug Console
    @IBAction func logInputData(_ sender: UIButton) {
        let searchText = searchBar.text ?? "No search text entered"
        let captionText = caption.text ?? "No caption text entered"
        let descrpText = descrp.text ?? "No description text entered"
        
        print("Search Bar Text: \(searchText)")
        print("Caption Text: \(captionText)")
        print("Description Text: \(descrpText)")
    }
    
    // MARK: - Edit Mode Toggle
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        collectionView.allowsMultipleSelection = editing
        
        // Update cells to show selection indicators if in edit mode
        collectionView.indexPathsForVisibleItems.forEach { indexPath in
            if let cell = collectionView.cellForItem(at: indexPath) as? MyCollectionCell {
                cell.isEditing = editing
            }
        }
        
        // Clear selected images when exiting edit mode
        if !editing {
            selectedImages.removeAll()
            collectionView.reloadData()
        }
    }
    
    // MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return scrollImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionCell
        cell.myScroll.image = UIImage(named: scrollImages[indexPath.row])
        cell.myScroll.layer.cornerRadius = 30
        cell.isEditing = isEditing
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if isEditing {
            selectedImages.insert(indexPath)
        } else {
            let selectedData = scrollImages[indexPath.item]
            performSegue(withIdentifier: "detail", sender: selectedData)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if isEditing {
            selectedImages.remove(indexPath)
        }
    }
    
    // MARK: - Delete Selected Images
    @IBAction func deleteSelectedImages(_ sender: Any) {
        
        guard isEditing, !selectedImages.isEmpty else { return }
        
        // Sort indices to avoid shifting issues when deleting
        let indicesToDelete = selectedImages.sorted(by: { $0.item > $1.item })
        for indexPath in indicesToDelete {
            scrollImages.remove(at: indexPath.item)
        }
        
        // Clear selected indices and update collection view
        selectedImages.removeAll()
        collectionView.deleteItems(at: indicesToDelete)
    }
    
    // MARK: - UISearchBarDelegate
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // Print search bar text when the search button is clicked
        if let searchText = searchBar.text {
            print("Search Text Entered: \(searchText)")
        }
        searchBar.resignFirstResponder() // Dismiss the keyboard
    }
    
    @IBAction func shareButtonClicked(_ sender: Any) {
        // Create the alert controller with title and message
        let alert = UIAlertController(
            title: "Story Shared Successfully !",
            message: "Your story has been uploaded. Check your profile for more details.",
            preferredStyle: .alert
        )
        
        // Style the alert (this is optional, but helps with customization)
        alert.view.layer.cornerRadius = 15
        alert.view.layer.masksToBounds = true

        // Add a confirmation action with a modern style
        let okAction = UIAlertAction(title: "Got it!", style: .default, handler: nil)
        
        // Customize the action button (you can change the color and other attributes)
        okAction.setValue(UIColor.systemBlue, forKey: "titleTextColor")

        // Add the action to the alert
        alert.addAction(okAction)
        
        // Present the alert
        self.present(alert, animated: true, completion: nil)
        
        // Automatically dismiss PreviewViewController after 5 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            // Dismiss the current view controller (PreviewViewController)
            self.dismiss(animated: true, completion: nil)
        }
    }

           
        }
