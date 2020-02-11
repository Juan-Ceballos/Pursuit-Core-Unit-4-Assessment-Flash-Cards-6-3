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

class FlashcardCollectionController: UIViewController {

    private let flashCardView = FlashcardCollectionView()
    
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
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "flashcardCell", for: indexPath) as! FlashCardCollectionCell
        
        cell.backgroundColor = .white
        
        return cell

    }
    
}

