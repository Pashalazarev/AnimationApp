//
//  Animation.swift
//  AnimationApp
//
//  Created by Pavel Lazarev Macbook on 29.11.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//


import Spring

struct Animtation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
}


extension Animtation {
    
   static func setRandomAnimation() -> Animtation {
       Animtation(preset: DataManager.shared.animationPreset.randomElement()?.rawValue ?? "",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
                  force: Double.random(in: 0.5...2.0),
                  duration: Double.random(in: 0.5...2.0),
                  delay: Double.random(in: 0.5...2.0)
      )
    }
}
