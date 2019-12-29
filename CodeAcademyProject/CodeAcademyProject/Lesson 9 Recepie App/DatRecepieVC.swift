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
    
    var restaurantsArray = [(restaurantImage: UIImage, restaurantLabel: String)]()
    var recepieArray = [(recepieImage: UIImage, recepieLabel: String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recepieTableView.dataSource = self
        recepieTableView.delegate = self
        
        restaurantsArray = [
            (UIImage(named: "Costa")!, restaurantLabel: "Costa Caffe"),
            (UIImage(named: "Caffe_Nero")!, restaurantLabel: "Caffe Nero"),
            (UIImage(named: "Dunkin_Donuts")!, restaurantLabel: "Dunkin' Donuts")
            
            
            
        ]
        
        recepieArray = [
            
            (UIImage(named: "Green_Mauntain")!, recepieLabel: "Green Mountain"),
            (UIImage(named: "Pret")!, recepieLabel: "Pret"),
            (UIImage(named: "Starbucks")!, recepieLabel: "Starbucks"),
            (UIImage(named: "mccafe")!, recepieLabel: "McCafe")
            
            
            
            
        ]
        
        
    }
    
    enum TableViewSections: Int {
        case restaurants
        case recepies
        case unknown
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
        
        
        switch section {
        case TableViewSections.restaurants.rawValue:
            return restaurantsArray.count
            
        case TableViewSections.recepies.rawValue:
            return recepieArray.count
        default:
                return .zero
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! DatAppCell
        
        if indexPath.section == 0 {
            cell.dataImageView.image = restaurantsArray[indexPath.row].restaurantImage
            cell.dataTextLbl.text = restaurantsArray[indexPath.row].restaurantLabel
        } else {
            cell.dataImageView.image = recepieArray[indexPath.row].recepieImage
            cell.dataTextLbl.text = recepieArray[indexPath.row].recepieLabel
        }
        
        return cell
    }
    

    

}
