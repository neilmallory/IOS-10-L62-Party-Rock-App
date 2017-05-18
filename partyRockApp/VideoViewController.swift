//
//  VideoViewController.swift
//  partyRockApp
//
//  Created by neil mallory on 18/05/2017.
//  Copyright © 2017 neil mallory. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var videoLabel: UILabel!
    
    private var _partyRock : PartyRock!

    var partyRock: PartyRock{
        get{
            return _partyRock
        } set{
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videoLabel.text = _partyRock.videoTitle
        webView.loadHTMLString(_partyRock.videoURL, baseURL: nil)
        
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
