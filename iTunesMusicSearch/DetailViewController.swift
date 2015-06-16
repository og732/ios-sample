//
//  DetailViewController.swift
//  iTunesMusicSearch
//
//  Created by Ken Toriumi on 2015/05/25.
//  Copyright (c) 2015年 Ken Toriumi. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class DetailViewController: AVPlayerViewController {
    
    var trackName: String!
    var previewUrl: String?
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = trackName

        // Do any additional setup after loading the view.
        if let previewUrl = previewUrl {
            player = AVPlayer(URL: NSURL(string: previewUrl))
            player.play()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
