//
//  ContactInstagramViewController.swift
//  QuickNet
//
//  Created by DTran on 1/30/20.
//  Copyright © 2020 TPT. All rights reserved.
//

import UIKit
import WebKit
import StoreKit

class OnlineSupportViewController: UIViewController, WKNavigationDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
let url = URL(string: "https://sites.google.com/view/quick-apps/OnlineSupport")
        let request = URLRequest(url: url!)

        webView.load(request)
        webView.navigationDelegate = self
    }
    
    @IBAction func requestReviewManually() {
        // Note: Replace the XXXXXXXXXX below with the App Store ID for your app
        //       You can find the App Store ID in your app's product URL
        guard let writeReviewURL = URL(string: "https://apps.apple.com/us/app/quick-apps/id1505523551?action=write-review")
            else { fatalError("Expected a valid URL") }
        UIApplication.shared.open(writeReviewURL, options: [:], completionHandler: nil)
    }
    
     @IBAction func back(_ sender: Any) {
                
                if webView.canGoBack {
                    webView.goBack()
                }
            }
            
        @IBAction func forward(_ sender: Any) {
                if webView.canGoForward {
                    webView.goForward()
                }
    }
        
        @IBAction func HomeBtn(_ sender: Any) {
             let url = URL(string: "https://www.instagram.com/quick.apps/")
             let request = URLRequest(url: url!)
            
            webView.load(request)

    }
}
