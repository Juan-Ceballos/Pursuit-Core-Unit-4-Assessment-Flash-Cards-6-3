//
//  CreateFlashcardController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class CreateFlashcardController: UIViewController {

    private let createFlashCardView = CreateFlashcardView()
    
    override func loadView()  {
        view = createFlashCardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
    }

}
