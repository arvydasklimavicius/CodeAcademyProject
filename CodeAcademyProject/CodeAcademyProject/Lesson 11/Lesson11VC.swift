//
//  Lesson11VC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-09.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class Lesson11VC: UIViewController {

    @IBOutlet weak var colorTwoLabel: UILabel!
    @IBOutlet weak var colorOneLabel: UILabel!
    @IBOutlet weak var newButton: NewButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorOneLabel.backgroundColor = UIColor.fantasyColor1
        colorTwoLabel.backgroundColor = UIColor.fantasyColor2
        newButton.applyAppearance()
        

        
    }
    

}

protocol AppieranceApplieable: UIView {
    func applyAppearance()
}

extension AppieranceApplieable where Self: UIButton {
    func applyAppearance() {
        layer.cornerRadius = 4
        backgroundColor = UIColor.fantasyColor2
        layer.borderWidth = 8
        
    }
}


