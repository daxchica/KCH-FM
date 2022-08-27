//
//  staffViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/22/22.
//

import UIKit

class staffViewController: UIViewController {

    @IBOutlet weak var chyoImage: UIImageView!
    @IBOutlet weak var kchImage: UIImageView!
    @IBOutlet weak var johaImage: UIImageView!
    @IBOutlet weak var giseImage: UIImageView!
    @IBOutlet weak var kimImage: UIImageView!
    @IBOutlet weak var luibImage: UIImageView!
    @IBOutlet weak var maruzImage: UIImageView!
    @IBOutlet weak var fdoImage: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chyoImage.layer.cornerRadius = chyoImage.frame.size.height/2
        chyoImage.clipsToBounds = true
        
        kchImage.layer.cornerRadius = kchImage.frame.size.height/2
        kchImage.clipsToBounds = true
        
        johaImage.layer.cornerRadius = johaImage.frame.size.height/2
        johaImage.clipsToBounds = true
        
        giseImage.layer.cornerRadius = giseImage.frame.size.height/2
        giseImage.clipsToBounds = true
        
        kimImage.layer.cornerRadius = kimImage.frame.size.height/2
        kimImage.clipsToBounds = true
        
        luibImage.layer.cornerRadius = luibImage.frame.size.height/2
        luibImage.clipsToBounds = true
        
        maruzImage.layer.cornerRadius = maruzImage.frame.size.height/2
        maruzImage.clipsToBounds = true
        
        fdoImage.layer.cornerRadius = fdoImage.frame.size.height/2
        fdoImage.clipsToBounds = true
        
        
        
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
