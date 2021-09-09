struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        }
        else if lowerQuestion.hasPrefix("hello"){
            return "Why, hello there!"
        }
        else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        }
        return "I’m sorry, I don’t understand the question"
    }
}
