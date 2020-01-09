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
    
    var detailTitle: String?
    var detailSubtitle: String?
    var detailDescription: String?
    var detailRecipeImage: UIImage?
    var detailIngredients: String?
    var detailIngredientUnit: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTitleLbl.text = detailTitle
        detailSubtitleLbl.text = detailSubtitle
        detailDescriptionLbl.text = detailDescription
        detailImage.image = detailRecipeImage
        ingredientsLbl.text = detailIngredients
        ingredientUnitLbl.text = detailIngredientUnit
        

        
    }
    
}
