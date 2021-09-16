//
//  miyagiViewController.swift
//  musicApp
//
//  Created by Эмиль on 05.09.2021.
//

import UIKit
import MediaPlayer

class miyagiViewController: UIViewController {
    

    var player: AVPlayer!
    
    @IBOutlet weak var miyagiSlider: UISlider!
    @IBOutlet weak var miyagiMusicLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Miyagi - Captain", ofType: "mp3")!))
        miyagiSlider.maximumValue = Float(Double(player.currentItem?.asset.duration.seconds ?? 0))
        player.addPeriodicTimeObserver(forInterval: CMTime(seconds: 0.1, preferredTimescale: 100), queue: DispatchQueue.main) {
            (time) in
            self.miyagiMusicLabel.text = "\(time.seconds)"
            self.miyagiSlider.value = Float(time.seconds)
        }
    }
    
    @IBAction func pushMiyagiPlay(_ sender: UIButton) {
        player.play()
    }

    @IBAction func pushMiyagiPause(_ sender: UIButton) {
        player.pause()
    }

    @IBAction func miyagiSliderAction(_ sender: UISlider) {
        player.seek(to: CMTimeMakeWithSeconds(Double(miyagiSlider.value), preferredTimescale: 100))
        miyagiMusicLabel.text = "\(miyagiSlider.value)"
    }
}
