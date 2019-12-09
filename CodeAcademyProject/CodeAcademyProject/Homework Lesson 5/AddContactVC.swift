//
//  AddContactVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-09.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class AddContactVC: UIViewController {
    
    var newContact = [String]()

    @IBOutlet weak var addContactTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveContactBtnTapped(_ sender: UIButton) {
        
        newContact.append(addContactTxtField.text!)
        
    }
    

}
