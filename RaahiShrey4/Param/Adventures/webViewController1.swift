//
//  webViewController1.swift
//  CustomTableView
//
//  Created by User@Param on 17/11/24.
//
import UIKit
import WebKit

class WebViewController1: UIViewController {
    var urlToLoad: URL?
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize WKWebView
        webView = WKWebView(frame: self.view.bounds)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(webView)
        
        // Load the URL if available
        if let url = urlToLoad {
            webView.load(URLRequest(url: url))
        }
        
        // Add the "Done" button
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Done",
            style: .done,
            target: self,
            action: #selector(doneButtonTapped)
        )
    }
    
    @objc func doneButtonTapped() {
        // Dismiss the current view controller
        dismiss(animated: true, completion: nil)
    }
}

