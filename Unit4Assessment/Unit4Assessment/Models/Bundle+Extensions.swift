//
//  Bundle+Extensions.swift
//  Unit4Assessment
//
//  Created by Juan Ceballos on 2/11/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation

extension Bundle    {
    static func readRawJSONData(filename: String, ext: String) -> Data  {
        
        guard let sourceURL = Bundle.main.url(forResource: filename, withExtension: ext)
            else    {
                fatalError()
        }
        
        var data: Data!
        
        do  {
            data = try Data.init(contentsOf: sourceURL)
        }
        catch   {
            fatalError()
        }
        return data
    }
}
