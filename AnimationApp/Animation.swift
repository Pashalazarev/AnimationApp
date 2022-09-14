//
//  Animation.swift
//  AnimationApp
//
//  Created by Pavel Lazarev Macbook on 14.09.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import Foundation
import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    
}


extension Animation {
    static func getAnimation() -> [Animation] {
        
        return[]
    }
}
