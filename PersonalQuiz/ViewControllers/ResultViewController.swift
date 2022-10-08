//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Roman on 08.10.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var animalDescriptionLabel: UILabel!
    
    var answers: [Answer]!
    var animals: [Character] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        calculateResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

// MARK: - Private Methods
extension ResultViewController {
    
    private func calculateResult() {
        answers.forEach { animals.append($0.animal.rawValue) }
        
    }
}
