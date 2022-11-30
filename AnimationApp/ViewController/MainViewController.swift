//
//  MainViewController.swift
//  AnimationApp
//
//  Created by Pavel Lazarev Macbook on 29.11.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import UIKit
import Spring

final class MainViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var typeOfPresetLabel: UILabel!
    @IBOutlet var typeOfCurveLabel: UILabel!
    @IBOutlet var typeOfForceLabel: UILabel!
    @IBOutlet var typeOfDurationLabel: UILabel!
    @IBOutlet var typeOfDelayLabel: UILabel!

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var typeOfPresetButton: UIButton!
    
// MARK: - Private properties
    
   private var animation = Animtation.setRandomAnimation()

    
    //MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.backgroundColor = UIColor.systemTeal
        animationView.layer.cornerRadius = 20
        
        typeOfPresetButton.layer.cornerRadius = 15
        
       
    }
    
    // MARK: - IBActions
    
    @IBAction func runButton(_ sender: UIButton) {
        typeOfPresetLabel.text = DataManager.shared.animationPreset.randomElement()?.rawValue
        typeOfCurveLabel.text = DataManager.shared.curves.randomElement()?.rawValue
        typeOfForceLabel.text = "\(String(format: "%.2f", Double.random(in: 0.5...2.0)))"
        typeOfDurationLabel.text = "\(String(format: "%.2f", Double.random(in: 0.5...2.0)))"
        typeOfDelayLabel.text = "\(String(format: "%.2f", Double.random(in: 0.5...1.5)))"
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.duration = animation.duration
        animationView.force = animation.force
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animtation.setRandomAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    

}
