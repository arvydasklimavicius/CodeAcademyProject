//
//  ShoppinCartClass.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-13.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

enum SortingOption: Int {
    case byName
    case byPrice
}

class ShoppingCart {
    static let shared = ShoppingCart()
    var products = [Product]()
    
    func addProduct(_ product: Product) {
        products.append(product)
        
    }
    
//    func removeProduct(_ product: Product) {
//        let index = products.firstIndex { prod -> Bool in
//            return product.title == prod.title
//        }
//
//        guard let productIndex = index else { return }
//
//        products.remove(at: productIndex)
//    }
    
    func removeProduct(_ product: Int) {
        products.remove(at: product)
    }
    
    func productsInCartSorted(_ by: SortingOption?) -> [Product] {
        
        guard let sortedBy = by else {
            return products
        }
        
        switch sortedBy {
        case .byName:
            products.sort { (first, second) -> Bool in
                first.title.lowercased() < second.title.lowercased()
            }
            return products
        case .byPrice:
            products.sort { (first, second) -> Bool in
                first.price.lowercased() < second.price.lowercased()
            }
            return products
        }
    }
}
