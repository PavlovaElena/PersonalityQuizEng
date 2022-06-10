//
//  Question.swift
//  PersonalityQuizEng
//
//  Created by Елена Павлова on 05.06.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "What food do you prefer?",
                type: .single,
                answers: [
                    Answer(title: "Steak", animal: .dog),
                    Answer(title: "Fish", animal: .cat),
                    Answer(title: "Carrot", animal: .rabbit),
                    Answer(title: "Corn", animal: .turtle)
                ]
            ),
            Question(
                title: "What do you like more?",
                type: .multiple,
                answers: [
                    Answer(title: "Swim", animal: .dog),
                    Answer(title: "Sleep", animal: .cat),
                    Answer(title: "Hug", animal: .rabbit),
                    Answer(title: "Eat", animal: .turtle)
                ]
            ),
            Question(
                title: "Do you like car trips?",
                type: .ranged,
                answers: [
                    Answer(title: "I hate them", animal: .cat),
                    Answer(title: "I'm nervous", animal: .rabbit),
                    Answer(title: "I don't notice", animal: .turtle),
                    Answer(title: "I love them", animal: .dog)
                ]
            ),
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You like being with friends. You surround yourself with people you like and are always ready to help."
        case .cat:
            return "You're in your own mind. You love being alone."
        case .rabbit:
            return "You like everything soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise. Slow and thoughtful person wins at long distances."
        }
    }
}
