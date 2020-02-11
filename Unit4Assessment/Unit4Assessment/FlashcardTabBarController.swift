//
//  FlashcardTabBarController.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class FlashcardTabBarController: UITabBarController {

    private lazy var flashcardCollectionVC: FlashcardCollection =  {
        let viewController = FlashcardCollection()
        viewController.tabBarItem = UITabBarItem(title: "cards", image: UIImage(systemName: "questionmark"), tag: 0)
        return viewController
    }()
    
    private lazy var createFlashcardCollectionVC: CreateFlashcardController = {
        let viewControlelr = CreateFlashcardController()
        viewControlelr.tabBarItem = UITabBarItem(title: "create", image: UIImage(systemName: "square.and.pencil"), tag: 1)
        return viewControlelr
    }()
    
    private lazy var searchFlaschcardVC: SearchFlashcardController = {
        let viewController = SearchFlashcardController()
        viewController.tabBarItem = UITabBarItem(title: "search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal
        viewControllers = [flashcardCollectionVC, createFlashcardCollectionVC, searchFlaschcardVC]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
