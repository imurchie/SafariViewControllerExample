//
//  ViewController.swift
//  SafariViewControllerExample
//
//  Created by Isaac Murchie on 12/30/19.
//  Copyright © 2019 Isaac Murchie. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var safariButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func safariButtonClick(_ sender: Any) {
        let urlString = "http://appium.io"
        if let url = URL(string: urlString) {
            let vc = SFSafariViewController(url: url)
            vc.delegate = self
            present(vc, animated: true)
        }
    }

    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        dismiss(animated: true)
    }
}

