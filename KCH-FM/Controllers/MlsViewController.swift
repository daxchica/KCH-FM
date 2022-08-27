//
//  MlsViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/16/22.
//

import UIKit
import WebKit

class MlsViewController: UIViewController {

    @IBOutlet weak var mlsLabel: UILabel!
    @IBOutlet weak var mlsWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let mlsURL = URL(string:"https://www.scoreaxis.com/widget/standings-widget/779") else {return}
        
        mlsWebView.load(URLRequest(url: mlsURL))
        
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
