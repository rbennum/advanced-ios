//
//  SplashNavigationVC.swift
//  AdvancedProject
//
//  Created by Bening Ranum on 19/04/24.
//

import Foundation
import UIKit

class SplashNavigationVC: UINavigationController {
    override func viewWillAppear(_ animated: Bool) {
        self.navigationBar.isHidden = true
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.tabBarController?.tabBar.isHidden = true
        super.viewWillDisappear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}
