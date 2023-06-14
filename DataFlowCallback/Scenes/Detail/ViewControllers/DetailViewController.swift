//
//  DetailViewController.swift
//  DataFlow
//
//  Created by Анатолий Фетелеу on 06.04.2023.
//

import UIKit


class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    var callback: ((String) -> Void)
    
    init(callback: @escaping (String) -> Void) {
        self.callback = callback
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonActions()
    }
}


extension DetailViewController {
    
    private func extractButtonLabel(_ button: UIButton) -> String? {
        return button.titleLabel?.text
    }
    
    private func configureButtonActions() {
        detailView.firstButtonView.addTarget(self, action: #selector(tappedFirstButton), for: .touchUpInside)
        detailView.secondButtonView.addTarget(self, action: #selector(tappedSecondButton), for: .touchUpInside)
        detailView.thirdButtonView.addTarget(self, action: #selector(tappedThirdButton), for: .touchUpInside)
    }
    
    @objc func tappedFirstButton() {
        let label = extractButtonLabel(detailView.firstButtonView)
        callback(label ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func tappedSecondButton() {
        let label = extractButtonLabel(detailView.secondButtonView)
        callback(label ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func tappedThirdButton() {
        let label = extractButtonLabel(detailView.thirdButtonView)
        callback(label ?? "")
        navigationController?.popViewController(animated: true)
    }
    
}


