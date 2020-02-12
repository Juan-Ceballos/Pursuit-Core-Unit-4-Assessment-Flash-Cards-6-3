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
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    public lazy var descriptionTextView: UITextView =   {
        let textView = UITextView()
        textView.text = defaultText
        textView.textColor = .systemGray
        return textView
    }()
    
    public lazy var secondDescriptionTextView: UITextView =   {
        let textView = UITextView()
        textView.text = defaultText
        textView.textColor = .systemGray
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
        setupSecondDescriptionTextView()
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
        
            descriptionTextView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25)
        ])
    }
    
    func setupSecondDescriptionTextView() {
        addSubview(secondDescriptionTextView)
        
        secondDescriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            secondDescriptionTextView.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 11),
            secondDescriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            secondDescriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
        
            secondDescriptionTextView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25)
        ])
    }
    
}
