//
//  MexicoViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/16/22.
//

import UIKit
import WebKit


class MexicoViewController: UIViewController {

    @IBOutlet weak var mexicoLabel: UILabel!
    @IBOutlet weak var mexicoWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let mexicoURL = URL(string: "https://www.scoreaxis.com/widget/standings-widget/743") else {return}
        
        mexicoWebView.load(URLRequest(url: mexicoURL))
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
