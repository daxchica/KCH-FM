//
//  ViewController.swift
//  KCH-FM
//
//  Created by Dax Chica on 8/11/22.
//



import UIKit
import WebKit
import AVFoundation



//         "https://streamingecuador.net:7075/stream"

class KchPlayer: UIViewController {

    var timeRemaining: Int = 5
    var timer: Timer!
    
    var player: AVPlayer?
    var dict = NSDictionary()
    var isPlaying = false
    let playImage = UIImage(named: "play_button.png")
    let pausedImage = UIImage(named: "pause.fill")
    
    @IBOutlet weak var addViewBanner: WKWebView!
    
    @IBOutlet weak var webViewBanner: WKWebView!
    
    @IBAction func playedEcuador(_ sender: UIButton){
    }
    @IBAction func playedSpain(_ sender: UIButton) {
    }
    @IBAction func playedMexico(_ sender: UIButton) {
    }
    @IBAction func playedMLS(_ sender: UIButton) {
    }
    @IBAction func playedGermany(_ sender: UIButton){
    }
    @IBAction func playedEngland(_ sender: UIButton){
    }
    @IBAction func playedItaly(_ sender: UIButton) {
    }
    @IBAction func playButton(_ sender: UIButton) {
        
        if isPlaying {
            player?.pause()
            sender.setImage(playImage, for: .normal)
        } else {
            playMusic()
            player?.volume = 1.0
            player?.rate = 1.0
            player?.play()
            sender.setImage(pausedImage, for: .normal)
            do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            } catch {
                print("failed")
            }
        }
        isPlaying.toggle()
    }

    override func viewDidLoad() {
            
        super.viewDidLoad()

        adBanner1()
        adBanner2()
        
    }

        func playMusic() {
            let urlString = "https://streamingecuador.net:7075/stream"

            guard let url = URL.init(string: urlString) else
            {
                return
                }

            let playerItem = AVPlayerItem.init(url: url)
                player = AVPlayer.init(playerItem: playerItem)
                player?.play()

        }
    
    func adBanner1(){
        guard let urlRequesta = URL(string: "https://ecuasolucion.com/wp-content/uploads/2022/01/ezgif.com-gif-maker.gif") else {
            return}
            let request = URLRequest(url: urlRequesta)
        addViewBanner.load(request)
    }
    
    func adBanner2(){
        guard let urlRequest = URL(string: "https://kchcomunicacion.com/wp-content/uploads/2021/10/HUANCAVILCA.png") else {return}
                webViewBanner.load(URLRequest(url: urlRequest))
    }
    
    func createTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2,
                                 target: self, selector: #selector(step),userInfo: nil, repeats: true)
    }
    
    @objc func step() {
        if timeRemaining > 0 {
            adBanner1()
            timeRemaining -= 1 }
        else {
            timer.invalidate()
            addViewBanner.stopLoading()
            timeRemaining = 5
        }
    }
}
    

    
    

    

