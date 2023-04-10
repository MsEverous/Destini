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
    var choice1Destination: Int
    var choice2Destination: Int
    
    init(t: String, c1: String, d1: Int, c2: String, d2: Int) {
        title = t
        choice1 = c1
        choice2 = c2
        choice1Destination = d1
        choice2Destination = d2
    }
}
