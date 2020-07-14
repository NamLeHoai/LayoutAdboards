//
//  CardView.swift
//  AdBoards
//
//  Created by Nam on 6/12/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class CardViewCell: UITableViewCell {

     let iconImage: UIImageView = {
         let imageView = UIImageView()
         imageView.image = UIImage(named: "xuongrong")
         return imageView
     }()
     
     let nameCard: UILabel = {
         let label = UILabel()
         label.text = "sdasd"
        label.font = UIFont.systemFont(ofSize: 14)
         return label
     }()
     
     let descriptCard: UILabel = {
         let label = UILabel()
         label.text = "sdasd"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .lightGray
        label.numberOfLines = 0
         return label
     }()
    let containView = UIView()
        
    let rightView: UIView = {
        let view = UIView()
        return view
    }()
    
    var card: Card? {
        didSet {
            if let data = card {
                iconImage.image = data.iconImage
                nameCard.text = data.nameCard
                descriptCard.text = data.descriptCard
                
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupLayout()
        
        
    }

    func setupLayout() {
        self.sv(containView)
        self.layout(
            16,
            |-containView-|,
            16
        )
        containView.sv(iconImage, rightView)
        containView.layout(
            16,
            |-16-iconImage.width(100).height(100)-rightView-24-|,
            16
        )
        rightView.sv(nameCard, descriptCard)
        rightView.layout(
            0,
            |nameCard.width(47).height(16),
            |descriptCard.width(240).height(80),
            0
        )
        
    }
}
