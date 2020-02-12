//
//  Flashcard.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation

struct Flashcard: Codable & Equatable {
    let quizTitle: String
    let facts: [String]
}

extension Flashcard {
    static func fetchIOSQuestions() -> [Flashcard] {
        var flashcards = [Flashcard]()
        
        guard let fileURL = Bundle.main.url(forResource: "iOSQuestions", withExtension: "json")
        else    {
            fatalError()
        }
        
        do  {
            let data = try Data(contentsOf: fileURL)
            let flashcardData = try JSONDecoder().decode([Flashcard].self, from: data)
            flashcards = flashcardData
        }
        catch   {
            fatalError()
        }
        
        return flashcards
    }
}
