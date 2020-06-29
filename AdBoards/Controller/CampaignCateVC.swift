//
//  CampaignCateVC.swift
//  AdBoards
//
//  Created by Nam on 6/13/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class CampaignCateVC: UIViewController {
    var categorys = ["Automotive", "Arts", "Baby", "Beauty", "Book", "Automotive", "Clothing", "Computers"]
    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "First"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "We need some information about your bussiness. Start by selecting your bussiness category. You can select more than one category."
        return label
    }()
    
    let searchTF: UITextField = {
       let textfield = UITextField()
        textfield.searchTF(name: "eye")
        textfield.backgroundColor = .lightGray
        
        return textfield
    }()
    
    let cateTableView: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.gradientButton("account")
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        setupLayout()
        
    }
    
    func config() {
        view.backgroundColor = .white
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        let button = UIButton(type: .custom)
        button.setImage(UIImage (named: "avatar"), for: .normal)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        nextButton.addTarget(self, action: #selector(onNext), for: .touchUpInside)
        //button.addTarget(target, action: nil, for: .touchUpInside)
        let avatarImage = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = avatarImage
        self.navigationItem.leftBarButtonItem = backButton
        
        //tableView
        cateTableView.delegate = self
        cateTableView.dataSource = self
        cateTableView.register(CategoryCell.self, forCellReuseIdentifier: "CategoryCell")
    }
    
    func setupLayout() {
        view.sv(heyLabel, descriptLabel, searchTF, cateTableView, nextButton)
        view.layout(
            112,
            |-16-heyLabel-| ~ 28,
            16,
            |-16-descriptLabel-18-| ~ 60,
            16,
            |-searchTF-| ~ 36,
            16,
            |cateTableView| ~ 450,
            16,
            |-20-nextButton-20-| ~ 48
        )
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func onNext() {
        
        navigationController?.pushViewController(CampaignFormVC(), animated: true)
    }
}

extension CampaignCateVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(categorys.count)
        return categorys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        cell.cateLB.text = categorys[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Life is choices")
    }
}
