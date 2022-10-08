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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        getResult(with: getRepeatingAnimal())
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

// MARK: - Private Methods
extension ResultViewController {
    
    private func getRepeatingAnimal() -> Animal? {
        return Dictionary(
            grouping: answers,
            by: { $0.animal }
        ).sorted(by: {$0.value.count > $1.value.count}).first?.key
    }
    
    private func getResult(with animal: Animal?) {
        animalTypeLabel.text = "Вы - \(animal?.rawValue ?? "🐶")"
        animalDescriptionLabel.text = animal?.definition
    }
}
