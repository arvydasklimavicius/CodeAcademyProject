//
//  GreetingsViewController.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-01.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class GreetingsViewController: UIViewController {
    
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var surnameTxtField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetinBtnView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetinBtnView.layer.cornerRadius = 10
        
        
    }
    
    
    @IBAction func greetingBtnTapped(_ sender: Any) {
        
        if (nameTxtField.text! + surnameTxtField.text!) .isEmpty {
            greetingLabel.text = "Please fill Name and Surname fields "
        } else {
            greetingLabel.text = "Hello \(nameTxtField.text!) \(surnameTxtField.text!). Good to see you!"
        }
        
        
    }
    
}
