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
    
    var restaurantsArray = [(restaurantImage: UIImage, restaurantLabel: String, restaurantDescription: String)]()
    var recepieArray = [(recepieImage: UIImage, recepieLabel: String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recepieTableView.dataSource = self
        recepieTableView.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
        
        restaurantsArray = [
            (UIImage(named: "Costa")!, restaurantLabel: "Costa Coffee", restaurantDescription: "On average, 100% of people say they don’t want average"),
            (UIImage(named: "Caffe_Nero")!, restaurantLabel: "Caffe Nero", restaurantDescription: "Since 1997, we have grown one coffee, one customer and one store at a time – always trying to be the best at what we do"),
            (UIImage(named: "Dunkin_Donuts")!, restaurantLabel: "Dunkin' Donuts", restaurantDescription: "You 'Kin Do It!")
            
            
            
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
        
        
        switch TableViewSections(rawValue: section) {
        case .restaurants:
            return restaurantsArray.count
            
        case .recepies:
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
            cell.contentView.backgroundColor = #colorLiteral(red: 0.7368364726, green: 0.912885274, blue: 0.6977739726, alpha: 0.801557149)
        } else {
            cell.dataImageView.image = recepieArray[indexPath.row].recepieImage
            cell.dataTextLbl.text = recepieArray[indexPath.row].recepieLabel
            cell.contentView.backgroundColor = #colorLiteral(red: 0.9077735543, green: 0.6959787011, blue: 0.8768211007, alpha: 0.7524882277)
        }
        
        let bg = UIView()
        bg.backgroundColor = UIColor.lightGray
        cell.selectedBackgroundView = bg
        
        tableView.separatorStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.section == 0 {
            let restaurantsVC = storyboard?.instantiateViewController(identifier: "RestaurantsDetailVC") as! RestaurantsDetailVC
            restaurantsVC.restaurantDetailImage = restaurantsArray[indexPath.row].restaurantImage
            restaurantsVC.restaurantsDetailLabel = restaurantsArray[indexPath.row].restaurantLabel
            restaurantsVC.restaurantDescriptionLbl = restaurantsArray[indexPath.row].restaurantDescription
            self.navigationController?.pushViewController(restaurantsVC, animated: true)
        } else {
            let recepiesVC = storyboard?.instantiateViewController(identifier: "RecepiesDetailVC") as! RecepiesDetailVC
            recepiesVC.detailedRecepiesImage = recepieArray[indexPath.row].recepieImage
            recepiesVC.detailedRecepiesLabel = recepieArray[indexPath.row].recepieLabel
            self.navigationController?.pushViewController(recepiesVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            
            switch (indexPath.section) {
            case 0:
                restaurantsArray.remove(at: indexPath.row)
            case 1:
                recepieArray.remove(at: indexPath.row)
            default:
                break
            }
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        
        
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = #colorLiteral(red: 0.544692874, green: 0.7561509013, blue: 0.7967695594, alpha: 0.7524882277)
//
//        title = "Restaurant"
//
//
//
//
//        return headerView
//
//
//    }


    

}
