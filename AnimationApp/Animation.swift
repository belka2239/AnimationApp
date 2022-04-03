//
//  Animation.swift
//  AnimationApp
//
//  Created by VG on 30.03.2022.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var fullDescription: String {
        """
        present: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.animations.randomElement()?.rawValue ?? "shake",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3
        )
    }
}
