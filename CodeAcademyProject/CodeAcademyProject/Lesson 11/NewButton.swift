//
//  NewButton.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-09.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class NewButton: UIButton, AppieranceApplieable {

    override func awakeFromNib() {
        super.awakeFromNib()
        applyAppearance()
    }
}
