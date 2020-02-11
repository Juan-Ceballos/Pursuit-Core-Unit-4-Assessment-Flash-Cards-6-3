//
//  Flashcard.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation

struct Flashcard: Codable    {
    let flash: [FlashcardWrapper]
}

struct FlashcardWrapper: Codable {
    let quizTitle: String
    let facts: [String]
}

extension Flashcard {
    static func fetchIOSQuestions(from data: Data) -> [FlashcardWrapper] {
        var flashcards = [FlashcardWrapper]()
        
        guard let fileURL = Bundle.main.url(forResource: "iOSQuestion", withExtension: "json")
        else    {
            fatalError()
        }
        
        do  {
            let data = try Data(contentsOf: fileURL)
            let flashcardData = try JSONDecoder().decode(Flashcard.self, from: data)
            flashcards = flashcardData.flash
        }
        catch   {
            fatalError()
        }
        
        return flashcards
    }
}
