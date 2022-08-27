//
//  GermanyViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/16/22.
//

import UIKit
import WebKit

class GermanyViewController: UIViewController {

    @IBOutlet weak var germanWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let germanURL = URL(string:"https://www.scoreaxis.com/widget/standings-widget/82?lang=es&amp;inst=63925") else {return}

        germanWebView.load(URLRequest(url: germanURL))
    }
    

}
