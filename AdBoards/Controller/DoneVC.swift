//
//  DoneVC.swift
//  AdBoards
//
//  Created by Nam on 6/17/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class DoneVC: UIViewController {

    let centerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "group3")
        
        return imageView
    }()
    
    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Done! "
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.textAlignment = .center
        label.text = "Your ad will be posted in scheduled time. You can check analytics and other information in Dashboard "
        return label
    }()
    
    let HomeButton: UIButton = {
        let button = UIButton()
        button.gradientButton("account")
        button.setTitle("Go to Home", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupLayout()
        config()
    }
    
    func setupLayout() {
        view.sv(centerImage, heyLabel, descriptLabel, HomeButton)
        view.layout(
            154,
            |centerImage|,
            (-8),
            |-30-heyLabel-30-|,
            12,
            |-30-descriptLabel-43-| ~ 60,
            120,
            |-20-HomeButton-20-| ~ 48
        )
        
    }
    
    func config() {
        HomeButton.addTarget(self, action: #selector(goHome), for: .touchUpInside)
    }
    
    @objc func goHome() {
        let Normal = NormalVC()
        navigationController?.pushViewController(Normal, animated: true)
    }

}
