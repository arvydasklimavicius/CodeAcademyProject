//
//  RecepieFactoryClass.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-06.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RecepieFactory {
    
    
    
    func createRecipes() -> [Recipe] {
        
    let receptas1 = Recipe(title: "Steak ",
                           subtitle: "Crispy Beef Fat potatoes and Salsa Verde",
                           recepieImage: UIImage(named: "maistas5")!,
                           description: "Bistecca alla Fiorentina is the king of all Italian steaks. It’s essentially a fat T-bone or porterhouse steak, which is normally cooked quite blue.",
                           ingredientsArray: [Ingredient(name: "druska", amount: "500g", unit: "saukastas")])
        
        let receptas2 = Recipe(title: "Salmon",
                               subtitle: "Very tasty Salmon",
                               recepieImage: UIImage(named: "maistas4")!, description: "1. Buy good meat \n 2. Cook well \n 3. Eat",
                               ingredientsArray: [Ingredient(name: "sviestas", amount: "200", unit: "gr"),
                                                  Ingredient(name: "svogunas", amount: "1", unit: "galva")
        ])
        
        let receptas3 = Recipe(title: "Fantasy",
                               subtitle: "Fantasy food",
                               recepieImage: UIImage(named: "maistas10")!,
                               description: "1. Dream about food \n 2. Cook with fantasy \n 3. Eat",
                               ingredientsArray: [Ingredient(name: "Pipirai", amount: "5", unit: "gr")])
        
        let receptas4 = Recipe(title: "Seafood",
                               subtitle: "Tasty Seafood",
                               recepieImage: UIImage(named: "maistas8")!,
                               description: "1. Buy some fish \n 2. Cook \n 3. Eat",
                               ingredientsArray: [Ingredient(name: "Pienas", amount: "500", unit: "mg")])
        
        
    return [receptas1,receptas2, receptas3, receptas4]
        
    }
    
}
