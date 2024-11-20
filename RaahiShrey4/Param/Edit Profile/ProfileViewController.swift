//import UIKit
//
//class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    
//    var tableView: UITableView!
//    var isEditingProfile = false
//    
//    // Sample data
//    let personalInfoFields = ["Name", "Email", "Phone", "Date of Birth"]
//    var personalInfoValues = ["Param Patel", "param14@gmail.com", "123-456-7890", "01/01/1990"]
//    
//    let countryFields = ["Country/Region"]
//    var countryValues = ["India"]  // Default country is India
//    let notificationsFields = ["Alerts", "Promotions"]  // Renamed "Flight Alerts" to "Alerts"
//    var notificationsValues = ["On", "Off"]
//    
//    var dateTextField: UITextField?  // To hold the reference of the date text field
//    var datePicker: UIDatePicker?  // Date picker for Date of Birth
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Setup navigation bar
//        navigationItem.title = "Profile"
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(toggleEdit))
//        
//        // Setup table view
//        tableView = UITableView(frame: self.view.bounds, style: .grouped)
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ProfileCell")
//        view.addSubview(tableView)
//        
//        // Set up the table header with profile image and name
//        setupTableHeaderView()
//        
//        // Set up the logout button
//        setupLogoutButton()
//    }
//    
//    // Create the table header with profile image and user name
//    func setupTableHeaderView() {
//        let headerHeight: CGFloat = 200
//        let profileImageSize: CGFloat = 100
//        
//        // Create header view
//        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: headerHeight))
//        headerView.backgroundColor = UIColor.systemGray6
//        
//        // Create and add profile image view
//        let profileImageView = UIImageView()
//        profileImageView.translatesAutoresizingMaskIntoConstraints = false
//        profileImageView.image = UIImage(named: "profile 1") // Add your own image asset or use a placeholder
//        profileImageView.contentMode = .scaleAspectFill
//        profileImageView.layer.cornerRadius = profileImageSize / 2
//        profileImageView.layer.masksToBounds = true
//        profileImageView.layer.borderWidth = 2
//        profileImageView.layer.borderColor = UIColor.white.cgColor
//        
//        // Create and add label for user name
//        let nameLabel = UILabel()
//        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//        nameLabel.text = personalInfoValues[0] // Assuming first value is the user's name
//        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        nameLabel.textAlignment = .center
//        
//        // Add both profile image and name label to the header view
//        headerView.addSubview(profileImageView)
//        headerView.addSubview(nameLabel)
//        
//        // Add constraints for profile image
//        NSLayoutConstraint.activate([
//            profileImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
//            profileImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 20),
//            profileImageView.widthAnchor.constraint(equalToConstant: profileImageSize),
//            profileImageView.heightAnchor.constraint(equalToConstant: profileImageSize),
//            
//            // Add constraints for name label
//            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10),
//            nameLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
//            nameLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor)
//        ])
//        
//        // Set the table view's header view
//        tableView.tableHeaderView = headerView
//    }
//    
//    // Setup logout button at the bottom
//    func setupLogoutButton() {
//        let logoutButton = UIButton(type: .system)
//        
//        // Set the button size with appropriate padding from the screen edges
//        let buttonWidth = view.bounds.width
//        logoutButton.frame = CGRect(x: 20, y: 0, width: buttonWidth, height: 50)  // Setting width with padding of 20 from both sides
//        
//        logoutButton.setTitle("Sign Out", for: .normal)
//        logoutButton.setTitleColor(UIColor.systemBlue, for: .normal)
//        logoutButton.backgroundColor = .white
//        logoutButton.layer.cornerRadius = 10
//        logoutButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
//        
//        // Add action to the button
//        logoutButton.addTarget(self, action: #selector(logout), for: .touchUpInside)
//        
//        // Align button horizontally in the safe area
//        logoutButton.center.x = view.bounds.width / 2  // Ensures the button stays in the center horizontally
//        
//        // Set the vertical position at the bottom with padding
//        logoutButton.frame.origin.y = view.bounds.height - logoutButton.frame.height - 20  // 20 padding from the bottom of the screen
//        
//        // Add the button as the footer view
//        tableView.tableFooterView = logoutButton
//    }
//    
//    // Handle logout action
//    @objc func logout() {
//        // Perform your logout actions (e.g., clear user data, navigate to login screen, etc.)
//        print("User logged out.")
//    }
//    
//    // Toggle Edit Mode
//    @objc func toggleEdit() {
//        isEditingProfile.toggle()
//        tableView.reloadData()
//        
//        // Change Edit/Done button title and color
//        if isEditingProfile {
//            navigationItem.rightBarButtonItem?.title = "Done"
//            navigationItem.rightBarButtonItem?.tintColor = UIColor.systemBlue  // Change text color to blue when in edit mode
//        } else {
//            navigationItem.rightBarButtonItem?.title = "Edit"
//            navigationItem.rightBarButtonItem?.tintColor = UIColor.systemBlue  // Change text color to blue when in normal mode
//        }
//    }
//    
//    // MARK: - TableView Data Source
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0:
//            return personalInfoFields.count
//        case 1:
//            return countryFields.count
//        case 2:
//            return notificationsFields.count
//        default:
//            return 0
//        }
//    }
//    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0:
//            return "Personal Information"
//        case 1:
//            return "Location"
//        case 2:
//            return "Preferences"
//        default:
//            return nil
//        }
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
//        cell.contentView.subviews.forEach { $0.removeFromSuperview() } // Clear any old views in reused cells
//        
//        let fieldNameLabel = UILabel()
//        fieldNameLabel.translatesAutoresizingMaskIntoConstraints = false
//        fieldNameLabel.font = UIFont.systemFont(ofSize: 16)
//        
//        if indexPath.section == 0 {  // Personal info section
//            if indexPath.row == 3 {  // Date of Birth field
//                dateTextField = UITextField()
//                dateTextField?.translatesAutoresizingMaskIntoConstraints = false
//                dateTextField?.textAlignment = .right
//                dateTextField?.isUserInteractionEnabled = isEditingProfile
//                dateTextField?.text = personalInfoValues[indexPath.row]
//                dateTextField?.textColor = isEditingProfile ? UIColor.systemBlue : UIColor.black
//                
//                if datePicker == nil {
//                    datePicker = UIDatePicker()
//                    datePicker?.datePickerMode = .date
//                    datePicker?.addTarget(self, action: #selector(datePickerChanged(_:)), for: .valueChanged)
//                }
//                dateTextField?.inputView = datePicker
//                
//                let toolbar = UIToolbar()
//                toolbar.sizeToFit()
//                let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissDatePicker))
//                toolbar.setItems([doneButton], animated: false)
//                dateTextField?.inputAccessoryView = toolbar
//                
//                fieldNameLabel.text = personalInfoFields[indexPath.row]
//                
//                cell.contentView.addSubview(fieldNameLabel)
//                cell.contentView.addSubview(dateTextField!)
//                
//                NSLayoutConstraint.activate([
//                    fieldNameLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 15),
//                    fieldNameLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
//                    fieldNameLabel.widthAnchor.constraint(equalToConstant: 150),
//                    
//                    dateTextField!.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -15),
//                    dateTextField!.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
//                    dateTextField!.leadingAnchor.constraint(equalTo: fieldNameLabel.trailingAnchor, constant: 10)
//                ])
//            } else {
//                let valueTextField = UITextField()
//                valueTextField.translatesAutoresizingMaskIntoConstraints = false
//                valueTextField.textAlignment = .right
//                valueTextField.isUserInteractionEnabled = isEditingProfile
//                valueTextField.text = personalInfoValues[indexPath.row]
//                valueTextField.textColor = isEditingProfile ? UIColor.systemBlue : UIColor.black
//                
//                if indexPath.row == 1 {  // Email (lock field)
//                    valueTextField.isUserInteractionEnabled = false
//                    valueTextField.textColor = UIColor.gray
//                }
//                
//                fieldNameLabel.text = personalInfoFields[indexPath.row]
//                
//                cell.contentView.addSubview(fieldNameLabel)
//                cell.contentView.addSubview(valueTextField)
//                
//                NSLayoutConstraint.activate([
//                    fieldNameLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 15),
//                    fieldNameLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
//                    fieldNameLabel.widthAnchor.constraint(equalToConstant: 150),
//                    
//                    valueTextField.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -15),
//                    valueTextField.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
//                    valueTextField.leadingAnchor.constraint(equalTo: fieldNameLabel.trailingAnchor, constant: 10)
//                ])
//            }
//        } else if indexPath.section == 1 {  // Country/Region section
//            let countryLabel = UILabel()
//            countryLabel.translatesAutoresizingMaskIntoConstraints = false
//            countryLabel.textAlignment = .right
//            countryLabel.textColor = isEditingProfile ? UIColor.systemBlue : UIColor.black
//            fieldNameLabel.text = countryFields[indexPath.row]
//            countryLabel.text = countryValues[0]  // Default to "India"
//            
//            cell.contentView.addSubview(fieldNameLabel)
//            cell.contentView.addSubview(countryLabel)
//            
//            NSLayoutConstraint.activate([
//                fieldNameLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 15),
//                fieldNameLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
//                
//                countryLabel.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -15),
//                countryLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
//            ])
//        } else if indexPath.section == 2 {  // Notifications section
//            let valueSwitch = UISwitch()
//            valueSwitch.translatesAutoresizingMaskIntoConstraints = false
//            valueSwitch.isOn = notificationsValues[indexPath.row] == "On"
//            valueSwitch.isUserInteractionEnabled = isEditingProfile
//            
//            fieldNameLabel.text = notificationsFields[indexPath.row]
//            cell.contentView.addSubview(fieldNameLabel)
//            cell.contentView.addSubview(valueSwitch)
//            
//            NSLayoutConstraint.activate([
//                fieldNameLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 15),
//                fieldNameLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
//                
//                valueSwitch.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -15),
//                valueSwitch.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
//            ])
//        }
//        
//        return cell
//    }
//    
//    // Dismiss the date picker when Done is pressed
//    @objc func dismissDatePicker() {
//        view.endEditing(true)
//    }
//    
//    // Handle text field changes
//    @objc func textFieldDidChange(_ textField: UITextField) {
//        if let indexPath = tableView.indexPath(for: textField.superview!.superview as! UITableViewCell) {
//            personalInfoValues[indexPath.row] = textField.text ?? ""
//        }
//    }
//    
//    // Handle the date change event from the date picker
//    @objc func datePickerChanged(_ datePicker: UIDatePicker) {
//        if let dateTextField = dateTextField {
//            let formatter = DateFormatter()
//            formatter.dateStyle = .short
//            dateTextField.text = formatter.string(from: datePicker.date)
//            personalInfoValues[3] = dateTextField.text ?? ""
//        }
//    }
//}
//


import UIKit

// Model to hold user data dynamically
struct ProfileData {
    var personalInfo: [String: String]  // Key-value pairs for personal info (e.g., Name, Email)
    var country: String
    var notifications: [String: Bool]  // Key-value pairs for notifications (e.g., Alerts: On)
    var licenseInfo: [String: String]  // New section for license-related info (Privacy Policy, Agreement)
}

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var tableView: UITableView!
    var isEditingProfile = false
    var isEditingMode = false  // This will track whether the user is in edit mode

    
    // Dynamic data
    var profileData = ProfileData(
        personalInfo: ["Name": "Param Patel", "Email": "param14@gmail.com", "Phone": "123-456-7890", "Date of Birth": "01/01/1990"],
        country: "India",
        notifications: ["Alerts": true, "Promotions": false],
        licenseInfo: ["Privacy Policy": "View", "Agreement": "Agree"] // New section data
    )
    
    var dateTextField: UITextField?
    var datePicker: UIDatePicker?
    
    var profileImageView: UIImageView!  // To hold the profile image view
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Setup navigation bar
        navigationItem.title = "Profile"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(toggleEdit))
        
        // Setup table view
        tableView = UITableView(frame: self.view.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ProfileCell")
        view.addSubview(tableView)
        
        // Set up the table header with profile image and name
        setupTableHeaderView()
        
        // Set up the logout button
        setupLogoutButton()
    }
    
    func setupTableHeaderView() {
        let headerHeight: CGFloat = 200
        let profileImageSize: CGFloat = 100
        
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: headerHeight))
        headerView.backgroundColor = UIColor.systemGray6
        
        profileImageView = UIImageView()
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.image = UIImage(named: "profile1") // Placeholder
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = profileImageSize / 2
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = profileData.personalInfo["Name"] // Dynamic name
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textAlignment = .center
        
        // Button for changing profile picture
        let changePhotoButton = UIButton(type: .system)
        changePhotoButton.translatesAutoresizingMaskIntoConstraints = false
        changePhotoButton.setTitle("Change Photo", for: .normal)
        changePhotoButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        changePhotoButton.addTarget(self, action: #selector(changeProfilePhoto), for: .touchUpInside)

        headerView.addSubview(profileImageView)
        headerView.addSubview(nameLabel)
        headerView.addSubview(changePhotoButton)
        
        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: profileImageSize),
            profileImageView.heightAnchor.constraint(equalToConstant: profileImageSize),
            
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            
            changePhotoButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            changePhotoButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor)
        ])
        
        tableView.tableHeaderView = headerView
    }
    
    func setupLogoutButton() {
        let logoutButton = UIButton(type: .system)
        let buttonWidth = view.bounds.width
        logoutButton.frame = CGRect(x: 20, y: 0, width: buttonWidth, height: 50)
        logoutButton.setTitle("Sign Out", for: .normal)
        logoutButton.setTitleColor(UIColor.systemBlue, for: .normal)
        logoutButton.backgroundColor = .white
        logoutButton.layer.cornerRadius = 10
        logoutButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        logoutButton.addTarget(self, action: #selector(logout), for: .touchUpInside)
        logoutButton.center.x = view.bounds.width / 2
        logoutButton.frame.origin.y = view.bounds.height - logoutButton.frame.height - 20
        tableView.tableFooterView = logoutButton
    }
    
    @objc func logout() {
                // Perform the sign-out logic
                signOutAndRedirect()
        
        print("User logged out.")
            }
            
    func signOutAndRedirect() {
                // Optional: Add any sign-out logic (e.g., clearing user data or tokens)
                
                // Programmatically navigating to LoginViewController
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    if let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") {
                        // This is for presenting modally, use navigation controller if you're using navigation stack
                        self.present(loginViewController, animated: true, completion: nil)
                    }
                }
            }
        
        
        
        
    
    @objc func toggleEdit() {
        isEditingProfile.toggle()
        tableView.reloadData()
        navigationItem.rightBarButtonItem?.title = isEditingProfile ? "Done" : "Edit"
        navigationItem.rightBarButtonItem?.tintColor = UIColor.systemBlue
    }
    
    @objc func changeProfilePhoto() {
        // Show the image picker for photo selection
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.allowsEditing = true
        present(imagePickerController, animated: true, completion: nil)
    }
    
    // UIImagePickerController delegate method to handle selected image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            profileImageView.image = selectedImage
        }
        dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4 // Updated to include the new "License" section
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return profileData.personalInfo.count
        case 1:
            return 1 // Only one country field
        case 2:
            return profileData.notifications.count
        case 3:
            return profileData.licenseInfo.count // Number of items in the new "License" section
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Personal Information"
        case 1:
            return "Location"
        case 2:
            return "Preferences"
        case 3:
            return "License" // New section title
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
        cell.contentView.subviews.forEach { $0.removeFromSuperview() }
        
        if indexPath.section == 0 { // Personal info section
            let key = Array(profileData.personalInfo.keys)[indexPath.row]
            let value = profileData.personalInfo[key]
            
            let fieldNameLabel = UILabel()
            fieldNameLabel.translatesAutoresizingMaskIntoConstraints = false
            fieldNameLabel.font = UIFont.systemFont(ofSize: 16)
            fieldNameLabel.text = key
            
            let valueTextField = UITextField()
            valueTextField.translatesAutoresizingMaskIntoConstraints = false
            valueTextField.textAlignment = .right
            valueTextField.isUserInteractionEnabled = isEditingProfile
            valueTextField.text = value
            valueTextField.textColor = isEditingProfile ? UIColor.systemBlue : UIColor.black
            valueTextField.tag = indexPath.row // Tag to identify the field
            
            // Update the personal info model when user finishes editing
            valueTextField.addTarget(self, action: #selector(updatePersonalInfo(_:)), for: .editingChanged)
            
            if key == "Email" {
                valueTextField.isUserInteractionEnabled = false
                valueTextField.textColor = UIColor.gray
            }
            
            cell.contentView.addSubview(fieldNameLabel)
            cell.contentView.addSubview(valueTextField)
            
            NSLayoutConstraint.activate([
                fieldNameLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 20),
                fieldNameLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
                
                valueTextField.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -20),
                valueTextField.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
            ])
            
        } else if indexPath.section == 1 { // Country section
            let countryLabel = UILabel()
            countryLabel.translatesAutoresizingMaskIntoConstraints = false
            countryLabel.text = "Country/Region"
            countryLabel.font = UIFont.systemFont(ofSize: 16)
            
            let countryValueLabel = UILabel()
            countryValueLabel.translatesAutoresizingMaskIntoConstraints = false
            countryValueLabel.text = profileData.country
            countryValueLabel.font = UIFont.systemFont(ofSize: 16)
            countryValueLabel.textAlignment = .right
            
            cell.contentView.addSubview(countryLabel)
            cell.contentView.addSubview(countryValueLabel)
            
            NSLayoutConstraint.activate([
                countryLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 20),
                countryLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
                
                countryValueLabel.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -20),
                countryValueLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
            ])
            
        } else if indexPath.section == 2 { // Notifications section
            let key = Array(profileData.notifications.keys)[indexPath.row]
            let value = profileData.notifications[key]!
            
            let notificationSwitch = UISwitch()
            notificationSwitch.isOn = value
            
            let notificationLabel = UILabel()
            notificationLabel.translatesAutoresizingMaskIntoConstraints = false
            notificationLabel.text = key
            notificationLabel.font = UIFont.systemFont(ofSize: 16)
            
            // Ensure the switch is aligned correctly
            notificationSwitch.translatesAutoresizingMaskIntoConstraints = false
            
            cell.contentView.addSubview(notificationLabel)
            cell.contentView.addSubview(notificationSwitch)
            
            NSLayoutConstraint.activate([
                notificationLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 20),
                notificationLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
                
                notificationSwitch.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -20),
                notificationSwitch.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
            ])
        }else if indexPath.section == 3 { // License section
            let key = Array(profileData.licenseInfo.keys)[indexPath.row]
            let value = profileData.licenseInfo[key]
            
            let licenseLabel = UILabel()
            licenseLabel.translatesAutoresizingMaskIntoConstraints = false
            licenseLabel.text = "\(key): \(value ?? "")"
            licenseLabel.font = UIFont.systemFont(ofSize: 16)
            
            // Add "View" button for opening the License Agreement
            let viewButton = UIButton(type: .system)
            viewButton.translatesAutoresizingMaskIntoConstraints = false
            viewButton.setTitle("View", for: .normal)
            viewButton.addTarget(self, action: #selector(viewLicenseAgreementTapped), for: .touchUpInside)
            
            cell.contentView.addSubview(licenseLabel)
            cell.contentView.addSubview(viewButton)
            
            NSLayoutConstraint.activate([
                licenseLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 20),
                licenseLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
                
                viewButton.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -20),
                viewButton.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
            ])
        }
        return cell
        

    }
    @objc func viewLicenseAgreementTapped() {
        // Create and present a new view controller for the license agreement
        let licenseAgreementVC = LicenseAgreementViewController()  // Replace with your actual view controller
        self.navigationController?.pushViewController(licenseAgreementVC, animated: true)
    }


    
    // Update methods for dynamic updates
    @objc func updatePersonalInfo(_ sender: UITextField) {
        let key = Array(profileData.personalInfo.keys)[sender.tag]
        profileData.personalInfo[key] = sender.text
    }
    
    @objc func editButtonTapped() {
        // Toggle the "edit mode"
        isEditingMode.toggle()
        
        // Change the button title based on edit mode
        navigationItem.rightBarButtonItem?.title = isEditingMode ? "Done" : "Edit"
        
        // Reload the table view to reflect the changes
        tableView.reloadData()
    }

        

    
}
