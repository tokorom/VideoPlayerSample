//
//  Video.swift
//
//  Created by ToKoRo on 2022-09-22.
//

import AVKit
import Foundation

enum Video {
    static var player: AVPlayer? {
        let videoURL = URL(string: "https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/downloads/wwdc2022-10052_hd.mp4?dl=1")!
        let asset = AVURLAsset(url: videoURL)
        let playerItem = AVPlayerItem(asset: asset)
        let player = AVPlayer(playerItem: playerItem)
        player.play()
        return player
    }
}
