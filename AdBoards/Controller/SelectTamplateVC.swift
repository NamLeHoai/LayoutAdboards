//
//  SelectTamplateVC.swift
//  AdBoards
//
//  Created by Nam on 6/17/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class SelectTamplateVC: UIViewController {
    
     let imageTop: UIImageView = {
         let imageView = UIImageView()
         imageView.image = UIImage(named: "tugo")
         
         return imageView
     }()
    
    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Yey! Ad created"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Please select how you want to Show your Advert and we will do the rest. Also your advert is saved to your profile"
        return label
    }()
    
    let campaginNameView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Campagin Name", formTextField: "Fashion Promo XYZ")
        return view
    }()
    
    let RegionsView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Regions & Tragetting", formTextField: "Fashion Promo XYZ")
        return view
    }()
    
    let numberOfBillBoardsView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Number of Billboards at a Time", formTextField: "Fashion Promo XYZ")
        return view
    }()
    
    let timeframeView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Timeframe", formTextField: "Sunday 12 Jan - Monday 13 Jann")
        return view
    }()
    
    let visibilityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "12,500"
        return label
    }()
    
    let visibilityImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "visibility")
        
        return imageView
    }()
    
    let eyeSubLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .lightGray
        label.text = "Aprrox. Impression"
        return label
    }()
    
    let paymentButton: UIButton = {
       let button = UIButton()
        button.setTitle("$3.55", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 6
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupLayout()
        config()
    }
    
    func setupLayout() {
        view.sv(imageTop, heyLabel, descriptLabel, campaginNameView, RegionsView, numberOfBillBoardsView, timeframeView, visibilityLabel, visibilityImage, eyeSubLabel, paymentButton)
        view.layout(
            112,
            |-16-imageTop-16-| ~ 200,
            16,
            |-16-heyLabel-16-| ~ 28,
            16,
            |-16-descriptLabel-16-| ~ 60,
            24,
            |-16-campaginNameView-16-| ~ 60,
            24,
            |-16-RegionsView-16-| ~ 60,
            24,
            |-16-numberOfBillBoardsView-16-| ~ 60,
            24,
            |-16-timeframeView-16-| ~ 60,
            24,
            |-16-visibilityLabel-8-visibilityImage-93-paymentButton,
            4,
            |-16-eyeSubLabel.height(20).width(116)
        )
        visibilityLabel.height(26)
        visibilityImage.height(25)
        paymentButton.height(48).width(148)
    }
    
    func config() {
        paymentButton.addTarget(self, action: #selector(onPayment), for: .touchUpInside)
    }
    
    @objc func onPayment() {
        let Donevc = DoneVC()
        navigationController?.pushViewController(Donevc, animated: true)
    }

}
