//
//  ViewController.swift
//  FindIn
//
//  Created by Sakshi Jaiswal on 23/07/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit
import AloeStackView

class ViewController: AloeStackViewController {
    
    let mainView = AloeStackView()
    
    var profileView: UIImageView = {
        let profileView = UIImageView()
        profileView.adjustsImageSizeForAccessibilityContentSizeCategory = true
        let image = UIImage(named: "placeholder")
        profileView.layer.borderWidth = 1.0
        profileView.layer.masksToBounds = false
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.image = image
        profileView.clipsToBounds = true
        profileView.layer.cornerRadius = (image?.size.width)!/2
        return profileView
    }()
    
    var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Name"
        nameLabel.textColor = UIColor.gray
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpNavigationBarView()
        self.setUpProfileView()
        self.setUpNameLabel()
    }


    func setUpNavigationBarView() {
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.isTranslucent = true
        navigationItem.title = "User Detail"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func setUpProfileView() {
//        stackView.setInset(forRows: stackView.getAllRows(), inset: UIEdgeInsets(top: 0, left: 24, bottom: 0, right: -24))
        stackView.addRow(profileView)
        profileView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setUpNameLabel() {
        stackView.addRow(nameLabel)
    }
}

