//
//  ViewController.swift
//  theCodeGirl
//
//  Created by Grace on 02/03/2018.
//  Copyright © 2018 Grace. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
 
  var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://thecodegal.wordpress.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
            
        


}

