//
//  ChoiceTampleCardCell.swift
//  AdBoards
//
//  Created by Nam on 6/16/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit

class ChoiceTampleCardCell: UITableViewCell {
    
    let containView = UIView()
    
    let imageCard: UIImageView = {
        let imageView = UIImageView ()
        imageView.image = UIImage(named: "Card")
        
        return imageView
    }()
    
    let nameCard: UILabel = {
        let label = UILabel()
        label.text = "Got Fashion"
        label.headerLabel()
        return label
    }()
    
    let subCard:

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
