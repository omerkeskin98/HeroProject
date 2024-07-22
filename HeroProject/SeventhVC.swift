//
//  SeventhVC.swift
//  HeroProject
//
//  Created by Omer Keskin on 22.07.2024.
//

import UIKit
import SnapKit
import Hero

class SeventhVC: UIViewController {
    
    
    let trappedLabel: UILabel = {
        let label = UILabel()
        label.text = "You're trapped, try again!"
        label.textColor = .red
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    
    let upButton: UIButton = {
        let button = UIButton()
        button.setTitle("↑", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        return button
    }()
    
    let leftButton: UIButton = {
        let button = UIButton()
        button.setTitle("←", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        return button
    }()
    
    let rightButton: UIButton = {
        let button = UIButton()
        button.setTitle("→", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        return button
    }()
    
    let downButton: UIButton = {
        let button = UIButton()
        button.setTitle("↓", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        hero.isEnabled = true
        
        
        setupViews()
        setupConstraints()
        trappedLabel.isHidden = true
    }
    
    func setupViews() {
        view.addSubview(leftButton)
        view.addSubview(upButton)
        view.addSubview(rightButton)
        view.addSubview(downButton)
        view.addSubview(trappedLabel)
        
        upButton.addTarget(self, action: #selector(upButtonTapped), for: .touchUpInside)
        downButton.addTarget(self, action: #selector(downButtonTapped), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(rightButtonTapped), for: .touchUpInside)
        leftButton.addTarget(self, action: #selector(leftButtonTapped), for: .touchUpInside)
    }
    
    func setupConstraints() {
        let buttonSize: CGFloat = 50
        let stackView = UIStackView(arrangedSubviews: [leftButton, upButton, rightButton, downButton])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        leftButton.snp.makeConstraints { make in
            make.width.height.equalTo(buttonSize)
        }
        
        upButton.snp.makeConstraints { make in
            make.width.height.equalTo(buttonSize)
        }
        
        rightButton.snp.makeConstraints { make in
            make.width.height.equalTo(buttonSize)
        }
        
        downButton.snp.makeConstraints{ make in
            make.width.height.equalTo(buttonSize)
        }
        
        trappedLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
        }
    }
    
    @objc func upButtonTapped() {
        trappedLabel.isHidden = false
    }
    
    @objc func downButtonTapped(){
        trappedLabel.isHidden = false
    }
    
    @objc func rightButtonTapped(){
        trappedLabel.isHidden = false
    }
    
    @objc func leftButtonTapped(){
        let nextViewController = FinalVC()
        nextViewController.hero.isEnabled = true
        nextViewController.hero.modalAnimationType = .push(direction: .right)
        present(nextViewController, animated: true, completion: nil)
    }
    
    
}

