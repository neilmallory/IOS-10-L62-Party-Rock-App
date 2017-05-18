//
//  PartyTableViewCell.swift
//  partyRockApp
//
//  Created by neil mallory on 18/05/2017.
//  Copyright © 2017 neil mallory. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock){
        videoTitleLabel.text = partyRock.videoTitle
    }
}
