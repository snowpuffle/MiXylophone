//
//  ViewController.swift
//  MiXylophone
//
//  Created by katie on 3/15/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyA(_ sender: UIButton) {
        // play sound with key name
        playSound(keyName: "A")
        
        keyPressEffect(sender)
    }
    
    @IBAction func keyB(_ sender: UIButton) {
        playSound(keyName: "B")
        
        keyPressEffect(sender)
    }
    
    @IBAction func keyC(_ sender: UIButton) {
        playSound(keyName: "C")
        
        keyPressEffect(sender)
    }
    
    @IBAction func keyD(_ sender: UIButton) {
        playSound(keyName: "D")
        
        keyPressEffect(sender)
    }

    @IBAction func keyE(_ sender: UIButton) {
        playSound(keyName: "E")
        
        keyPressEffect(sender)
    }

    @IBAction func keyF(_ sender: UIButton) {
        playSound(keyName: "F")
        
        keyPressEffect(sender)
    }

    @IBAction func keyG(_ sender: UIButton) {
        playSound(keyName: "G")
        
        keyPressEffect(sender)
    }
    
    func playSound(keyName: String) {
        let url = Bundle.main.url(forResource: keyName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func keyPressEffect(_ sender: UIButton){
        // makes transition smooth
        UIView.animate(withDuration: 0.2) {
            // reduces the opacity of the Button to half (the selected Button)
            sender.alpha = 0.5
        }

        // delays the opacity to the selected seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            // makes transition smooth
            UIView.animate(withDuration: 0.2) {
                // brings sender's opacity back to fully opaque
                sender.alpha = 1.0
            }
        }
    }

}

