//
//  RootViewController.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-16.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit
import StoreKit

class RootViewController: UITableViewController {
    
    static let userOpenAppCount = "times_app_opened"
    static let shoppingCartRating = "shopping_cart_rating_count"
    static let currentAppVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
    let counterForRating = 2
    let appOpenedCount = UserDefaults.standard.integer(forKey: userOpenAppCount)
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set(5, forKey: RootViewController.shoppingCartRating)
        UserDefaults.standard.set((counterForRating + 1), forKey: RootViewController.userOpenAppCount)
        
        if (counterForRating + 1 >= counterForRating) && (UserDefaults.standard.bool(forKey: RootViewController.currentAppVersion ?? "1.0") == false) {
            rateMyApp()
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(rateMyApp), name: NSNotification.Name(rawValue: "RateApp"), object: nil)

    }
    
    @objc func rateMyApp() {
        SKStoreReviewController.requestReview()
        UserDefaults.standard.set(true, forKey: RootViewController.currentAppVersion ?? "1.0")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
