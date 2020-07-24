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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpNavigationBarView()
        //view.backgroundColor = .black
    }


    func setUpNavigationBarView() {
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "User Detail"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}

