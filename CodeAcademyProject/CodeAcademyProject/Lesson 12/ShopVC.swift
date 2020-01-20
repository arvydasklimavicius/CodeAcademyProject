//
//  Lesson12VC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-13.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit


class ShopVC: UIViewController {
    
    
    
    @IBOutlet weak var productListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productListTableView.dataSource = self
        productListTableView.delegate = self

        
    }
    @IBAction func toShoppingCartVC(_ sender: Any) {
        let shoppingVC = storyboard?.instantiateViewController(identifier: "ShoppingCart") as! ShoppingCartVC
        self.navigationController?.pushViewController(shoppingVC, animated: true)
        
    }
    

}

extension ShopVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        let product = productArray[indexPath.row]
        cell.configure(with: product)
        cell.onAddToCartAction = {
            ShoppingCart.shared.addProduct(productArray[indexPath.row])
            let alert = UIAlertController(title: "Product Added to Cart", message: "\(product.title) in cart", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
        
        
        return cell
        
    }
    
    
    
}
