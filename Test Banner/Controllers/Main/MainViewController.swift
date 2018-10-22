//
//  MainViewController.swift
//  Test Banner
//
//  Created by Jaja Yting on 22/10/2018.
//  Copyright © 2018 Jaja Yting. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let viewHeight = UIScreen.main.bounds.height
        let preferredHeight = viewHeight * 0.3
        let bannerViewController = BannerViewController.newInstance(height: preferredHeight)
        
        self.stackView.addArrangedSubview(bannerViewController.view)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
}
