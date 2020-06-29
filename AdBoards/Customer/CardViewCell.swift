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
         imageView.image = UIImage(named: "Icon")
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
    
    let containtView: UIView = {
        let view = UIView()
        
        return view
    }()
    
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
                print(data.nameCard)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupLayout()
        self.backgroundColor = .cyan
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.15
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 10
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }

    func setupLayout() {
        self.sv(iconImage,
                containtView.sv(
                    nameCard, descriptCard
            )
        )


        self.layout(
            16,
            |-16-iconImage-containtView|,
            16
            
        )

        containtView.layout(
            |nameCard,
            4,
            |descriptCard-30-| ~ 80
        )
        iconImage.height(50).width(50)
//        self.sv(
//            containtView.sv(
//                iconImage, rightView.sv(nameCard, descriptCard)
//            )
//        )
//        self.layout(
//            0,
//            |containtView.height(132).width(344)|,
//            0
//        )
//        containtView.layout(
//            16,
//            |-16-iconImage-16-rightView-16-|,
//            16
//        )
//        rightView.layout(
//            |nameCard|,
//            4,
//            |descriptCard| ~ 80
//        )
    }
}
