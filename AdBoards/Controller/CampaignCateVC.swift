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
    
    var categorys = ["Automotive", "Arts", "Baby", "Beauty", "Book", "Automotive", "Clothing", "Computers", "UnicornOfLove", "LearnByHeart", "Yellow", "Scientist", "Paradise","Don't stop me now", "E'm all", "Fly to the sky", "Game of thrones", "Hello world", "In the dark", "Kon tum"]
    
    var cateDictionary = [String: [String]]()
    var cateSectionTitle = [String]()
    
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
        textfield.searchTF(name: "question")
        
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
    
    override func viewDidLayoutSubviews() {
        nextButton.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
        nextButton.layer.cornerRadius = 6
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        setupLayout()
        
    }
    
    func config() {
        view.backgroundColor = .white
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
        navigationController?.presentTransparentNavigationBar()
        
        let button = UIButton(type: .custom)
        //set image for button
        button.setImage(UIImage(named: "avatar"), for: .normal)
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.navigationItem.rightBarButtonItem = barButton
        
        //tableView
        cateTableView.delegate = self
        cateTableView.dataSource = self
        cateTableView.register(CategoryCell.self, forCellReuseIdentifier: "CategoryCell")
        cateTableView.separatorColor = .clear
        cateTableView.sectionIndexColor = .black
//        let gradient = getGradientLayer(bounds: cateTableView.)
//        cateTableView.section
//        cateTableView.sectionIndexBackgroundColor = .color1()
        
        
        for cate in categorys {
            // lấy ra kí tự đầu của cate
            let cateKey = String(cate.prefix(1))
            
            if var cateValues = cateDictionary[cateKey] { // lấy ra mảng value với key là cateKey, vì có thể nil nên dùng if var
                //trường hợp k nil, nghĩa là đã có value với key là cateKey -> add cate vào [value]
                cateValues.append(cate)
                // gán lại [value] = cateValues
                cateDictionary[cateKey] = cateValues
            } else { // nếu chưa có mảng giá trị nào với key = cateKey
                cateDictionary[cateKey] = [cate]
            }
        }
        // lấy ra mảng cates và cateSectionTitle
        cateSectionTitle = [String](cateDictionary.keys)
        cateSectionTitle = cateSectionTitle.sorted(by: { $0 < $1}) //sắp xếp theo alphabet -> done =)
        
        nextButton.addTarget(self, action: #selector(onNext), for: .touchUpInside)
        categorys.sort()
    }
    
    func getGradientLayer(bounds : CGRect) -> CAGradientLayer{
    let gradient = CAGradientLayer()
    gradient.frame = bounds
    //order of gradient colors
    gradient.colors = [UIColor.red.cgColor,UIColor.blue.cgColor, UIColor.green.cgColor]
    // start and end points
    gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
    gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
    return gradient
    }
    
    func gradientColor(bounds: CGRect, gradientLayer :CAGradientLayer) -> UIColor? {
    UIGraphicsBeginImageContext(gradientLayer.bounds.size)
      //create UIImage by rendering gradient layer.
    gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
      //get gradient UIcolor from gradient UIImage
    return UIColor(patternImage: image!)
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
        return categorys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        cell.cateLB.text = categorys[indexPath.row]
        cell.checkmarkImg.isHidden = true
        cell.textLabel?.updateGradientTextColor(gradientColors: [.color1(), .color2()])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let cell = tableView.cellForRow(at: indexPath) as! CategoryCell
        if cell.checkmarkImg.isHidden == true {
            cell.checkmarkImg.isHidden = false
            
            cell.cateLB.updateGradientTextColor(gradientColors: [UIColor.color1(), UIColor.color2()])
        } else {
            cell.checkmarkImg.isHidden = true
            cell.cateLB.textColor = .black
            
        }
        
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return cateSectionTitle
    }
    
        
}
