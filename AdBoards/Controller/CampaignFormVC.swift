//
//  CampaignFormVC.swift
//  AdBoards
//
//  Created by Nam on 6/13/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class CampaignFormVC: UIViewController {

    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Few more things"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Please fill out your company information so that we know more about you."
        return label
    }()
    
    let addLogoLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        return label
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "addButton"), for: .normal)
        return button
    }()
    let addView: UIView = {
       let view = UIView()
        return view
    }()
    
    let acceptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Accepted format: jpg,png & svg"
        
        return label
    }()
    
    let dontHaveAccLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Don't have a logo"
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.gradientButton()
        
        return button
    }()
    
    let companyNameView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Company name", formTextField: "Sientefic")
        return view
    }()
    let companyTaglineView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Company Tagline ( Optional )", formTextField: "Sientefic Books")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        config()
        setupLayout()
    }
    
    func setupLayout() {
        
        
        view.sv(heyLabel, descriptLabel, addLogoLabel, addView, companyNameView, companyTaglineView, addLogoLabel, addView, acceptLabel, dontHaveAccLabel, nextButton)
        
        view.layout(
            122,
            |-16-heyLabel-| ~ 28,
            16,
            |-16-descriptLabel-18-| ~ 60,
            16,
            |-16-companyNameView-16-| ~ 70,
            24,
            |-16-companyTaglineView-16-| ~ 70,
            24,
            |-16-addLogoLabel-16-|,
            24,
            |-16-addView-16-| ~ 150,
            8,
            |-16-acceptLabel-16-|,
            4,
            |-16-dontHaveAccLabel-16-|,
            104,
            |-16-nextButton-16-| ~ 48
            
        )
        addView.sv(addButton)
        addButton.centerInContainer()
    }
    
    func config() {
        view.backgroundColor = .white
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        let button = UIButton(type: .custom)
        button.setImage(UIImage (named: "avatar"), for: .normal)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        //button.addTarget(target, action: nil, for: .touchUpInside)
        let avatarImage = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = avatarImage
        self.navigationItem.leftBarButtonItem = backButton
        
        //addView
        addView.backgroundColor = .lightGray
        addView.layer.cornerRadius = 6
        //nextButton
        nextButton.addTarget(self, action: #selector(onNext), for: .touchUpInside)
    }

    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    @objc func onNext() {
        navigationController?.pushViewController(ChoiceTamplateVC(), animated: true)
    }
}
