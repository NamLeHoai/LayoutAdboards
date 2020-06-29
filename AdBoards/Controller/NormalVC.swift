//
//  NormalVC.swift
//  AdBoards
//
//  Created by Nam on 6/17/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia

class NormalVC: UIViewController {
    
    let cardTableView = UITableView()
    
    var cardsImage = ["Single","Single1"]
    
    let gradientView = UIView()
    
    let CreateButton: UIButton = {
        let button = UIButton()
        button.gradientButton("account")
        button.setTitle("Use", for: .normal)
        button.addTarget(self, action: #selector(onCreate), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupLayout()
        config()
    }
    
    func setupLayout() {
//        view.sv(cardTableView)
//        view.layout(
//            122,
//            |-16-cardTableView-16-|,
//            0
////            -224,
////            |gradientView| ~ 224
//        )
        view.addSubview(cardTableView)
        view.addSubview(CreateButton)
        view.addSubview(gradientView)
//        view.addSubview()
        
        cardTableView.translatesAutoresizingMaskIntoConstraints = false
        cardTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 122).isActive = true
        cardTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        cardTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        cardTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
    }
    
    func config() {
        cardTableView.delegate = self
        cardTableView.dataSource = self
        cardTableView.register(CardCampaignsCell.self, forCellReuseIdentifier: "CardCampaignsCell")
//        gradientView.backgroundColor = .white
        
//        tabBarView.delegate = self
    }
    
    @objc func onCreate() {
        
    }
    
    
}

extension NormalVC: UITableViewDataSource, UITableViewDelegate , UITabBarControllerDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCampaignsCell", for: indexPath) as! CardCampaignsCell
        cell.imageCard.image = UIImage(named: cardsImage[indexPath.row])
        return cell
    }
    
    
}
