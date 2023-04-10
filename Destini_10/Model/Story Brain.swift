//
//  Story Brain.swift
//  Destini_10
//
//  Created by Лариса Терегулова on 10.04.2023.
//

import Foundation



struct StoryBrain {
    let story:[Story] = [
        Story(t: "Вы видите развилку на дороге", c1: "Повернуть налево", c2: "Повернуть направо"),
        Story(t: "Вы видите тигра", c1: "Позвать на помощь", c2: "Притвориться мертвым"),
        Story(t: "Вы нашли сундук с сокровищами", c1: "Открыть его", c2: "Проверить на ловушки")
]
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        if userChoice == story[storyNumber].choice1 {
            
        }
    }
}
