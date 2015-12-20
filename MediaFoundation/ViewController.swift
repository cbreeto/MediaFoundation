//
//  ViewController.swift
//  MediaFoundation
//
//  Created by Carlos Brito on 18/12/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    
    //outlets
    @IBOutlet weak var songLbl: UILabel!
    @IBOutlet weak var coverImg: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    //Player
    private var player : AVAudioPlayer!
    
    let resources = Resources()
    
    
    
    
    
    ////////////////////////////
    //Pause ==   Play  ==  Stop//
    @IBAction func actionPause(sender: UIButton) {
        if player.playing {
            player.pause()
        }
    }
    
    @IBAction func actionPlay(sender: UIButton) {
        if !player.playing {
            player.play()
        }
        
    }
    
    
    @IBAction func actionStop() {
        if player.playing {
            player.stop()
            player.currentTime = 0.0
        }
    }
    //////////////////////////////
    
    
    @IBAction func actionVolumeSLider(slider: UISlider) {
        player.volume = slider.value
        
    }
    
    @IBAction func actionShuffle() {
        connectMusic(resources.getRandomSong())
    }
    
    
    func connectMusic(song: Song) -> Void {
        //set cover image
        coverImg.image = UIImage (named: song.image)
        
        //name song
        songLbl.text = song.name
        let soundURL = NSBundle.mainBundle().URLForResource(song.audio, withExtension: song.exten)
        
        do {
            try player = AVAudioPlayer(contentsOfURL: soundURL!)
        }
        catch _ {
            print("Error while loading the music")
        }
        player.play()
    }
    
    
    @IBAction func actionDemo1() {
        connectMusic(resources.getSong(0))
    }
    

    @IBAction func actionDemo2(sender: UIButton) {
        connectMusic(resources.getSong(1))
    }
    
    
    @IBAction func actionDemo3() {
        connectMusic(resources.getSong(2))
    }
    
    @IBAction func actionDemo4() {
        connectMusic(resources.getSong(3))
    }
    
    @IBAction func actionDemo5() {
        connectMusic(resources.getSong(4))
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }



}

