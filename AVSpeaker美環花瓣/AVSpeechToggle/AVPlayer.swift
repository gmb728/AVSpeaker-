//
//  AVPlayer.swift
//  AVSpeechToggle
//
//  Created by Chang Sophia on 2018/7/31.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation

class AVAudioPlayer {
    var player : AVPlayer?
    if let url = Bundle.main.url(forResource: "花輪不愛我", withExtension: "m4a"){
        let player = AVPlayer(url: url!)
        player.play()
    }
}
