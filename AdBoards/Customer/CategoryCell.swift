//
//  CategoryCell.swift
//  AdBoards
//
//  Created by Nam on 6/13/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class CategoryCell: UITableViewCell {

    let cateLB: UILabel = {
        let label = UILabel()
        label.text = "category"
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    let checkmarkImg: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "checkMark")
        imageView.image = image
        return imageView
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.backgroundColor = .cyan
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupLayout()
        // Configure the view for the selected state
    }
    
    func setupLayout() {
        self.sv(cateLB, checkmarkImg)
        self.layout(
            16,
            |-16-checkmarkImg-18-cateLB-|,
            16
        )
        checkmarkImg.width(24).height(24)
        
    }

}
