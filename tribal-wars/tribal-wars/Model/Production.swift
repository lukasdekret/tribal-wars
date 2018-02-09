//
//  Production.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 9.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import Foundation

class Production {
    
    class func countNextProduction(currentProduction: Int, level: Int) -> Int {
        if level < 10 {
            return Int(ceil(Double(currentProduction)*1.5))
        }
        
        return Int(ceil(Double(currentProduction)*1.3))
        
    }
    
}
