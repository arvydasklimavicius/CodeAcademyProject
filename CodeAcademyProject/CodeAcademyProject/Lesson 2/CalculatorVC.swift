//
//  CalculatorVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-11-28.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet var numberButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newButton(_ sender: Any) {
        print("Hello World")
    }
    
    
}
