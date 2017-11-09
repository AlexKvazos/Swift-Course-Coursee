//
//  PlayerViewController.swift
//  Online Courses
//
//  Created by Alejandro Cavazos on 11/4/17.
//  Copyright © 2017 Alejandro Cavazos. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        youtubePlayerView.loadVideoURL(URL(string: "https://www.youtube.com/watch?v=Inn2K-V3NFI")!)
    }
}
