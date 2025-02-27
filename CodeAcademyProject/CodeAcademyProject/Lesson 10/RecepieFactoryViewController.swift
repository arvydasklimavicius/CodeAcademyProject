//
//  RecepieFactoryViewController.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-06.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RecepieFactoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var recepieFactoryTableView: UITableView!
    
    let recepiesData = RecepieFactory().createRecipes()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recepieFactoryTableView.delegate = self
        recepieFactoryTableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recepiesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recepieCell", for: indexPath) as! RecepieFactoryCell
        
        
        let receptas = recepiesData[indexPath.row]
        
        cell.recepieTitleLbl.text = receptas.title
        cell.recepieImage.image = receptas.recepieImage
        cell.recepieSubtitle.text = receptas.subtitle
        
        tableView.separatorStyle = .none
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipeDetailVC = storyboard?.instantiateViewController(identifier: "DetailVC") as! RecipeDetailVC
        
        recipeDetailVC.recipe = recepiesData[indexPath.row]
        
        self.navigationController?.pushViewController(recipeDetailVC, animated: true)
    }
    
    

}

