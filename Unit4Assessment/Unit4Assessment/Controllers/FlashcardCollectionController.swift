//
//  FlashcardCollectionController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

//
//  FlashcardCollection.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import DataPersistence

class FlashcardCollectionController: UIViewController {

    var dataPersistence: DataPersistence<Flashcard>!
    private let flashCardView = FlashcardCollectionView()
    
    var flashcards = [Flashcard]()
    
    override func loadView() {
        view = flashCardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flashCardView.flashCardCollectionView.dataSource = self
        view.backgroundColor = .systemGray
    }

}

extension FlashcardCollectionController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        flashcards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "flashcardCell", for: indexPath) as! FlashCardCollectionCell
        
        cell.backgroundColor = .white
        
        return cell

    }
    
}

