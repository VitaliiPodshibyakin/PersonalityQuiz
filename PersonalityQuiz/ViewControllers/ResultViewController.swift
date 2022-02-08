//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Alexey Efimov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var navigationBar: UINavigationItem!
        
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var characterLabel: UILabel!
    
    var answers: [Answer] = []
    var numberOfQuestions = 0
    private var animalDictionary: [String:Int] = [:]
    private var maxValue: [String:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.hidesBackButton = true
        animalCount()
        findMax()
        
    }
    
    private func animalCount () -> [String:Int] {
        var dogCount = 0
        var catCount = 0
        var turtleCount = 0
        var rabbitCount = 0
        
        for answer in answers {
            if answer.animal == .dog {
                dogCount += 1
            }
            if answer.animal == .cat {
                catCount += 1
            }
            if answer.animal == .turtle {
                turtleCount += 1
            }
            if answer.animal == .rabbit {
                rabbitCount += 1
            }
            animalDictionary = ["dog":dogCount, "cat":catCount, "turtle":turtleCount, "rabbit":rabbitCount]
        }
        return animalDictionary
    }

    private func findMax () -> [String:Int]{
        for (animal, animalCount) in animalDictionary {
                if animalCount == numberOfQuestions {
                    maxValue[animal] = animalCount
                } else if animalCount == numberOfQuestions - 1 {
                    maxValue[animal] = animalCount
                }
            }
        return maxValue
    }
}
