//
//  SearchFlashcardView.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class SearchFlashcardView: UIView {
    
    public lazy var searchFlashcardCollectionView: UICollectionView =   {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 300, height: 300)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.register(SearchFlashcardCell.self, forCellWithReuseIdentifier: "searchFlashcardCell")
        collectionView.backgroundColor = .systemTeal
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
        setupSearchFlashCardCollectionViewConstraints()
    }
    
    private func setupSearchFlashCardCollectionViewConstraints()   {
        addSubview(searchFlashcardCollectionView)
        
        searchFlashcardCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            searchFlashcardCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            searchFlashcardCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            searchFlashcardCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchFlashcardCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
            
        ])
    }
    
    
}



