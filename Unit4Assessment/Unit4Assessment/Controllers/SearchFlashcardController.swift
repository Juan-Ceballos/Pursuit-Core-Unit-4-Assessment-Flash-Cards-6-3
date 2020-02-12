//
//  SearchFlashcardController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import DataPersistence

class SearchFlashcardController: UIViewController {
    
    var dataPersistence: DataPersistence<Flashcard>!
    private let searchFlashcardView = SearchFlashcardView()
    var flashcards = [Flashcard]()
    
    override func loadView() {
        view = searchFlashcardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        searchFlashcardView.searchFlashcardCollectionView.dataSource = self
        searchFlashcardView.searchFlashcardCollectionView.delegate = self
        loadFlahshcards()
    }
    
    func loadFlahshcards()   {
        flashcards = Flashcard.fetchIOSQuestions()
    }
    
}

extension SearchFlashcardController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        flashcards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "searchFlashcardCell", for: indexPath) as! SearchFlashcardCell
        cell.backgroundColor = .systemOrange
        let flashcard = flashcards[indexPath.row]
        cell.configureCell(flashcard: flashcard)
        
        return cell
    }
    
    
}

extension SearchFlashcardController: UICollectionViewDelegate   {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
