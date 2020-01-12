//
//  JediClass.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-11.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

struct Jedi: DetailsDescribable {
    let jediName: String
    let jediImage: UIImage
    let jediBio: String
    
    
    var screenImage: UIImage { return jediImage }
    var unitClass: String { return "Jedi" }
    var name: String { return jediName }
    var description: String { return jediBio }
    
    
    
    
}
