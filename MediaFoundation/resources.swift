//
//  resources.swift
//  MediaFoundation
//
//  Created by Carlos Brito on 19/12/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import Foundation

class Song {
    
    var name : String
    var audio : String
    var image : String
    var exten : String
    
    init (name: String, audio: String, image: String, exten: String) {
        self.name = name
        self.audio = audio
        self.image = image
        self.exten = exten
    }
}


class Resources {
    
    var res : [Song]
    
    init(){
        res = [
            Song(name: "Demo Song 1",audio: "a2",image: "c1.jpg",exten: "m4a"),
            Song(name: "Summer Something", audio: "a3", image: "c2.jpg", exten: "m4a"),
            Song(name: "Fast Bass Sound", audio: "a4", image: "c3.jpg", exten: "m4a"),
            Song(name: "Passenger Audio", audio: "a5", image: "c4.jpg", exten: "m4a"),
            Song(name: "Boom Show", audio: "a6", image: "c5.jpg", exten: "m4a")
        ]
    }


    func getSong(number: Int) -> Song {
        return res[number]
    }

    func getRandomSong () -> Song {
        return res[Int(arc4random()) % res.count]
    }
}
