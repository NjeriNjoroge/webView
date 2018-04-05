//
//  ViewController.swift
//  theCodeGirl
//
//  Created by Grace on 02/03/2018.
//  Copyright © 2018 Grace. All rights reserved.
//

import UIKit
import SafariServices


class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func openMySite(_ sender: AnyObject) {

        let url = URL(string: "https://thecodegal.wordpress.com")!
        let controller = SFSafariViewController(url: url)
        self.present(controller, animated: true, completion: nil)
        controller.delegate = self

    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }

}


