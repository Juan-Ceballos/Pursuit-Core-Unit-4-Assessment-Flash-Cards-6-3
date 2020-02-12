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
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
        return gesture
    }()
    
    @objc private func didTap(_ gesture: UITapGestureRecognizer)    {
        self.animate()
    }
    
    private var isShowingImage = false

    
    private func animate() {
      let duration: Double = 1.0 // seconds
      if isShowingImage {
        UIView.transition(with: self, duration: duration, options: [.transitionFlipFromRight], animations: {
          self.cellImage.alpha = 1.0
          //self.articleTitle.alpha = 0.0
        }, completion: nil)
      } else {
        UIView.transition(with: self, duration: duration, options: [.transitionFlipFromLeft], animations: {
          self.cellImage.alpha = 0.0
          //self.articleTitle.alpha = 1.0
        }, completion: nil)
      }
    }
    
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
        cellImage.isUserInteractionEnabled = true
        cellImage.addGestureRecognizer(tapGesture)
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

