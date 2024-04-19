//
//  InitialVC.swift
//  AdvancedProject
//
//  Created by Bening Ranum on 19/04/24.
//

import Foundation
import UIKit

class InitialVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { [weak self] timer in
            let vc = ViewController()
            self?.navigationController?.setViewControllers([vc], animated: true)
            timer.invalidate()
        }
    }
}
