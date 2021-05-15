//
//  FeedCell.swift
//  SnapchatCloneProject
//
//  Created by Şeyma Nur on 14.05.2021.
//

import UIKit

class FeedCell: UITableViewCell {
    @IBOutlet weak var feedUsername: UILabel!
    
    @IBOutlet weak var feedImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
