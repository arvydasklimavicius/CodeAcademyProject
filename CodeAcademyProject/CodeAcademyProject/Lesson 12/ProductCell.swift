//
//  ProductCell.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-13.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitleLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!
    @IBOutlet weak var buttonTitle: UIButton!
    
    var onAddToCartAction: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func addToCardBtn(_ sender: UIButton) {
        onAddToCartAction?()
        
    }
    
    func configure(with product: Product) {
        productImage.image = product.productImage
        productPriceLbl.text = product.price
        productTitleLbl.text = product.title
        
    }
}
