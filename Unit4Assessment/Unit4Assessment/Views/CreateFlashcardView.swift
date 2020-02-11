//
//  CreateFlashcardView.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class CreateFlashcardView: UIView {
    
    public lazy var defaultText: String =   {
       return "enter description"
    }()
    
    public lazy var termTextField: UITextField =    {
        let textField = UITextField()
        textField.placeholder = "enter study term"
        textField.backgroundColor = .systemRed
        return textField
    }()
    
    public lazy var descriptionTextView: UITextView =   {
        let textView = UITextView()
        textView.text = defaultText
        textView.textColor = .systemGray
        textView.backgroundColor = .systemRed
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit()   {
        setupTermTextFieldConstraints()
        setupDescriptionTextView()
    }
    
    func setupTermTextFieldConstraints()    {
        addSubview(termTextField)
        
        termTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            termTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            termTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            termTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        
        ])
    }
    
    func setupDescriptionTextView() {
        addSubview(descriptionTextView)
        
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            descriptionTextView.topAnchor.constraint(equalTo: termTextField.bottomAnchor, constant: 20),
            descriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
        
            descriptionTextView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.35)
        ])
    }
    
}
