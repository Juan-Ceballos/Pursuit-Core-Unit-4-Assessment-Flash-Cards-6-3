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
    private var isShowingImage = false
    
    public lazy var termLabel: UILabel =    {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    public lazy var addButton: UIButton =   {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        return button
    }()
    
    public lazy var descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.alpha = 0
        textView.textAlignment = .center
        textView.allowsEditingTextAttributes = false
        textView.isSelectable = false
        return textView
    }()
    
    public lazy var cellImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
        return gesture
    }()
    
    private lazy var tapGesture2: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap2(_:)))
        return gesture
    }()
    
    @objc private func didTap(_ gesture: UITapGestureRecognizer)    {
        isShowingImage.toggle()
        self.animate()
    }
    
    @objc private func didTap2(_ gesture: UITapGestureRecognizer)    {
        isShowingImage.toggle()
        self.animate()
    }
    
    private func animate() {
      let duration: Double = 1.0 // seconds
      if isShowingImage {
        UIView.transition(with: self, duration: duration, options: [.transitionFlipFromRight], animations: {
          self.cellImage.alpha = 0.0
          self.descriptionTextView.alpha = 1.0
            print("0 to 1")
        }, completion: nil)
      } else {
        UIView.transition(with: self, duration: duration, options: [.transitionFlipFromLeft], animations: {
          self.cellImage.alpha = 1.0
          self.descriptionTextView.alpha = 0.0
            print("1 to 0")
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
        descriptionTextView.text = flashcard.facts.randomElement()
    }
    
    func commonInit()   {
        setupImageViewConstraints()
        setupTermLabelTextConstraints()
        setupAddButtonConstraints()
        setupDescriptionTextViewConstraints()
        descriptionTextView.isUserInteractionEnabled = true
        descriptionTextView.addGestureRecognizer(tapGesture2)
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
    
    private func setupDescriptionTextViewConstraints()  {
        addSubview(descriptionTextView)
        
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            descriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor),
            descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor),
            descriptionTextView.topAnchor.constraint(equalTo: topAnchor),
            descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func setupAddButtonConstraints()   {
        addSubview(addButton)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            addButton.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        
        ])
    }
    
}

