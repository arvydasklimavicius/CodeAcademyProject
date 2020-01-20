//
//  RequestReview.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-16.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import Foundation
import StoreKit

let userTimesTappedCell = 2
let tapIncrementerSetting = "numberOfCellTaped"

func incrementAppRuns() {
    
    let userDefaults = UserDefaults()
    let runs = getRunsCount() + 1
    userDefaults.setValuesForKeys([tapIncrementerSetting: runs])
    userDefaults.synchronize()
    
    
}

func getRunsCount() -> Int {
    let userDefaults = UserDefaults()
    let savedRuns = userDefaults.value(forKey: tapIncrementerSetting)
    
    var runs = 0
    
    if (savedRuns != nil) {
        runs = savedRuns as! Int
    }
    
    return runs
}

func showReview() {
    let runs = getRunsCount()
    
    if (runs > userTimesTappedCell) {
        SKStoreReviewController.requestReview()
    }
    
}
