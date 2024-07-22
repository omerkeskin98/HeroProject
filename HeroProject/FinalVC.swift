//
//  FinalVC.swift
//  HeroProject
//
//  Created by Omer Keskin on 22.07.2024.
//


import UIKit
import SnapKit
import Hero

class FinalVC: UIViewController {
    
    
    let finishLabel: UILabel = {
        let label = UILabel()
        label.text = "Congratulations, you did it!"
        label.textColor = .green
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        hero.isEnabled = true
        
        
        setupViews()
        setupConstraints()
        
    }
    
    func setupViews() {

        view.addSubview(finishLabel)
        
    }
    
    func setupConstraints() {
        
        finishLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
        }
    }
    

    
    
}


