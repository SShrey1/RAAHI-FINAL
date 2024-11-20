//
//  SingleStoryViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 26/08/1946 Saka.
//

import UIKit

class SingleStoryViewController: UIViewController {
    
    
    @IBOutlet weak var storyImageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    
    var story : Story!
    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyImageView.image = story.image
                progressView.progress = 0.0
                startProgress()
        
        
    }
    
    private func startProgress() {
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] _ in
                guard let self = self else { return }
                self.progressView.progress += 0.02
                if self.progressView.progress >= 1.0 {
                    self.timer?.invalidate()
                    self.navigationController?.popViewController(animated: true)
                }
            }
        }
        
        deinit {
            timer?.invalidate()
        }
}
