//
//  AddContactVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-09.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class AddContactVC: UIViewController {
    
    

    @IBOutlet weak var addContactTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveContactBtnTapped(_ sender: UIButton) {
        
        if addContactTxtField != nil {
//            contactsArray.append(addContactTxtField.text!)
            addContactTxtField.text = ""
        }
        
        
        
    }
    

}
