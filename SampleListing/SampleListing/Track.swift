//
//  Track.swift
//  SampleListing
//
//  Created by Farabi Guest on 3/12/18.
//  Copyright © 2018 Farabi Guest. All rights reserved.
//

import Foundation

class Track {
    var name = ""
    var author = ""
    var imageURL = ""
    
    static func fetchTracks(completionHandler: ([Track]) -> ()) {
        
        let track1 = Track()
        track1.name = "Track1"
        track1.author = "Author1"
        
        let track2 = Track()
        track2.name = "Track2"
        track2.author = "Author2"
        
        let track3 = Track()
        track3.name = "Track3"
        track3.author = "Author3"
        
        completionHandler([track1, track2, track3])
    }
}

