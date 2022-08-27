//
//  SpainViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/14/22.
//

import UIKit
import WebKit

class SpainViewController: UIViewController {

 
    @IBOutlet weak var spainLabel: UILabel!
    
    @IBOutlet weak var spainWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let spainURL = URL(string: "https://www.scoreaxis.com/widget/standings-widget/564?lang=es&amp;inst=f2c0f") else {return}
        
        spainWebView.load(URLRequest(url: spainURL))
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
