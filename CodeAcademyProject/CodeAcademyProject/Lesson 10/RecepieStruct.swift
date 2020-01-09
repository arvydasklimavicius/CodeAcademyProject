//
//  RecepieStruct.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-06.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit


struct Recipe {
    
    var title: String
    var subtitle: String
    var recepieImage: UIImage
    var description: String
    var ingredientsArray = [
        Ingredient(amount: "Get your steak up to room temperature before you cook it. Wash the potatoes and cut into 3cm chunks. Parboil in a pan of boiling salted water with the whole unpeeled garlic cloves for 8 minutes. \nMeanwhile, trim the fat on the steak to 1cm thick and put the steak aside. Finely chop the fat offcuts, place in a large cold frying pan and put on a medium-high heat to render the fat. Once sizzling, drain and add the potatoes and garlic. Cook for 30 minutes, or until golden and crisp, stirring occasionally. Strip in the rosemary leaves for the last 2 minutes, then leave on the lowest heat.",
                   unit: "1 kg T-bone steak , 5cm thick \n1 kg red-skinned potatoes \n1 bulb of garlic \n3 sprigs of fresh rosemary"),
        
        Ingredient(amount: "Kibir vibir ir yra", unit: "kg")
    ]
    
}
