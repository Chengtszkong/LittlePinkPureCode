//
//  HomeViewController.swift
//  LittlePinkPureCode
//
//  Created by Chengtszkong on 2025/1/12.
//

import UIKit

class HomeViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello world!"
        label.translatesAutoresizingMaskIntoConstraints = false // 使用 Auto layout
        return label
    }()
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("点击我", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.backgroundColor = UIColor.systemBlue
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "TintGrayColor")
        navigationItem.title = "我的动态标题"
        
        view.addSubview(titleLabel)
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
            // titleLabel 约束
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            // actionButton 约束
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            actionButton.widthAnchor.constraint(equalToConstant: 96),
            actionButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        actionButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        print("被点击了")
    }
    
}
