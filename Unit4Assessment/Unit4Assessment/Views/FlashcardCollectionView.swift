//
//  FlashcardCollectionView.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class FlashcardCollectionView: UIView {
    
    public lazy var flashCardCollectionView: UICollectionView =   {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 400, height: 400)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.register(FlashCardCollectionCell.self, forCellWithReuseIdentifier: "flashcardCell")
        collectionView.backgroundColor = .white
        return collectionView
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
        setupCollectionViewConstraints()
    }
    
    private func setupCollectionViewConstraints()   {
        addSubview(flashCardCollectionView)
        
        flashCardCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            flashCardCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            flashCardCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            flashCardCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            flashCardCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
        
        ])
    }
    
    
}
