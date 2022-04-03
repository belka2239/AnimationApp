//
//  DataManager.swift
//  AnimationApp
//
//  Created by VG on 01.04.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .zoomOut,
        .zoomIn,
        .wobble,
        .swing,
        .squeezeUp,
        .squeezeDown,
        .flash,
        .morph,
        .pop,
        .shake
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
