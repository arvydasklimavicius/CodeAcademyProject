//
//  RecipeDetailVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-07.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {
    
    @IBOutlet weak var detailTitleLbl: UILabel!
    @IBOutlet weak var detailSubtitleLbl: UILabel!
    @IBOutlet weak var detailDescriptionLbl: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var ingredientsLbl: UILabel!
    @IBOutlet weak var ingredientUnitLbl: UILabel!
    
    var recipe: Recipe?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTitleLbl.text = recipe?.title
        detailSubtitleLbl.text = recipe?.subtitle
        detailDescriptionLbl.text = recipe?.description
        detailImage.image = recipe?.recepieImage
        ingredientsLbl.text = mappedIngredients()
    }
    
    func mappedIngredients() -> String {
        guard let recipe = recipe else { return "" }
        
        var ingredients = ""
        
        for ingredient in recipe.ingredientsArray {
            ingredients += "\n \(ingredient.name) \(ingredient.amount) \(ingredient.unit)"
        }
        
        return ingredients
    }
    
}
