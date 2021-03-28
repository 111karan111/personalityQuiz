//
//  ResultViewController.swift
//  personalityQuiz
//
//  Created by Karan Gandhi on 3/22/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    
    var responses : [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()

    
        
        calculatePersonalityResult()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func calculatePersonalityResult() {
        
        var frequencyOfAnswers : [AnimalType : Int] = [:]
        
        //TYPE PROPERTY TO THE CORRESPONDING RESPONSE
        let responseTypes = responses.map{$0.type}
        
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response]
        ?? 0) + 1
            
        }

        
        //turtle =2  rabbit = 1 dog = 3
        
        //dog 3 turtle 2  rabbit 1
        
        
        //Descending Order
        let frequentAnswersSorted = frequencyOfAnswers.sorted {
            
            
            (pair1,pair2) -> Bool in
            
            return pair1.value > pair2.value
            
        }
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        
        
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer)! "
        
        
        resultDefinitionLabel.text = mostCommonAnswer.description
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
