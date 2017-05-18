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
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                    
                }
            } catch{
                // TODO: catch error - should not be required here
            }
        }
    }
}
