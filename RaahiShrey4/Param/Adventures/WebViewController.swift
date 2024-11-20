//
//  WebViewController.swift
//  CustomTableView
//
//  Created by User@Param on 17/11/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    var urlToLoad: URL? // URL passed from the main view controller
    private var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Set up WKWebView
        webView = WKWebView(frame: self.view.bounds)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(webView)

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
        // Dismiss the navigation controller
        dismiss(animated: true, completion: nil)
    }
}
