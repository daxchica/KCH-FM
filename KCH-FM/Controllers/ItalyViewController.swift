//
//  ItalyViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/16/22.
//

import UIKit
import WebKit

class ItalyViewController: UIViewController {

    @IBOutlet weak var serieAWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let serieAURL = URL(string:"https://www.scoreaxis.com/widget/standings-widget/384?lang=es&amp;inst=cd6a6") else {return}

        serieAWebView.load(URLRequest(url: serieAURL))
    }
    

   

}
