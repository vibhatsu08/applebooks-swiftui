//
//  Questions.swift
//  PersonalityQuiz
//
//  Created by Vedant Mistry on 24/09/21.
//

import Foundation

struct Question { //made a structure that corresponds with the question
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged //what type of answer is it, depending on the question type
}

struct Answer { //what would the answer contain
    var text: String //the text of the string
    var type: AnimalType //and the animal type a person is based on his answers given
}

enum AnimalType: Character { //enum of a animal type
    case dog = "🐶", cat = "🐱", turtle = "🐢", rabbit = "🐰" //dog, cat, rabbit or turtle
    
    var definition: String {
        switch self {
        case .dog:
            return "you are incredibly outgoing, you surround yourself with the people you love and enjoy activities with your friends."
            
        case .cat:
            return "mischievious yet mild tempered, you enjoy doing things on your own terms."
            
        case .turtle:
            return "you love everything that's soft, you are healthy and full of energy."
            
        case .rabbit:
            return "you are wise beyong your years, and you focus on the details, slow and steady wins the race."
        }
    }
}
