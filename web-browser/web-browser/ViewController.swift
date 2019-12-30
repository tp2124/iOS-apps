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
    @IBAction func goButtonTapped(_ sender: Any) {
            print("addressField has: \(addressField.text ?? "")")
        guard let addressFieldText = addressField.text?.lowercased() else { return }
            guard let url = URL(string: "https://" + addressFieldText) else { return }
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        webView.goBack()
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

