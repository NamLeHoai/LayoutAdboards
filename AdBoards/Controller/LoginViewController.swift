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
           let button = UIButton()
            button.setTitle("Login", for: .normal)
            button.gradientButton()
            return button
        }()
        
        let startedButton: UIButton = {
            let button = UIButton()
            button.setTitle("Get Started", for: .normal)
            button.setTitleColor(.black, for: .normal)
            let leftColor = UIColor(red: 0.10, green: 0.196, blue: 0.186, alpha: 1.0)
            let rightColor = UIColor(red: 0.43, green: 0.218, blue: 0.142, alpha: 1.0)
            button.gradientButton()
            return button
        }()
        
        let footerLabel: UILabel = {
            let label = UILabel()
            label.text = "Term or service"
            label.font = UIFont.systemFont(ofSize: 13)
            label.textAlignment = .center
            label.textColor = UIColor(red: 0.10, green: 0.196, blue: 0.186, alpha: 1.0)
            return label
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.hideTransparentNavigationBar()
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
            footerLabel.height(15).width(102)
            
            
        )
        logo.centerHorizontally()
        footerLabel.centerHorizontally()
        
    }

    func config() {
        loginButton.addTarget(self, action: #selector(onLogin), for: .touchUpInside)
    }
    
    @objc func onLogin() {
        let Expertise = ExpertiseVC()
//        self.navigationController?.hideTransparentNavigationBar()
        self.navigationController?.presentTransparentNavigationBar()
        self.navigationController?.pushViewController(Expertise, animated: true)
        
    }

}
