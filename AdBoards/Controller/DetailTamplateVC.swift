//
//  DetailTamplateVC.swift
//  AdBoards
//
//  Created by Nam on 6/17/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import TTGTagCollectionView
import Stevia
class DetailTamplateVC: UIViewController {
    
    override func viewDidLayoutSubviews() {
        UseButton.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
    }

    
    let topView = UIView()
    
    let imageTop: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imageTop")
        
        return imageView
    }()

    let topButton: UIButton = {
        let button = UIButton()
        button.setTitle("AR", for: .normal)
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "Got Fashion"
        return label
    }()
    
    let tagCollectionView = TTGTextTagCollectionView()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.text = "Suitable for fashion. If your onto fashion business and want to show how great your products are this template will help you Just to do that. It also includes a minigame when your customers are waiting in traffic to increase ad engagement."
        label.descriptLabel()
        return label
    }()
    let underline: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    let UsagesLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.text = "Usages"
        return label
    }()
    
    let imageBottom: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Samples")
        
        return imageView
    }()
    
    let UseButton: UIButton = {
        let button = UIButton()
        button.gradientButton("account")
        button.setTitle("Use", for: .normal)
        button.addTarget(self, action: #selector(onEditor), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupLayout()
        config()
        
    }
    
    func setupLayout() {
        view.sv(topView, titleLabel, tagCollectionView, descriptLabel, underline, UsagesLabel, imageBottom, UseButton)
        view.layout(
            0,
            |topView| ~ 331,
            
            |-16-titleLabel-16-| ~ 26,
            16,
            |-16-tagCollectionView-16-|,
            16,
            |-16-descriptLabel-20-| ~ 100,
            24,
            |-30-underline.height(1)-30-|,
            24,
            |-16-UsagesLabel-16-| ~ 16,
            16,
            |-16-imageBottom-16-| ~ 226,
            16,
            |-20-UseButton-20-| ~ 48
        )
        topView.sv(imageTop)
        topView.layout(
            0,
            |imageTop|,
            0
        )
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
        
        tagCollectionView.addTags(["Fashion", "Female", "Minigame", "Promo"], with: config)
    }
    
    @objc func onEditor() {
        let EditorVC = EditorTamplateVC()
        navigationController?.pushViewController(EditorVC, animated: true)
    }
    
}

extension DetailTamplateVC: TTGTextTagCollectionViewDelegate {
    
}
