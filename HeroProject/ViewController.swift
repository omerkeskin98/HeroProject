//
//  ViewController.swift
//  HeroProject
//
//  Created by Omer Keskin on 18.07.2024.
//

import UIKit
import SnapKit
import Hero


class WelcomeViewController: UIViewController {
    
    let entryVC = FirstVC()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to the maze. If you succeed, you are ready for the real world"
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(nextButton)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc private func nextButtonTapped() {
        let entryVC = FirstVC()
        entryVC.modalPresentationStyle = .fullScreen
        present(entryVC, animated: true, completion: nil)
    }

}


