//
//  MainView.swift
//  DataFlow
//
//  Created by Анатолий Фетелеу on 06.04.2023.
//

import UIKit
import SnapKit


class MainView: UIView {
    
    let labelView: UILabel = {
        let label = UILabel()
        label.text = "¯\\_(ツ)_/¯"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let detailButtonView: UIButton = {
        let button = UIButton()
        button.setTitle("Show details", for: .normal)
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
        stack.spacing = 50
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
        
        verticalStackView.addArrangedSubview(labelView)
        verticalStackView.addArrangedSubview(detailButtonView)
    }
    
    private func setupConstraints() {
        setVerticalStackViewConstraints()
    }
    
    private func setVerticalStackViewConstraints() {
        verticalStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }
}
