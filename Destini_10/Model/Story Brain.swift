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
    
    mutating func nextStory(_ userChoice: String) {
        if userChoice == story[storyNumber].choice1 {
            storyNumber += 1
        } else  {
            storyNumber += 2
        }
    }
    
    func getStoryText() -> String {
        return story[storyNumber].title
    }
    
    func getStoryChoice1() -> String {
        return story[storyNumber].choice1
    }
    
    func getStoryChoice2() -> String {
        return story[storyNumber].choice2
    }
}
