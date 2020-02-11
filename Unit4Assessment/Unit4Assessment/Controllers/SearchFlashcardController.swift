//
//  SearchFlashcardController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class SearchFlashcardController: UIViewController {

    private let searchFlashcardView = SearchFlashcardView()
    
    override func loadView() {
        view = searchFlashcardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        searchFlashcardView.searchFlashcardCollectionView.dataSource = self
    }

}

extension SearchFlashcardController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "searchFlashcardCell", for: indexPath) as! SearchFlashcardCell
        cell.backgroundColor = .systemOrange
        return cell
    }
    
    
}
