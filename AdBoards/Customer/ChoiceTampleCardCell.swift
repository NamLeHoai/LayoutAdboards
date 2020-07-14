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
    
    override func draw(_ layer: CALayer, in ctx: CGContext) {
        useButton.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
        useButton.layer.cornerRadius = useButton.frame.height/2
    }
    
    let imageCard: UIImageView = {
        let imageView = UIImageView ()
        imageView.image = UIImage(named: "Samples")
        imageView.layer.cornerRadius = 6
        imageView.layer.backgroundColor = UIColor.red.cgColor
        return imageView
    }()
    
    let nameCard: UILabel = {
        let label = UILabel()
        label.text = "Got Fashion"
        label.headerLabel()
        label.textColor = UIColor(red: 0.27, green: 0.27, blue: 0.27, alpha: 1.00)
        return label
    }()

    let subCard: UILabel = {
        let label = UILabel()
        label.text = "Sutiable for fashion ads "
        label.descriptLabel()
        label.textColor = UIColor(red: 0.20, green: 0.21, blue: 0.26, alpha: 1.00)
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
        setupLayout()
    }
    
    
    
    func setupLayout() {
        self.sv(imageCard,nameCard,subCard,useButton)
        self.layout(
            0,
            |-0-imageCard-0-|,
            8,
            |-nameCard-useButton-|,
            4,
            |-subCard|,
            24
        )
        
        useButton.width(70).height(25)
        
    }
    
    override func draw(_ rect: CGRect) {
        
        imageCard.contentMode = .scaleToFill
        imageCard.layer.masksToBounds = true
        
        useButton.layer.cornerRadius = useButton.bounds.height/2
    }

}
