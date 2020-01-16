//
//  ShoppingCartVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-13.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class ShoppingCartVC: UIViewController {

    @IBOutlet weak var shoppingCartTableView: UITableView!
    
    var itemsInCart = ShoppingCart.shared.products
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoppingCartTableView.dataSource = self
        shoppingCartTableView.delegate = self
        

    }
    
    @IBAction func sortByName(_ sender: Any) {
        itemsInCart = ShoppingCart.shared.productsInCartSorted(.byName)
        shoppingCartTableView.reloadData()
    }
    @IBAction func sortByPrice(_ sender: Any) {
        itemsInCart = ShoppingCart.shared.productsInCartSorted(.byPrice)
        shoppingCartTableView.reloadData()
    }
    
    
}

extension ShoppingCartVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ShoppingCart.shared.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let shoppingCell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        shoppingCell.productImage.image = itemsInCart[indexPath.row].productImage
        shoppingCell.productTitleLbl.text = itemsInCart[indexPath.row].title
        shoppingCell.productPriceLbl.text = itemsInCart[indexPath.row].price
        
       
        shoppingCell.onAddToCartAction = { [unowned self] in
//            ShoppingCart.shared.removeProduct(self.itemsInCart[indexPath.row])
            ShoppingCart.shared.removeProduct(indexPath.row)
            self.itemsInCart = ShoppingCart.shared.products
        
            self.shoppingCartTableView.reloadData()
            
        }

        return shoppingCell
    }
 
}
