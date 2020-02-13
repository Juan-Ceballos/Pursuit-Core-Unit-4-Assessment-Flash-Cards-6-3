//
//  CreateFlashcardController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import DataPersistence

// create/save? into Flashcard Object

class CreateFlashcardController: UIViewController {
    
    var dataPersistence: DataPersistence<Flashcard>!
    private let createFlashCardView = CreateFlashcardView()
    
    override func loadView()  {
        view = createFlashCardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        createFlashCardView.descriptionTextView.delegate = self
        createFlashCardView.secondDescriptionTextView.delegate = self
        createFlashCardView.termTextField.delegate = self
    }
    
}

extension CreateFlashcardController: UITextFieldDelegate  {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension CreateFlashcardController: UITextViewDelegate   {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "enter description" && textView.textColor == .systemGray    {
            textView.text = ""
            textView.textColor = .black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == ""  {
            textView.text = "enter description"
            textView.textColor = .systemGray
        }
    }
    
}
