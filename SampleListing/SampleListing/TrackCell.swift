//
//  TrackCell.swift
//  SampleListing
//
//  Created by Farabi Guest on 3/12/18.
//  Copyright © 2018 Farabi Guest. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell {
    
    var track: Track? {
        didSet {
            configureView()
        }
    }
    
    static let reuseIdentifier = "TrackCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureView()
    }
    
    func configureView() {
        guard let track = track else { return }
        
        textLabel?.text = track.name
        detailTextLabel?.text = track.author
    }
}
