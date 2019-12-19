//
//  AddNewContactViewController.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-16.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class AddNewContactViewController: UIViewController {
    @IBOutlet weak var enterNameTxtField: UITextField!
    @IBOutlet weak var enterNumberTxtField: UITextField!
    
    var completion: (((contactName: String, contactNumber: String)) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func addNewContactBtnTapped(_ sender: UIButton) {
        
        let newContact = (contactName: enterNameTxtField.text!, contactNumber: enterNumberTxtField.text!)
        
        completion?(newContact)
        
    }
    
}
