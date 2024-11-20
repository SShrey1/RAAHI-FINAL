//
//  WebViewController2.swift
//  CustomTableView
//
//  Created by User@Param on 17/11/24.
//
import UIKit
import WebKit

class WebViewController2: UIViewController {
    var webView: WKWebView!
    var urlToLoad: URL?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Setup web view
        webView = WKWebView(frame: view.bounds)
        view.addSubview(webView)
        
        // Load the URL
        if let url = urlToLoad {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        // Add "Done" button
        let doneButton = UIButton(type: .system)
        doneButton.setTitle("Done", for: .normal)
        doneButton.addTarget(self, action: #selector(doneButtonTapped), for: .touchUpInside)
        doneButton.frame = CGRect(x: 20, y: 50, width: 100, height: 40)
        view.addSubview(doneButton)
    }

    @objc func doneButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}

