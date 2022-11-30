//
//  DataManager.swift
//  AnimationApp
//
//  Created by Pavel Lazarev Macbook on 30.11.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationPreset = [Spring.AnimationPreset.slideLeft,
                      . slideRight,
                      . slideDown,
                      . slideUp,
                      . squeezeLeft,
                      . squeezeRight,
                      . squeezeDown,
                      . squeezeUp,
                      . fadeIn,
                      . fadeOut,
                      . fadeOutIn,
                      . fadeInLeft,
                      . fadeInRight,
                      . fadeInDown,
                      . fadeInUp,
                      . zoomIn,
                      . zoomOut,
                      . fall,
                      . shake,
                      . pop,
                      . flipX,
                      . flipY,
                      . morph,
                      . squeeze,
                      . flash,
                      . wobble,
                      . swing
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
