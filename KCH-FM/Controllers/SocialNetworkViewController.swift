//
//  SocialNetworkViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/22/22.
//

import UIKit

class SocialNetworkViewController: UIViewController {

    @IBAction func tiktokLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.tiktok.com/@kchradio"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
    }
    
    @IBAction func instaLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.instagram.com/kchradio"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
    }
    
    @IBAction func fbLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.facebook.com/@kchfmradio"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
    }
  
    @IBAction func tweeterLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.twitter.com/@kch_fm"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
