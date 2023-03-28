//
//  OptionScreen.swift
//  Super_Password
//
//  Created by Jadiê on 27/03/23.
//

import UIKit

protocol OptionScreenProtocol: class {
    func actionGenerateButton()
}

class OptionScreen: UIView {
    
    private weak var delegate: OptionScreenProtocol?
    
    func delegate(delegate:OptionScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Gerador de senhas"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 30)
        return lb
    }()
    
    lazy var quantityLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Quantidade de senhas:"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var quantityTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.keyboardType = .default
        tf.backgroundColor = .white
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var totalLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Total de caracteres:"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var totalTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.keyboardType = .default
        tf.backgroundColor = .white
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var useLowerCaseLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Usar letras minúsculas:"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var useLowerCaseSwitch: UISwitch = {
        let sw = UISwitch()
        sw.translatesAutoresizingMaskIntoConstraints = false
        sw.isOn = true
        sw.isEnabled = true
        sw.onTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        return sw
    }()
    
    lazy var useUpperCaseLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Usar letras maiúsculas:"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var useUpperCaseSwitch: UISwitch = {
        let sw = UISwitch()
        sw.translatesAutoresizingMaskIntoConstraints = false
        sw.isOn = true
        sw.isEnabled = true
        sw.onTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        return sw
    }()
    
    lazy var useNumberLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Usar Números:"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var useNumberSwitch: UISwitch = {
        let sw = UISwitch()
        sw.translatesAutoresizingMaskIntoConstraints = false
        sw.isOn = true
        sw.isEnabled = true
        sw.onTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        return sw
    }()
    
    lazy var useCharacterLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Usar caracteres especiais:"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var useCharacterSwitch: UISwitch = {
        let sw = UISwitch()
        sw.translatesAutoresizingMaskIntoConstraints = false
        sw.isOn = true
        sw.isEnabled = true
        sw.onTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        return sw
    }()
    
    lazy var generateButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Gerar senha", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        btn.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
        btn.addTarget(self, action: #selector(self.tappedGenerate), for: .touchUpInside)
        return btn
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSuperView()
        self.setUpConstrainsts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate){
        self.quantityTextField.delegate = delegate
        self.totalTextField.delegate = delegate
    }
    
    @objc private func tappedGenerate() {
        self.delegate?.actionGenerateButton()
    }
    
    private func configSuperView() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.quantityLabel)
        self.addSubview(self.quantityTextField)
        self.addSubview(self.totalLabel)
        self.addSubview(self.totalTextField)
        self.addSubview(self.useLowerCaseLabel)
        self.addSubview(self.useLowerCaseSwitch)
        self.addSubview(self.useUpperCaseLabel)
        self.addSubview(self.useUpperCaseSwitch)
        self.addSubview(self.useNumberLabel)
        self.addSubview(self.useNumberSwitch)
        self.addSubview(self.useCharacterLabel)
        self.addSubview(self.useCharacterSwitch)
        self.addSubview(self.generateButton)
    }
    
    private func setUpConstrainsts() {
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.quantityLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor,constant: 40),
            self.quantityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.quantityLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -120),
            
            self.quantityTextField.topAnchor.constraint(equalTo: self.quantityLabel.topAnchor),
            self.quantityTextField.leadingAnchor.constraint(equalTo: self.quantityLabel.trailingAnchor, constant: 20),
            self.quantityTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            self.totalLabel.topAnchor.constraint(equalTo: self.quantityLabel.bottomAnchor, constant: 20),
            self.totalLabel.leadingAnchor.constraint(equalTo: self.quantityLabel.leadingAnchor),
            self.totalLabel.trailingAnchor.constraint(equalTo: self.quantityLabel.trailingAnchor),
            
            self.totalTextField.topAnchor.constraint(equalTo: self.totalLabel.topAnchor),
            self.totalTextField.trailingAnchor.constraint(equalTo: self.quantityTextField.trailingAnchor),
            self.totalTextField.leadingAnchor.constraint(equalTo: self.quantityTextField.leadingAnchor),
            
            self.useLowerCaseLabel.topAnchor.constraint(equalTo: self.totalLabel.bottomAnchor, constant: 20),
            self.useLowerCaseLabel.leadingAnchor.constraint(equalTo: self.quantityLabel.leadingAnchor),
            self.useLowerCaseLabel.trailingAnchor.constraint(equalTo: self.quantityLabel.trailingAnchor),
            
            self.useLowerCaseSwitch.topAnchor.constraint(equalTo: self.useLowerCaseLabel.topAnchor),
            self.useLowerCaseSwitch.leadingAnchor.constraint(equalTo: self.quantityTextField.leadingAnchor),
            self.useLowerCaseSwitch.trailingAnchor.constraint(equalTo: self.quantityTextField.trailingAnchor),
            self.useLowerCaseSwitch.centerYAnchor.constraint(equalTo: self.useLowerCaseLabel.centerYAnchor),
            
            self.useUpperCaseLabel.topAnchor.constraint(equalTo: self.useLowerCaseLabel.bottomAnchor, constant: 20),
            self.useUpperCaseLabel.leadingAnchor.constraint(equalTo: self.quantityLabel.leadingAnchor),
            self.useUpperCaseLabel.trailingAnchor.constraint(equalTo: self.quantityLabel.trailingAnchor),
            
            self.useUpperCaseSwitch.topAnchor.constraint(equalTo: self.useUpperCaseLabel.topAnchor),
            self.useUpperCaseSwitch.centerYAnchor.constraint(equalTo: self.useUpperCaseLabel.centerYAnchor),
            self.useUpperCaseSwitch.leadingAnchor.constraint(equalTo: self.quantityTextField.leadingAnchor),
            self.useUpperCaseSwitch.trailingAnchor.constraint(equalTo: self.quantityTextField.trailingAnchor),
            
            self.useNumberLabel.topAnchor.constraint(equalTo: self.useUpperCaseLabel.bottomAnchor, constant: 20),
            self.useNumberLabel.leadingAnchor.constraint(equalTo: self.quantityLabel.leadingAnchor),
            self.useNumberLabel.trailingAnchor.constraint(equalTo: self.quantityLabel.trailingAnchor),
            
            self.useNumberSwitch.topAnchor.constraint(equalTo: self.useNumberLabel.topAnchor),
            self.useNumberSwitch.centerYAnchor.constraint(equalTo: self.useNumberLabel.centerYAnchor),
            self.useNumberSwitch.leadingAnchor.constraint(equalTo: self.quantityTextField.leadingAnchor),
            self.useNumberSwitch.trailingAnchor.constraint(equalTo: self.quantityTextField.trailingAnchor),
            
            self.useCharacterLabel.topAnchor.constraint(equalTo: self.useNumberLabel.bottomAnchor, constant: 20),
            self.useCharacterLabel.leadingAnchor.constraint(equalTo: self.quantityLabel.leadingAnchor),
            self.useCharacterLabel.trailingAnchor.constraint(equalTo: self.quantityLabel.trailingAnchor),
            
            self.useCharacterSwitch.topAnchor.constraint(equalTo: self.useCharacterLabel.topAnchor),
            self.useCharacterSwitch.centerYAnchor.constraint(equalTo: self.useCharacterLabel.centerYAnchor),
            self.useCharacterSwitch.leadingAnchor.constraint(equalTo: self.quantityTextField.leadingAnchor),
            self.useCharacterSwitch.trailingAnchor.constraint(equalTo: self.quantityTextField.trailingAnchor),
            
            self.generateButton.topAnchor.constraint(equalTo: self.useCharacterLabel.bottomAnchor, constant: 30),
            self.generateButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.generateButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.generateButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.generateButton.heightAnchor.constraint(equalToConstant: 50)
           
            
        ])
    }
}
