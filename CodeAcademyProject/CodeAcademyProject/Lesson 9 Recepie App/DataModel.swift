//
//  DataModel.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-19.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import Foundation

enum DataModel: String {
    case restaurant = "restaurant"
    case recepie = "recepie"
    case unknown
    
    init(rawValue: String) {
        switch rawValue {
        case "restaurant": self = .restaurant
        case "recepie": self = .recepie
        default:
            self = .unknown
        }
    }
    
}

