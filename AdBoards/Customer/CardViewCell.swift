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
         return label
     }()
     
     let descriptCard: UILabel = {
         let label = UILabel()
         label.text = "sdasd"
         return label
     }()
    
    let containtView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
        return view
    }()
    
    let rightView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
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
        // Initialization code
        setupLayout()
        print("haiz")
        self.backgroundColor = .purple
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    func setupLayout() {
//        self.sv(iconImage,
//                containtView.sv(
//                    nameCard, descriptCard
//            )
//        )
//
//
//        self.layout(
//            16,
//            |-16-iconImage-containtView|
//
//        )
//
//        containtView.layout(
//            |nameCard ~ 16,
//            4,
//            |descriptCard-30-| ~ 80
//        )
//        iconImage.height(50).width(50)
//        print("co dc ko")
        self.sv(
            containtView.sv(
                iconImage, rightView.sv(nameCard, descriptCard)
            )
        )
        self.layout(
            0,
            |containtView.height(132).width(344)|,
            0
        )
        containtView.layout(
            16,
            |-16-iconImage-16-rightView-16-|,
            16
        )
        rightView.layout(
            |nameCard|,
            4,
            |descriptCard| ~ 80
        )
    }
}
