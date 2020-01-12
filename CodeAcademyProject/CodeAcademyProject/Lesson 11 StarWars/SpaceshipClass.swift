//
//  SpaceshipClass.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-11.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

struct Spaceship: DetailsDescribable {
    let spaceshipName: String
    let spaceshipImage: UIImage
    let spaceshipDescription: String
    
    
    var name: String { return spaceshipName }
    var description: String { return spaceshipDescription }
    var screenImage: UIImage { return spaceshipImage }
    var unitClass: String { return "Spaceship"}
    
    
}
