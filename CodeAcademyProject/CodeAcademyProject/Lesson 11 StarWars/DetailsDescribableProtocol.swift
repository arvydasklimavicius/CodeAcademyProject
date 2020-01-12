//
//  DetailsDescribableProtocol.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-11.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

protocol DetailsDescribable {
    var name: String { get }
    var description: String { get }
    var screenImage: UIImage { get }
    var unitClass: String { get }
    
}
