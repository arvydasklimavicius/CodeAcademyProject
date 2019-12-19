//
//  DatAppCell.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-19.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class DatAppCell: UITableViewCell {
    @IBOutlet weak var dataImageView: UIImageView!
    @IBOutlet weak var dataTextLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
