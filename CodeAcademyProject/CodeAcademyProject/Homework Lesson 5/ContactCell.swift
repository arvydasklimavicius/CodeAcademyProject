//
//  ContactCell.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-08.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var nameTxtLabel: UILabel!
    @IBOutlet weak var phoneNumberTxtLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
