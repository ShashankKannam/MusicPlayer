//
//  partyCellTableViewCell.swift
//  MusicPlayer
//
//  Created by Shashank Kannam on 10/10/16.
//  Copyright © 2016 Shashank Kannam. All rights reserved.
//

import UIKit

class partyCellTableViewCell: UITableViewCell {
    @IBOutlet weak var partyImage: UIImageView!

    @IBOutlet weak var labelParty: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//// Configure the view for the selected state
//    }

    func updateUI(party: party)
    {
        labelParty.text = party.videoTitle
        let url = URL(string: party.imageURL)!
        
        
        DispatchQueue.global().async {
            do
            {
             let datax = try Data(contentsOf: url)
                    //let d = datax
                    DispatchQueue.global().sync {
                    //self.partyImage.image = UIImage(data: data)
                    self.partyImage.image = UIImage(data:datax)
                    
            }
            }
            catch{
            
            }
        }
        
        //partyImage.image = UIImage()//party.imageURL
        
    }
}
