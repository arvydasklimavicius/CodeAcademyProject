//
//  ContactsFormVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-09.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class ContactsFormVC: UIViewController {
    
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var surnameTxtField: UITextField!
    @IBOutlet weak var gendreTxtField: UITextField!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var cityTxtField: UITextField!
    @IBOutlet weak var streetAddtessTxtField: UITextField!
    @IBOutlet weak var hisBioTxtField: UITextField!
    @IBOutlet weak var buttonView: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonView.layer.cornerRadius = 0.9

        
    }
    
    @IBAction func addInformationTapped(_ sender: UIButton) {
        
        
        
        if let name = nameTxtField.text, let surname = surnameTxtField.text, !name.isEmpty && !surname.isEmpty {
            performSegue(withIdentifier: "toInformation", sender: nil)
            
        } else {
            nameTxtField.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.7532106164)
        }
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let detailsVC = segue.destination as? InformationSummaryVC {
            
            var details = [String: String]()
            
            if let name = nameTxtField.text {
                details["name"] = name
            } 
            
            if let surname = surnameTxtField.text {
                details["surname"] = surname
            }
            
            if let gender = gendreTxtField.text {
                details["gender"] = gender
            }
            
            if let country = countryTxtField.text {
                details["country"] = country
            }
            
            if let city = cityTxtField.text {
                details["city"] = city
            }
            
            if let address = streetAddtessTxtField.text {
                details["address"] = address
            }
            
            if let bio = hisBioTxtField.text {
                details["bio"] = bio
            }
            
            detailsVC.details = details
            
        }
    }
    
}
