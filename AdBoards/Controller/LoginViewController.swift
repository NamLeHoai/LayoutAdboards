//
//  LoginViewController.swift
//  AdBoards
//
//  Created by Nam on 6/10/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class LoginViewController: UIViewController {
        
    override func viewDidLayoutSubviews() {
        loginButton.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
//        loginButton.backgroundColor = .red
        
        footerLabel.updateGradientTextColor(gradientColors: [UIColor.color1(),UIColor.color2()])
    }

    let logo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    
    let headerLabel: UILabel = {
           let label = UILabel()
            label.text = "AdBoards"
            label.font = .boldSystemFont(ofSize: 26)
            label.textAlignment = .center
            return label
        }()
        
        let subHeaderLabel: UILabel = {
            let label = UILabel()
            label.text = "Grow your business"
            label.font = UIFont.systemFont(ofSize: 14)
            label.textAlignment = .center
            label.textColor = .gray
            return label
        }()
        
        let videoImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "Illustration")
            return imageView
        }()
        
        let loginButton: UIButton = {
            let button = UIButton(type: .custom)
            button.setTitle("Login", for: .normal)
            button.gradientButton("account")
            button.layer.cornerRadius = 6
            return button
        }()
        
        let startedButton: UIButton = {
            let button = UIButton()
            button.setTitle("Get Started", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .white
            return button
        }()
        
        let footerLabel: UILabel = {
            let label = UILabel()
            label.text = "Term or service"
            label.font = UIFont.systemFont(ofSize: 13)
            label.textAlignment = .center
            return label
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
        config()
    }
    
    func setupLayout() {
        
        view.sv(logo, headerLabel, subHeaderLabel, videoImageView, loginButton, startedButton, footerLabel)
        
        view.layout(
            50,
            logo.height(55).width(60.43),
            17,
            |-124-headerLabel-124-| ~ 28,
            8,
            |-121-subHeaderLabel-121-| ~ 28,
            37,
            |-videoImageView-| ~ 364,
            31,
            |-20-loginButton-20-| ~ 48,
            16,
            |-20-startedButton-20-| ~ 48,
            16,
            |-footerLabel-|
            
            
        )
        logo.centerHorizontally()        
    }

    func config() {
        startedButton.addTarget(self, action: #selector(onLogin), for: .touchUpInside)
        self.navigationController?.hideTransparentNavigationBar()
        startedButton.shadow()
        loginButton.shadow()
    }
    
    
    @objc func onLogin() {
        let Expertise = ExpertiseVC()
        self.navigationController?.pushViewController(Expertise, animated: true)
        
    }

}
