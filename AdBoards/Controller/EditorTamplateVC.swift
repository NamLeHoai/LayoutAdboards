//
//  EditorTamplateVC.swift
//  AdBoards
//
//  Created by Nam on 6/17/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class EditorTamplateVC: UIViewController {
    
    let imageCenter: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imgCenter")
        
        return imageView
    }()
    
    let addBtn: UIButton = {
       let button = UIButton()
        let image = UIImage(named: "add")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let faceidBtn: UIButton = {
       let button = UIButton()
        let image = UIImage(named: "faceid")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let arGlyphBtn: UIButton = {
       let button = UIButton()
        let image = UIImage(named: "Glyph")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let cropBtn: UIButton = {
       let button = UIButton()
        let image = UIImage(named: "crop")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let colorBtn: UIButton = {
       let button = UIButton()
        let image = UIImage(named: "Color")
        button.setImage(image, for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        self.navigationController?.presentTransparentNavigationBar()
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
//        let button = UIButton(type: .custom)
//        button.setTitle("Done", for: .normal)
//        button.frame = CGRect(x: 0.0, y: 0.0, width: 71.0, height: 25.0)
//        let doneButton = UIBarButtonItem(customView: button)
//        self.navigationItem.rightBarButtonItem = doneButton
        self.navigationItem.leftBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(onDone))
        
        setupLayout()
    }
    
    func setupLayout() {
        view.sv(imageCenter, addBtn, faceidBtn, arGlyphBtn, cropBtn, colorBtn)
        view.layout(
            122,
            |imageCenter| ~ 547,
            24,
            |-28-addBtn-43-faceidBtn-43-arGlyphBtn-43-cropBtn-43-colorBtn-28-| ~ 55,
            64
        )
        addBtn.width(25).height(25)
        faceidBtn.width(25).height(25)
        cropBtn.width(25).height(25)
        colorBtn.width(25).height(25)
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func onDone() {
        let selectVC = SelectTamplateVC()
        navigationController?.pushViewController(selectVC, animated: true)
    }

}
