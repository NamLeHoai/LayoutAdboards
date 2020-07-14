//
//  NormalVC.swift
//  AdBoards
//
//  Created by Nam on 6/17/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
import BetterSegmentedControl
class NormalVC: UIViewController {
    
    let cardTableView = UITableView()
    
    var cardsImage = ["Single","Single1"]
    
    let blurView = UIView()
    
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
        view.sv(cardTableView)
        
        let iconsSegmentedControl = BetterSegmentedControl(
        frame: CGRect(x: 0.0, y: 400.0, width: view.bounds.width / 3, height: 30.0),
        segments: IconSegment.segments(withIcons: [#imageLiteral(resourceName: "facebook"),
                                                   #imageLiteral(resourceName: "twitter")],
                                       iconSize: CGSize(width: 20.0, height: 20.0),
                                       normalIconTintColor: .white,
                                       selectedIconTintColor: UIColor(red: 0.16, green: 0.64, blue: 0.94, alpha: 1.00)),
        options: [.cornerRadius(15.0),
                  .backgroundColor(UIColor(red: 0.16, green: 0.64, blue: 0.94, alpha: 1.00)),
                  .indicatorViewBackgroundColor(.white)])
        cardTableView.sv(CreateButton, blurView, iconsSegmentedControl)
        
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

//        cardTableView
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
