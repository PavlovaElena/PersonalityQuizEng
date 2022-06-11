//
//  ResultViewController.swift
//  PersonalityQuizEng
//
//  Created by Elena Pavlova on 09.06.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var descriptionAnimalLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateResults(for: answers)
    }
    
    private func calculateResults(for answers: [Answer]) {
        let animalTypeAnswers = answers.map { $0.animal }
        var animalAnswersDictionary: [Animal : Int] = [:]
        
        for animalType in animalTypeAnswers {
            if let animalCount = animalAnswersDictionary[animalType] {
                animalAnswersDictionary[animalType] = animalCount + 1
            } else {
                animalAnswersDictionary[animalType] = 1
            }
        }
        
        let sortedAnswerDictionary = animalAnswersDictionary.sorted { $0.value > $1.value }
        guard let quizResult = sortedAnswerDictionary.first?.key else { return }
        
        updateUI(with: quizResult)
    }
    
    private func updateUI(with animal: Animal) {
        emojiLabel.text = "You are - \(animal.rawValue)"
        descriptionAnimalLabel.text = animal.definition
    }
}
