//
//  ViewController.swift
//  web-browser
//
//  Created by Travis Primm on 12/29/19.
//  Copyright © 2019 Travis Primm. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    private var urlVisitHistory : Stack<URLRequest>
    private var currentLoadedUrl : URLRequest
    
    required init?(coder: NSCoder) {
        self.urlVisitHistory = Stack<URLRequest>()
        self.currentLoadedUrl = URLRequest(url: URL(string: "apple.com")!)
        super.init(coder: coder)
    }
    
    @IBAction func goButtonTapped(_ sender: Any) {
        print("addressField has: \(addressField.text ?? "")")
        guard let addressFieldText = addressField.text?.lowercased() else { return }
        guard let url = URL(string: "https://" + addressFieldText) else { return }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)

//        urlVisitHistory.push(currentLoadedUrl)
//        currentLoadedUrl = urlRequest
//        webView.load(currentLoadedUrl)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        webView.goBack()
//        if (!urlVisitHistory.isEmpty()) {
//            let urlReq = urlVisitHistory.pop()
//            addressField.text = urlReq.url!.absoluteString
//            webView.load(urlReq)
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Here's the view: \(view)")
        print("Here's the subviews: \(view.subviews)")
        
        view.backgroundColor = .systemPurple
    }

    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var webView: WKWebView!
    
}

