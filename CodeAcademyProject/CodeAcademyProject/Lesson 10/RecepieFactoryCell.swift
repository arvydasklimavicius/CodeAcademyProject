//
//  RecepieFactoryCell.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-06.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class RecepieFactoryCell: UITableViewCell {

    @IBOutlet weak var recepieTitleLbl: UILabel!
    @IBOutlet weak var recepieImage: UIImageView!
    @IBOutlet weak var recepieSubtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
