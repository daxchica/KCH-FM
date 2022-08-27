//
//  PremierViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/16/22.
//

import UIKit
import WebKit


class PremierViewController: UIViewController {
    
    
    @IBOutlet weak var premierWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let premierURL = URL(string:"https://www.scoreaxis.com/widget/standings-widget/82?lang=es&amp;inst=63925") else {return}

        premierWebView.load(URLRequest(url: premierURL))
    }
    

}
