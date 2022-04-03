//
//  ViewController.swift
//  AnimationApp
//
//  Created by VG on 30.03.2022.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.fullDescription
    }

    // MARK: - IB Action
    @IBAction func springAnimationButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.fullDescription
        springAnimationView.animation = animation.name
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.curve = animation.curve
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

