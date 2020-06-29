//
//  ChoiceTampleCardCell.swift
//  AdBoards
//
//  Created by Nam on 6/16/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class ChoiceTampleCardCell: UITableViewCell {
    
    let imageCard: UIImageView = {
        let imageView = UIImageView ()
        imageView.image = UIImage(named: "Single")
        
        return imageView
    }()
    
    let nameCard: UILabel = {
        let label = UILabel()
        label.text = "Got Fashion"
        label.headerLabel()
        return label
    }()

    let subCard: UILabel = {
        let label = UILabel()
        label.text = "Got Fashion"
        label.headerLabel()
        return label
    }()
    
    let useButton: UIButton = {
        let button = UIButton()
        button.setTitle("Use", for: .normal)
        button.smallButton()
        return button
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        setupLayout()
    }
    
    func setupLayout() {
        self.sv(imageCard)
        self.layout(
            0,
            |imageCard.height(306).width(343)|,
            24
        )
        
//        imageCard.fillContainer()
    }

}
