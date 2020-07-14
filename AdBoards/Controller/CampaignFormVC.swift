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

    var manager: ManagerImagePicker!
    
    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Few more things"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel1()
        label.text = "Please fill out your company information so that we know more about you."
        return label
    }()
    
    let addLogoLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel1()
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
        label.text = "Don't have a logo?"
        label.updateGradientTextColor(gradientColors: [.color1(),.color2()  ])
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.gradientButton("account")
        
        return button
    }()
    
    let companyNameView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Company name", formTextField: "")
        return view
    }()
    
    let companyTaglineView: UIView = {
        let view = UIView()
        view.createFormView(formLabel: "Company Tagline ( Optional )", formTextField: "Sientefic Books")
        return view
    }()
    
    override func viewDidLayoutSubviews() {
        nextButton.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
        nextButton.layer.cornerRadius = 6
    }
    
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
        addView.layout(
            addButton.centerInContainer()
        )
    }
    
    func config() {
        view.backgroundColor = .white
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
        navigationController?.presentTransparentNavigationBar()
        
//        let button = UIButton(type: .custom)
//        //set image for button
//        button.setImage(UIImage(named: "avatar"), for: .normal)
//        let barButton = UIBarButtonItem(customView: button)
//        //assign button to navigationbar
//        self.navigationItem.rightBarButtonItem = barButton
        
        let avatarButton = UIBarButtonItem(image: UIImage(named: "avatar"), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = avatarButton
        
        
        //addView
        addView.backgroundColor = .addArea()
        addView.layer.cornerRadius = 6
        
        //nextButton
        nextButton.addTarget(self, action: #selector(onNext), for: .touchUpInside)
        addButton.addTarget(self, action: #selector(onSelectPhoto(_:)), for: .touchUpInside)
    }

    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    @objc func onNext() {
        navigationController?.pushViewController(ChoiceTamplateVC(), animated: true)
    }
    
    @objc func onSelectPhoto(_ sender: Any) {
        let alert = UIAlertController(title: "App", message: "Chọn ảnh từ", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Huỷ", style: .cancel, handler: nil)
        let camera = UIAlertAction(title: "Máy ảnh", style: .default, handler: { (_) in
            print("Chọn ảnh từ máy ảnh")
            self.manager.fromCamera()
        })
        let libray = UIAlertAction(title: "Thư viện", style: .default, handler: { (_) in
            print("Chọn ảnh từ thư viện")
            self.manager.fromLibrary()
        })
        
        alert.addAction(camera)
        alert.addAction(libray)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}
