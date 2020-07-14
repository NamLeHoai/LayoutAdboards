//
//  ChoiceTamplateVC.swift
//  AdBoards
//
//  Created by Nam on 6/13/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class ChoiceTamplateVC: UIViewController {

    var cards = ["imageTop", "Samples", "imageTop"]
    
    let heyLabel: UILabel = {
        let label = UILabel()
        label.headerLabel()
        label.text = "Start creating"
        return label
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.descriptLabel()
        label.text = "This ad templates are specifically tailored for you. Start with one and then customize it. Oh! we placed the company logo, name & tagline for you. "
        return label
    }()
    
    let searchTF: UITextField = {
       let textfield = UITextField()
        textfield.searchTF(name: "eye")
        textfield.backgroundColor = .lightGray
        textfield.layer.cornerRadius = 10
        return textfield
    }()
    
    let cardTableView: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        cardTableView.delegate = self
        cardTableView.dataSource = self
        cardTableView.showsVerticalScrollIndicator = false
        cardTableView.register(ChoiceTampleCardCell.self, forCellReuseIdentifier: "ChoiceTampleCardCell")
        setuptLayout()
        cardTableView.separatorStyle = .singleLine
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
        navigationController?.presentTransparentNavigationBar()
        
        searchTF.backgroundColor = .addArea()
    }
    
    func setuptLayout() {
        view.sv(heyLabel, descriptLabel, searchTF, cardTableView)
        
        view.layout(
            122,
            |-16-heyLabel-| ~ 28,
            16,
            |-16-descriptLabel-| ~ 64,
            16,
            |-searchTF-| ~ 36,
            20,
            |-17-cardTableView-15-| ~ 200,
            0
        )
    }

    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }

}

extension ChoiceTamplateVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChoiceTampleCardCell", for: indexPath) as! ChoiceTampleCardCell
        cell.imageCard.image = UIImage(named: cards[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DetailVC = DetailTamplateVC()
        navigationController?.pushViewController(DetailVC, animated: true)
    }
}
