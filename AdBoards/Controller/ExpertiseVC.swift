//
//  ExpertiseVC.swift
//  AdBoards
//
//  Created by Nam on 6/10/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class ExpertiseVC: UIViewController {

    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Hey,"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "Welcome to Adwards, It's gonna be easy to grow your bussiness using our interconnected billboards.Choose your expertise to begin."
        return label
    }()
    
    let cardView: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    var cards = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cards = fakeData()
        setupLayout()
        setupTable()
        config()
    }
    
    func config() {
        view.backgroundColor = .white
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
        navigationController?.presentTransparentNavigationBar()
    }
    @objc func goBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func setupLayout() {
        view.sv(heyLabel, descriptLabel, cardView)
        view.layout(
            99,
            |-16-heyLabel-292-| ~ 28,
            16,
            |-16-descriptLabel-18-| ~ 60,
            64,
            |-16-cardView-16-|,
            0
            
        )
        
    }

    func setupTable() {
        cardView.delegate = self
        cardView.dataSource = self
        cardView.register(CardViewCell.self, forCellReuseIdentifier: "CardViewCell")
        cardView.separatorInset = .zero
        cardView.separatorStyle = .none
    }
}

extension ExpertiseVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardViewCell", for: indexPath) as! CardViewCell
        cell.card = cards[indexPath.row]
        cell.shadowForCard()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(CampaignsVC(), animated: true)
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 5
    }    
}
