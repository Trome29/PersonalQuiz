//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Roman on 08.10.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalImageLabel: UILabel!
    @IBOutlet var animalDescriptionLabel: UILabel!
    
    
    var answers: [Answer]!
    var animals: [Character] = []
    var counter = 0
    
    let animalStringImage = "Вы - "

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        calculateResult()
    }
    
    func calculateResult() {
        answers.forEach { animals.append($0.animal.rawValue) }
        print(animals)
        
        let dogs = animals.filter{ $0 == "🐶" }
        let cats = animals.filter{ $0 == "🐱" }
        let rabbits = animals.filter{ $0 == "🐰" }
        let turtles = animals.filter{ $0 == "🐢" }
        
        counter = dogs.count
        if cats.count > counter {
            counter = cats.count
        } else if rabbits.count > counter {
            counter = rabbits.count
            
        } else if turtles.count > counter {
            counter = turtles.count
            
        } else {
            
        }
        print(counter)
        
      
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}
