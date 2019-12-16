//
//  InformationSummaryVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-09.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class InformationSummaryVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var surnameLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var bioLbl: UILabel!
    
    var details = [String: String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDetails()
        
        

        
    }
    
    func setupDetails() {
        
        nameLbl.text = details["name"]
        surnameLbl.text = details["surname"]
        genderLbl.text = details["gender"]
        countryLbl.text = details["country"]
        cityLbl.text = details["city"]
        addressLbl.text = details["address"]
        bioLbl.text = details["bio"]
        
        if let name = details["name"] {
            nameLbl.text = name
        } else {
            nameLbl.text = "-------"
        }
        
        if let surname = details["surname"] {
            surnameLbl.text = surname
        } else {
            surnameLbl.text = "-------"
        }
        
        if let gender = details["gender"], !gender.isEmpty {
            genderLbl.text = gender
        } else {
            genderLbl.text = "-------"
            genderLbl.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if let country = details["country"], !country.isEmpty {
            countryLbl.text = country
        } else {
            countryLbl.text = "-------"
            countryLbl.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if let city = details["city"], !city.isEmpty {
            cityLbl.text = city
        } else {
            cityLbl.text = "-------"
            cityLbl.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if let address = details["address"], !address.isEmpty {
            addressLbl.text = address
        } else {
            addressLbl.text = "-------"
            addressLbl.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
        
        if let bio = details["bio"], !bio.isEmpty {
            bioLbl.text = bio
        } else {
            bioLbl.text = "-------"
            bioLbl.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }
    }

    
}
