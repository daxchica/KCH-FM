//
//  EnglandViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/16/22.
//

import UIKit
import WebKit

class EnglandViewController: UIViewController {


    @IBOutlet weak var englandWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let kchURL = URL(string:"https://www.scoreaxis.com/widget/standings-widget/9?lang=es&amp;inst=fe3cf") else {return}

        englandWebView.load(URLRequest(url: kchURL))
    }
    

}
