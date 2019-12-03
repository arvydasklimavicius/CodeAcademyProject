//
//  LegalMargaritaVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-01.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class LegalMargaritaVC: UIViewController {
    @IBOutlet weak var dateOfBirthTxtField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var checkAgeBtnView: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkAgeBtnView.layer.cornerRadius = 5.0
        answerLabel.layer.cornerRadius = 8.0
        answerLabel.clipsToBounds = true

       
    }
    
    @IBAction func checkAgeButton(_ sender: Any) {
        
        let currentYear = 2019
        let birthYear = Int(dateOfBirthTxtField.text!) ?? 0
        
        let age = currentYear - birthYear
        
        if age < 20 {
            answerLabel.text = "You are \(age) years old. You can't drink alcohol"
            answerLabel.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        } else {
            answerLabel.text = "You are \(age) years old. Here is Your Margarita!"
        }
    }
    
}
