//
//  ParamStoryViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 27/08/1946 Saka.
//

import UIKit

class ParamStoryViewController: UIViewController {
    
    // MARK: - UI Components
    let progressStackView = UIStackView()
    let imageView = UIImageView()
    let captionContainer = UIView()
    let profileImageView = UIImageView()
    let userNameLabel = UILabel()
    let locationLabel = UILabel()
    let captionLabel = UILabel()
    let actionButton = UIButton()
    let backButton = UIButton(type: .system)
    
    // Example data
    let stories = [
        ("Lost in the misty mountains of Coorg!", "Coorg", "HimanshiSingh", "g1"),
        ("Exploring the sand dunes in Jaisalmer!", "Jaisalmer", "RahulPatel", "g4")
    ]
    var currentStoryIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        loadStory(index: currentStoryIndex)
    }
    
    // MARK: - Setup UI
    func setupUI() {
        view.backgroundColor = .black
        
        // 1. Setup Progress StackView
        progressStackView.axis = .horizontal
        progressStackView.distribution = .fillEqually
        progressStackView.spacing = 4
        view.addSubview(progressStackView)
        
        progressStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            progressStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            progressStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            progressStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            progressStackView.heightAnchor.constraint(equalToConstant: 4)
        ])
        
        // Create segments in the stack view
        for _ in stories {
            let segment = UIView()
            segment.backgroundColor = .gray // Default (inactive)
            progressStackView.addArrangedSubview(segment)
        }
        
        // 2. Setup Background ImageView
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // 3. Setup Caption Container
        captionContainer.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        view.addSubview(captionContainer)
        
        captionContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            captionContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            captionContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            captionContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            captionContainer.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // Profile Image
        profileImageView.layer.cornerRadius = 20
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .white // Placeholder color
        captionContainer.addSubview(profileImageView)
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: captionContainer.leadingAnchor, constant: 10),
            profileImageView.centerYAnchor.constraint(equalTo: captionContainer.centerYAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 40),
            profileImageView.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        // User Name and Location
        let textStackView = UIStackView(arrangedSubviews: [userNameLabel, locationLabel])
        textStackView.axis = .vertical
        textStackView.spacing = 2
        captionContainer.addSubview(textStackView)
        
        textStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textStackView.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 10),
            textStackView.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor)
        ])
        
        userNameLabel.font = .boldSystemFont(ofSize: 14)
        userNameLabel.textColor = .white
        locationLabel.font = .systemFont(ofSize: 12)
        locationLabel.textColor = .lightGray
        
        // Caption Label
        captionLabel.font = .systemFont(ofSize: 14)
        captionLabel.textColor = .white
        captionContainer.addSubview(captionLabel)
        
        captionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            captionLabel.leadingAnchor.constraint(equalTo: captionContainer.leadingAnchor, constant: 10),
            captionLabel.trailingAnchor.constraint(equalTo: captionContainer.trailingAnchor, constant: -10),
            captionLabel.bottomAnchor.constraint(equalTo: captionContainer.bottomAnchor, constant: -10)
        ])
        
        // Action Button
        actionButton.setTitle("Itinerary", for: .normal)
        actionButton.setTitleColor(.white, for: .normal)
        actionButton.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.8)
        actionButton.layer.cornerRadius = 15
        actionButton.clipsToBounds = true
        captionContainer.addSubview(actionButton)
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionButton.trailingAnchor.constraint(equalTo: captionContainer.trailingAnchor, constant: -10),
            actionButton.centerYAnchor.constraint(equalTo: captionContainer.centerYAnchor),
            actionButton.widthAnchor.constraint(equalToConstant: 80),
            actionButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        // 4. Back Button
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.addTarget(self, action: #selector(didTapBack), for: .touchUpInside)
        view.addSubview(backButton)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
        
        // Add Gesture Recognizers for Left and Right Tap
        let leftTapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapLeftSide))
        let rightTapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapRightSide))
        
        // Set the gesture recognizers for left and right side taps
//        leftTapGesture.delegate = self
//        rightTapGesture.delegate = self
        
        // Adding the tap gestures
        view.addGestureRecognizer(leftTapGesture)
        view.addGestureRecognizer(rightTapGesture)
    }
    
    // MARK: - Load Story
    func loadStory(index: Int) {
        guard index < stories.count else { return }
        
        let story = stories[index]
        captionLabel.text = story.0
        locationLabel.text = story.1
        userNameLabel.text = story.2
        imageView.image = UIImage(named: story.3)
        
        // Highlight the progress
        for (i, segment) in progressStackView.arrangedSubviews.enumerated() {
            segment.backgroundColor = i <= index ? .purple : .gray
        }
    }
    
    // MARK: - Actions
    @objc func didTapRightSide() {
        // Go to the next story (right side tap)
        currentStoryIndex += 1
        if currentStoryIndex >= stories.count {
            dismiss(animated: true) // End of stories
        } else {
            loadStory(index: currentStoryIndex)
        }
    }
    
    @objc func didTapLeftSide() {
        // Go to the previous story (left side tap)
        currentStoryIndex -= 1
        if currentStoryIndex < 0 {
            dismiss(animated: true) // End of stories
        } else {
            loadStory(index: currentStoryIndex)
        }
    }
    
    @objc func didTapBack() {
        dismiss(animated: true)
    }
}

extension ViewController: UIGestureRecognizerDelegate {
    // Allow both left and right tap gestures to work simultaneously
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
