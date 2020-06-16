//
//  CampaignsVC.swift
//  AdBoards
//
//  Created by Nam on 6/12/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class CampaignsVC: UIViewController {
    
    let campaignsLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Campaigns"
        return label
    }()
    
    let avatar: UIImageView = {
        let avatarView = UIImageView()
        avatarView.image = UIImage(named: "avatar")
        
        return avatarView
    }()
    
    let articleImage: UIImageView = {
        let articleImage = UIImageView()
        articleImage.image = UIImage(named: "articleImg")
        
        return articleImage
    }()

    let articleHeader: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Start by Creating a Campaign"
        label.textAlignment = .center
        return label
    }()
    
    let articleSub: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Don’t worry, It’s easy & takes only a few minutes"
        label.textAlignment = .center
        return label
    }()
    
    let CreateButton: UIButton = {
        let button = UIButton()
        button.gradientButton()
        button.setTitle("Create a Campaign", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.hideTransparentNavigationBar()
        view.backgroundColor = .white
        setupLayout()
        config()
    }
    
    func setupLayout() {
        view.sv(campaignsLabel, avatar, articleHeader, articleImage, articleSub, CreateButton)
        
        view.layout(
            69,
            |-16-campaignsLabel-avatar-16-|,
            97,
            |-38-articleImage-38-| ~ 212,
            95,
            |-30-articleHeader-43-|,
            12,
            |-72-articleSub-84-| ~ 40,
            112,
            |-20-CreateButton-20-| ~ 48
        )
        
//        avatar ~ (45)
//        avatar.heightEqualsWidth()
        avatar.height(45).width(45)
    }
    
    func config() {
        CreateButton.addTarget(self, action: #selector(onCreate), for: .touchUpInside)
    }
    
    @objc func onCreate() {
        let CampaignCate = CampaignCateVC()
        navigationController?.pushViewController(CampaignCate, animated: true)
        self.navigationController?.presentTransparentNavigationBar()
    }
    

}
