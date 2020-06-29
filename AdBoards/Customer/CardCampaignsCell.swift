//
//  CardCampaignsCell.swift
//  AdBoards
//
//  Created by Nam on 6/20/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import TTGTagCollectionView
import Stevia
class CardCampaignsCell: UITableViewCell, TTGTextTagCollectionViewDelegate {
    
    var imageCard: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imageTop")
        
        return imageView
    }()
    
    let heyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Fashion Promo XYZ"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Sunday 12 Jan - Monday 13 Jan, 12500 Impressions, $3.55"
        return label
    }()

    let viewLabel: UILabel = {
       let label = UILabel()
       label.descriptLabel()
       label.text = "100 Watching"
       return label
    }()
    
    let tagCollectionView = TTGTextTagCollectionView()
    
    let underline: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        config()
        setupLayout()
    }
    
    func config() {
        tagCollectionView.alignment = .center
        tagCollectionView.delegate = self
        let config = TTGTextTagConfig()
        config.backgroundColor = .white
        config.borderColor = .lightGray
        config.textColor = .black
        config.borderWidth = 1
        config.cornerRadius = 15
        
        tagCollectionView.addTags(["Badda", "Gulshan", "+3 More"], with: config)
    }
    
    func setupLayout() {
        self.sv(imageCard, heyLabel, descriptLabel, viewLabel, tagCollectionView, underline)
        self.layout(
            0,
            |imageCard| ~ 250,
            16,
            |-heyLabel-100-viewLabel-| ~ 16,
            4,
            |-descriptLabel ~ 40,
            8,
            |tagCollectionView-115-| ~ 40,
            24,
            |underline| ~ 1,
            24
        )
    }
    

}
