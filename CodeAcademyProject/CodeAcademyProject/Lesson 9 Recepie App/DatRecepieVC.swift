//
//  DatRecepieVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-19.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class DatRecepieVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var recepieTableView: UITableView!
    
    var restaurantsData = [(restaurantImage: UIImage, restaurantLabel: String)]()
    var recepieArray = [(recepieImage: UIImage, recepieLabel: String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recepieTableView.dataSource = self
        recepieTableView.delegate = self
        
        restaurantsData = [
            (UIImage(named: "maistas12")!, restaurantLabel: "Macadonalds"),
            (UIImage(named: "maistas9")!, restaurantLabel: "Macadonalds"),
            (UIImage(named: "maistas10")!, restaurantLabel: "Macadonalds")
            
            
            
        ]
        
        recepieArray = [
            
            (UIImage(named: "maistas6")!, recepieLabel: "Test")
            
        ]
        
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Restaurants"
        } else {
            return "Recepies"
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! DatAppCell
        
        let image = restaurantsData[indexPath.row].restaurantImage
        let label = restaurantsData[indexPath.row].restaurantLabel
        
        let recepieImage = recepieArray[indexPath.row].recepieImage
        let recepieLabel = recepieArray[indexPath.row].recepieLabel
        
        cell.dataTextLbl.text  = recepieLabel
        cell.dataImageView.image = recepieImage
    
        
        cell.dataImageView.image = image
        cell.dataTextLbl.text = label
        
        return cell
    }
    

    

}
