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
        tv.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu lorem non enim egestas laoreet eu ut enim. Suspendisse a pellentesque lectus. Etiam convallis justo sed felis bibendum, a aliquet tortor sagittis. Fusce sagittis eu nisi sed aliquet. Phasellus libero nisi, faucibus vel ultrices vel, suscipit at magna. Etiam varius nec enim ac ullamcorper. Vestibulum commodo iaculis ipsum, sed mollis magna malesuada ut. Morbi consequat tempus nisl, hendrerit mattis ligula placerat eget. Quisque sed molestie sem, ultricies consequat ex. Integer imperdiet, lorem vitae efficitur aliquet, nisi velit semper ex, id condimentum tellus mauris sit amet diam. Sed sem leo, suscipit a elementum quis, tempor eu felis. In at turpis imperdiet, auctor leo ut, commodo metus. Sed quis maximus metus, ac scelerisque lectus. Curabitur dictum ex vitae tortor vulputate auctor."
        
        return tv
    }()

   
    
    
    private func configSuperView() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.listTextView)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.listTextView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 30),
            self.listTextView.heightAnchor.constraint(equalToConstant: 300),
            self.listTextView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 20),
            self.listTextView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor,constant: -20),
        ])
    }
    
    
    
}
