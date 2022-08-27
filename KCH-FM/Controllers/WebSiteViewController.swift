//
//  WebSiteViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/21/22.
//

import UIKit
import WebKit

class WebSiteViewController: UIViewController {

    @IBOutlet weak var websiteWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let kchURL = URL(string:"https://www.kchcomunicacion.com") else {return}

        websiteWebView.load(URLRequest(url: kchURL))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
