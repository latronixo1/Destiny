//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    //нажатие кнопки
    @IBAction func choiseMade(_ sender: UIButton) {
        //Проверка ответа пользовалеля
        let userAnswer: String
        
        //безопасно извлекаем текст кнопки
        if let buttonPressed = sender.titleLabel?.text {
            userAnswer = buttonPressed
        } else {
            print("нажата неверная кнопка")
            return
        }
        
        //отправляем ответ пользователя в мозг
        storyBrain.checkAnswer(userAnswer)
        
        //отображаем новую историю
        updateUI()
    }
    
    //отображение новой истории
    func updateUI() {
        let nextStory = storyBrain.getNextStory()
        
        storyLabel.text = nextStory[0]
        choice1Button.setTitle(nextStory[1], for: .normal)
        choice2Button.setTitle(nextStory[2], for: .normal)

    }
}

