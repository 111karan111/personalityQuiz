//
//  QuestionData.swift
//  personalityQuiz
//
//  Created by Karan Gandhi on 3/27/21.
//

import Foundation



//MVC -> Model View and Controller


struct Question {
    
    var text : String
    var type : ResponseType //A ENUM
    var answer : [Answer] // Data type is a structure
    
    
}


enum ResponseType {
    
    case single, multiple, ranged
    
    
}


struct Answer {
   
    var text : String
    var type : AnimalType
 
    
    
}


enum AnimalType : Character {
    
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"

    //Computational Property -> var which is created based on a calculation
    
    var description : String {
        
        switch self {
        
        
        case .dog :
               return "You are incredibly outgoing. You surroun yourself with the people you love and enjoy activities with your friends."
        
            
        case .cat :
            
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."

            
        case .rabbit :
            
            return "You love everything that's soft. You are healthy and full of energy."


        case .turtle :
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."


        }
        
    }
    
    
    
}
