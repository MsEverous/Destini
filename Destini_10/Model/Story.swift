//
//  Story.swift
//  Destini_10
//
//  Created by Лариса Терегулова on 10.04.2023.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    
    init(t: String, c1: String, c2: String) {
        title = t
        choice1 = c1
        choice2 = c2
    }
}
