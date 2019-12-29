//
//  RecepiesDetailVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-29.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RecepiesDetailVC: UIViewController {

    @IBOutlet weak var recepiesDetaiImage: UIImageView!
    @IBOutlet weak var recepiesDetailLabel: UILabel!
    
    var detailedRecepiesImage: UIImage?
    var detailedRecepiesLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recepiesDetaiImage.image = detailedRecepiesImage
        recepiesDetailLabel.text = detailedRecepiesLabel
        
        recepiesDetaiImage.layer.cornerRadius = recepiesDetaiImage.frame.width / 2
        recepiesDetaiImage.layer.borderWidth = 8
        recepiesDetaiImage.layer.borderColor = UIColor.red.cgColor

        
    }
    
}
