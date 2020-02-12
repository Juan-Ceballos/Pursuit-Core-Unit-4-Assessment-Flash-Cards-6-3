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
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    public lazy var cellImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        //image.backgroundColor = .red
        //image.alpha = 0
        return image
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
        setupImageViewConstraints()
        setupTermLabelTextConstraints()
    }
    
    
    private func setupImageViewConstraints()    {
        addSubview(cellImage)
        
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            cellImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            cellImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            cellImage.topAnchor.constraint(equalTo: topAnchor),
            cellImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
    }
    
    private func setupTermLabelTextConstraints()   {
        addSubview(termLabel)
        
        termLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            termLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            termLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            termLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}

