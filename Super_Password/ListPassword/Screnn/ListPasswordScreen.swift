//
//  ListPasswordScreen.swift
//  Super_Password
//
//  Created by Jadiê on 28/03/23.
//

import UIKit

class ListPasswordScreen: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configScreenBackground()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var titleLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Lista de senhas"
        lb.textColor = .white
        return lb
    }()
    
    lazy var listTextView: UITextView = {
        let tv =  UITextView(frame: .zero)
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.contentInsetAdjustmentBehavior = .automatic
        tv.textAlignment = NSTextAlignment.justified
        tv.textColor = UIColor.blue
        tv.backgroundColor = UIColor.lightGray
        tv.isEditable = false
        tv.textColor = .white
        tv.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        tv.backgroundColor = UIColor(red: 255/255, green: 187/255, blue: 72/255, alpha: 1.0)
        
        return tv
    }()
    
    lazy var generateAgainButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Gerar novamente", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        btn.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
        btn.addTarget(self, action: #selector(self.tappedGenerate), for: .touchUpInside)
        return btn
    }()
    
    private func configScreenBackground() {
        self.backgroundColor = UIColor(red: 26/255, green: 25/255, blue: 59/255, alpha: 1.0)
    }

    
    private func configSuperView() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.listTextView)
        self.addSubview(self.generateAgainButton)
    }
    
    @objc private func tappedGenerate() {
        print("gerar novamente")
    }
    
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.listTextView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 30),
            self.listTextView.heightAnchor.constraint(equalToConstant: 300),
            self.listTextView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 20),
            self.listTextView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor,constant: -20),
            
            self.generateAgainButton.topAnchor.constraint(equalTo: self.listTextView.bottomAnchor, constant: 50),
            self.generateAgainButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
        ])
    }
    
    
    
}
