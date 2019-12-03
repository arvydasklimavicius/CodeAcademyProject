//
//  RecepieTableViewCell.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-02.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RecepieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var recepieTableViewCell: UIView!
    @IBOutlet weak var recepieImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        recepieImage.layer.cornerRadius = 8.0
        recepieImage.clipsToBounds = true
        recepieImage.layer.shadowRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
