//
//  ViewController.swift
//  AdvancedProject
//
//  Created by Bening Ranum on 17/04/24.
//

import UIKit

class ViewController: UIViewController {
    private lazy var statusBarPageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Customize the Status Bar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .cyan
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        setupUI()
        setupConstraints()
        setupBinding()
    }
}

private extension ViewController {
    func setupUI() {
        self.view.addSubview(statusBarPageButton)
    }

    func setupConstraints() {
        let safeView = self.view.safeAreaLayoutGuide
        statusBarPageButton.topAnchor
            .constraint(equalTo: safeView.topAnchor, constant: 16)
            .isActive = true
        statusBarPageButton.leadingAnchor
            .constraint(equalTo: safeView.leadingAnchor, constant: 16)
            .isActive = true
        statusBarPageButton.trailingAnchor
            .constraint(equalTo: safeView.trailingAnchor, constant: -16)
            .isActive = true
        statusBarPageButton.heightAnchor
            .constraint(equalToConstant: 48)
            .isActive = true
    }

    func setupBinding() {
        statusBarPageButton.addTapGestureRecognizer {
            let vc = StatusBarCustomizerVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
