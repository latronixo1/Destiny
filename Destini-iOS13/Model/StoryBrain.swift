//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    //массив с историями
    let stories = [
        Story(title: "Вы видите развилку на дороге", choice1: "Поверну налево", choice2: "Поверну направо"),
        Story(title: "Вы видите тигра", choice1: "Позову на помощь", choice2: "Притворюсь мёртвым"),
        Story(title: "Вы видите сундук с сокровищами", choice1: "Открою его", choice2: "Проверю на наличие ловушки"),
    ]
    
    var questionNumber = 0
    
    mutating func checkAnswer (_ userAnswer: String) {
        if userAnswer == stories[questionNumber].choice1 {
            questionNumber = 1
        } else {
            questionNumber = 2
        }
    }
    
    func getNextStory() -> [String] {
        return Array(arrayLiteral: stories[questionNumber].title, stories[questionNumber].choice1, stories[questionNumber].choice2)
    }
}
