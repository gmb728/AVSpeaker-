//
//  ViewController.swift
//  AVSpeechToggle
//
//  Created by Chang Sophia on 2018/7/23.
//  Copyright © 2018年 Chang Sophia. All rights reserved.f6
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var count = Int(arc4random_uniform(9)+0)
    var flowerCount = 0
    var player: AVPlayer?
    
    
    @IBOutlet weak var buttonPress: UIButton!
    @IBOutlet weak var f1: UIImageView!
    @IBOutlet weak var f2: UIImageView!
    @IBOutlet weak var f3: UIImageView!
    @IBOutlet weak var f4: UIImageView!
    @IBOutlet weak var f5: UIImageView!
    @IBOutlet weak var f6: UIImageView!
    @IBOutlet weak var f7: UIImageView!
    @IBOutlet weak var f8: UIImageView!
    @IBOutlet weak var f9: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playagainButton: UIButton!
    
    func changeFlower(){
        let number = count % 9
        if number == 0 {
            f1.image = UIImage(named: "f1")
            resultLabel.text = "花輪愛我"
            if let url = Bundle.main.url(forResource: "花輪愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 1 {
            f2.image = UIImage(named: "f2")
            resultLabel.text = "花輪不愛我"
            if let url = Bundle.main.url(forResource: "花輪不愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 2 {
            f3.image = UIImage(named: "f3")
            resultLabel.text = "花輪愛我"
            if let url = Bundle.main.url(forResource: "花輪愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 3 {
            f4.image = UIImage(named: "f4")
            resultLabel.text = "花輪不愛我"
            if let url = Bundle.main.url(forResource: "花輪不愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 4 {
            f5.image = UIImage(named: "f5")
            resultLabel.text = "花輪愛我"
            if let url = Bundle.main.url(forResource: "花輪愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 5 {
            f6.image = UIImage(named: "f6")
            resultLabel.text = "花輪不愛我"
            if let url = Bundle.main.url(forResource: "花輪不愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 6 {
            f7.image = UIImage(named: "f7")
            resultLabel.text = "花輪愛我"
            if let url = Bundle.main.url(forResource: "花輪愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
            
        } else if number == 7 {
            f8.image = UIImage(named: "f8")
            resultLabel.text = "花輪不愛我"
            if let url = Bundle.main.url(forResource: "花輪不愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else if number == 8{
            f9.image = UIImage(named: "f9")
            resultLabel.text = "花輪愛我"
            if let url = Bundle.main.url(forResource: "花輪愛我", withExtension: "m4a"){
                player = AVPlayer(url: url)
                player?.play()
                
            }
            
        }
        
    }
    
        
    @IBAction func buttonPress(_ sender: UIButton) {

        count = count + 1
        flowerCount = flowerCount - 1
        
        print(flowerCount)
        changeFlower()
        
        if flowerCount == 0 {
            disableButton()

        }
        
    }
    
    func disableButton(){
        buttonPress.isEnabled = false
    }
    
    @IBAction func playagain(_ sender: Any) {
       
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = Int(arc4random_uniform(9))
        flowerCount = count
    }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
}
