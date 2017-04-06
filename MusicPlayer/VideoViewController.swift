//
//  VideoViewController.swift
//  MusicPlayer
//
//  Created by Shashank Kannam on 10/10/16.
//  Copyright © 2016 Shashank Kannam. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var videoTitle: UILabel!
    
    private var _partyRock:party!
    
    var partyRock:party{
        get{
            return _partyRock
        }
        set{
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     videoTitle.text=partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
