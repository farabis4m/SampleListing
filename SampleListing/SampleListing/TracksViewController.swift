//
//  TracksViewController.swift
//  SampleListing
//
//  Created by Farabi Guest on 3/12/18.
//  Copyright © 2018 Farabi Guest. All rights reserved.
//

import UIKit

class TracksViewController: UITableViewController {
    
    var tracks = [Track]() {
        didSet {
            tableView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load tracks
        Track.fetchTracks { [weak self] (tracks) in
            self?.tracks = tracks
        }
        
    }
}

extension TracksViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let trackCell = tableView.dequeueReusableCell(withIdentifier: TrackCell.reuseIdentifier) as? TrackCell else { return UITableViewCell() }
        
        trackCell.track = tracks[indexPath.row]

        return trackCell
    }
}
