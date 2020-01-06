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
        dataImageView.layer.cornerRadius = dataImageView.frame.width / 2
        dataImageView.layer.borderWidth = 0.8
        dataImageView.layer.borderColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
  
        
    }

}
