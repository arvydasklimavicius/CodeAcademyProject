//
//  RestaurantsDetailVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-29.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RestaurantsDetailVC: UIViewController {
    
    @IBOutlet weak var restaurantDetailLbl: UILabel!
    @IBOutlet weak var restaurantDetailImg: UIImageView!
    
    var restaurantDetailImage: UIImage?
    var restaurantsDetailLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantDetailImg.image = restaurantDetailImage
        restaurantDetailLbl.text = restaurantsDetailLabel
        
        restaurantDetailImg.layer.cornerRadius = restaurantDetailImg.frame.width / 2
        restaurantDetailImg.layer.borderWidth = 8
        restaurantDetailImg.layer.borderColor = UIColor.green.cgColor
        
        
        

        
    }
    


}
