//
//  ContactTableViewCell.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-16.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
