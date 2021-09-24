//
//  Questions.swift
//  PersonalityQuiz
//
//  Created by Vedant Mistry on 24/09/21.
//

import Foundation

struct Question{
    var test: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType{
    case single, multiple, ranged
}
