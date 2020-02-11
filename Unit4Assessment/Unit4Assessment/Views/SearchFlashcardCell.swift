//
//  SearchFlashcardCell.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class SearchFlashcardCell: UICollectionViewCell {
    
    public let cellReuseIdentifier = "searchFlashcardCell"
    
    public lazy var termLabel: UILabel =    {
        let label = UILabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func configureCell(flashcard: Flashcard)    {
        termLabel.text = flashcard.quizTitle
    }
    
    func commonInit()   {
        setupTermLabelText()
    }
    
    private func setupTermLabelText()   {
        addSubview(termLabel)
        
        termLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            termLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            termLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        ])
    }
}

