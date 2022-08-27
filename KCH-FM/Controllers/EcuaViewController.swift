//
//  EcuaViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/15/22.
//

import UIKit
import WebKit


class EcuaViewController: UIViewController {

    weak var ligaProLabel: UILabel!
    
    
    @IBOutlet weak var webViewLiga: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let urlRequest = URL(string: "https://grupomakrodigital.com/ligapro/tablaDePosicionesLigaPro") else {return}
        
        webViewLiga.load(URLRequest(url: urlRequest))
        
        
        

            
        
    }
            
    
    }
    
//        let webViewLiga = WKWebView(frame: CGRect(x: 1, y: 3, width: self.view.frame.size.width, height: self.view.frame.size.height*0.8))
//                self.view.addSubview(webView)


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


