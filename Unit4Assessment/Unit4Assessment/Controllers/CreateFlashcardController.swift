//
//  CreateFlashcardController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import DataPersistence

class CreateFlashcardController: UIViewController {

    var dataPersistence: DataPersistence<Flashcard>!
    private let createFlashCardView = CreateFlashcardView()
    
    override func loadView()  {
        view = createFlashCardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
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
    
}
