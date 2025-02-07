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
        Story(
            title: "У вашего автомобиля лопнула шина на извилистой дороге в глуши, где нет сотовой связи. Вы решили путешествовать автостопом. Рядом с вами с грохотом останавливается ржавый пикап. Мужчина в широкополой шляпе с бездушными глазами открывает тебе пассажирскую дверь и спрашивает: \"Подвезти, парень?\"",
            choice1: "Я сажусь. Спасибо за помощь!", choice1Destination: 2,
            choice2: "Лучше сначала спроси его, не убийца ли он.", choice2Destination: 1
        ),
        Story(
            title: "Он медленно кивает, не обращая внимания на вопрос.",
            choice1: "По крайней мере, он честен. Я сажусь.", choice1Destination: 2,
            choice2: "Погоди, я знаю, как менять колесо.", choice2Destination: 3
        ),
        Story(
            title: "Когда вы начинаете ехать, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он становится все злее. Он просит вас открыть бардачок. Внутри вы обнаруживаете окровавленный нож, два отрезанных пальца и кассету с записью Элтона Джона. Он тянется к бардачку.",
            choice1: "Я люблю Элтона Джона! Передаю ему кассету.", choice1Destination: 5,
            choice2: "Или он, или я! Ты берешь нож и закалываешь его.", choice2Destination: 4
        ),
        Story(
            title: "Что? Такой ловкач! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев в большинстве взрослых возрастных групп?",
            choice1: "Конец", choice1Destination: 0,
            choice2: "истории", choice2Destination: 0
        ),
        Story(
            title: "Когда вы перелетаете через ограждение и несетесь к зазубренным скалам внизу, вы размышляете о сомнительной мудрости пырнуть кого-то ножом, когда он ведет машину, в которой вы находитесь.",
            choice1: "Конец", choice1Destination: 0,
            choice2: "истории", choice2Destination: 0
        ),
        Story(
            title: "Вы сближаетесь с убийцей, напевая куплеты из \"Сможешь ли ты почувствовать любовь этой ночью\". Он высаживает тебя в соседнем городе. Перед отъездом он спрашивает, не знаешь ли ты хороших мест, где можно спрятать тела. Ты отвечаешь: \"Попробуй на пирсе\".",
            choice1: "Конец", choice1Destination: 0,
            choice2: "истории", choice2Destination: 0
        )
    ]
    
    var questionNumber = 0
    
    mutating func checkAnswer (_ userAnswer: String) {
        if userAnswer == stories[questionNumber].choice1 {
            questionNumber = stories[questionNumber].choice1Destination
        } else {
            questionNumber = stories[questionNumber].choice2Destination
        }
    }
    
    func getNextStory() -> [String] {
        return Array(arrayLiteral: stories[questionNumber].title, stories[questionNumber].choice1, stories[questionNumber].choice2)
    }
}
