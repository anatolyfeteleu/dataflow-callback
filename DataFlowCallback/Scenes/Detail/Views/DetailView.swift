//
//  DetailView.swift
//  DataFlow
//
//  Created by Анатолий Фетелеу on 06.04.2023.
//

import UIKit
import SnapKit


class DetailView: UIView {
    
    let firstButtonView: UIButton = {
        let button = UIButton()
        button.setTitle("First button", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    let secondButtonView: UIButton = {
        let button = UIButton()
        button.setTitle("Second button", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    let thirdButtonView: UIButton = {
        let button = UIButton()
        button.setTitle("Third button", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    let verticalStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 35
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .systemPink
    }
    
    private func setupViews() {
        addSubview(verticalStackView)
        
        verticalStackView.addArrangedSubview(firstButtonView)
        verticalStackView.addArrangedSubview(secondButtonView)
        verticalStackView.addArrangedSubview(thirdButtonView)
    }
    
    private func setupConstraints() {
        setVerticalStackViewConstraints()
    }
    
    private func setVerticalStackViewConstraints() {
        verticalStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.left.equalToSuperview().offset(35)
            $0.right.equalToSuperview().offset(-35)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }
}
