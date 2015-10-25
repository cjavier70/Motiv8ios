//
//  SettingsTableViewCell.swift
//  Fitness
//
//  Created by MyAppTemplates Team on 16/02/15.
//  Copyright (c) 2015 MyAppTemplates. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet var imgIcon : UIImageView!
    @IBOutlet var lblTitle : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
