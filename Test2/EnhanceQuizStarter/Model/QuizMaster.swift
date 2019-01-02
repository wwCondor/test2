//
//  QuizMaster.swift
//  EnhanceQuizStarter
//
//  Created by Wouter Willebrands on 23/12/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class QuizMaster {
    
    struct TriviaQuestions {
        let question: String
        let answers: [String]
        let correctAnswer: Int
        
    }
    
    let questionOne = TriviaQuestions(
        question: "What is the correct syntax for a constant?",
        answers: ["const", "var", "let", "con"],
        correctAnswer: 3)
    
    
    let questionTwo = TriviaQuestions(
        question: "What is the correct syntax for a variable",
        answers: ["const", "var", "let", "con"],
        correctAnswer: 2)
    
    let questionThree = TriviaQuestions(
        question: "A sequence of characters surrounded by double quotes is called a",
        answers: ["String Literal", "Global Variable", "Literal Expression", "Quote sequence"],
        correctAnswer: 1)
    
    let questionFour = TriviaQuestions(
        question: "What statement can be used to stop the execution of a loop, if, or switch statement?",
        answers: ["Stop", "End", "Exit", "Break"],
        correctAnswer: 4)
    
    let questionFive = TriviaQuestions(
        question: "Which of the following is not a numerical type?",
        answers: ["Int", "Float", "Bool", "Double"],
        correctAnswer: 3)
    
    let questionSix = TriviaQuestions(
        question: "What is composition?",
        answers: ["Class design through protocol conformance", "Designing a class through inheritance", "It refers to the way you organise all your objects", "None of the above"],
        correctAnswer: 1)
    
    let questionSeven = TriviaQuestions(
        question: "What is the name of the 'structure' that can be prevented using a Guard statement",
        answers: ["The Tower of Doom", "The Pyramid of Danger", "The Pyramid of Doom", "The Partyhat of Disaster"],
        correctAnswer: 3)
    
    let questionEight = TriviaQuestions(
        question: "Enumerations",
        answers: ["are very flexible", "do not have to provide a value for each case", "are types in their own right", "All of the above"],
        correctAnswer: 4)
    
    let questionNine = TriviaQuestions(
        question: "When we try to access a value using a key that doesn't exist in a dictionary, what result do we get?",
        answers: ["An index out of bounds error", "We get the key back", "A nil value", "The program crashes"],
        correctAnswer: 1)
    
    let questionTen = TriviaQuestions(
        question: "The process of converting from superclass to a more specific subclass is called:",
        answers: ["inheritance", "protocol programming", "downcasting", "upcasting"],
        correctAnswer: 3)
    
    let questionEleven = TriviaQuestions(
        question: "Swift is awesome",
        answers: ["True", "False"],
        correctAnswer: 1)
    
    let questionTwelve = TriviaQuestions(
        question: "An alternate name for an existing type is called Type Aliases",
        answers: ["True", "False"],
        correctAnswer: 1)
    
    let questionThirteen = TriviaQuestions(
        question: "'Any Object' and 'Any' represent non specific types'",
        answers: ["False", "True"],
        correctAnswer: 2)
    
    let questionFourteen = TriviaQuestions(
        question: "XML stands for",
        answers: ["Excessive Markup Language", "Extra Markup Language", "Extensible Markup Language", "Extensible Make-up Language"],
        correctAnswer: 3)
    
    let questionFifteen = TriviaQuestions(
        question: "If it doesn't exist within that scope the compiler will not auto-complete",
        answers: ["False", "True"],
        correctAnswer: 2)
    
    let questionSixteen = TriviaQuestions(
        question: "When objects have an expected blueprint that defines expected behaviour, we talk about...",
        answers: ["inheritance", "downcasting", "protocol", "conformance"],
        correctAnswer: 3)
    
    let questionSeventeen = TriviaQuestions(
        question: "When in doubt a good place to start looking for an answer is",
        answers: ["Treehouse Slack community", "Browse the internet", "Watch relevant videos again", "All of the above"],
        correctAnswer: 4)
    
    let questionEightteen = TriviaQuestions(
        question: "'||' is the OR Operator",
        answers: ["True", "False"],
        correctAnswer: 1)
    
    let questionNineteen = TriviaQuestions(
        question: "Subcripts are shortcuts for changing member elements of a collection, list or sequence",
        answers: ["True", "False"],
        correctAnswer: 2)
    
    let questionTwenty = TriviaQuestions(
        question: "Raw Values have to be assigned for each case of an enum",
        answers: ["True", "False"],
        correctAnswer: 2)
    
    // this determines the amount of questions per round
    let questionsPerRound = 6
    
    // this counts the amount of questions asked
    var questionsAsked = 0
    
    // this is the amount of correctly answered questions
    var correctQuestions = 0
    
    // this if the amount of answers that were wrong
    var wrongAnswersGiven = 0
    
    // this is all the combined questions
    var questionsCombined = [TriviaQuestions]()
    
    // this variable is used to reorganise the questions
    var questionsReorganised = [TriviaQuestions]()
    
    // this is the initializer for questionsCombined
    init() {
        self.questionsCombined = [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen, questionEleven, questionTwelve, questionThirteen, questionFourteen, questionFifteen, questionSixteen, questionSeventeen, questionEightteen, questionNineteen, questionTwenty]
    }
    
    // this function reorganises the questionsCombined
    func reorganiseQuestionArray() {
        questionsReorganised = questionsCombined.shuffled()
    }
    
    // this selects one TriviaQuestion from the TriviaQuestions
    func provideQuestion() -> TriviaQuestions {
        reorganiseQuestionArray()
        let questionReturned = questionsReorganised[questionsAsked]
        return questionReturned
    }
    
    func checkIfTrueOrFalseQuestion() -> Bool {
        reorganiseQuestionArray()
            let countAnswers = questionsReorganised[questionsAsked].answers.count
            if countAnswers == 2 {
                return true
            }
         return false
        }
    
    // this checks the answer and increases score if answer is correct
    // or increases counter for wrong answer given
    func checkAnswer(buttonPressed: Int) -> String {
        if (buttonPressed == 1 && questionsReorganised[questionsAsked].correctAnswer == 1) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else if (buttonPressed == 2 &&
            questionsReorganised[questionsAsked].correctAnswer == 2) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else if (buttonPressed == 3 &&
            questionsReorganised[questionsAsked].correctAnswer == 3) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else if (buttonPressed == 4 &&
            questionsReorganised[questionsAsked].correctAnswer == 4) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else {
            questionsAsked += 1
            wrongAnswersGiven += 1
            PlayBuzzer.loadBuzzerSound()
            PlayBuzzer.playBuzzerSound()
            return "Woops!"
        }
    }
}
