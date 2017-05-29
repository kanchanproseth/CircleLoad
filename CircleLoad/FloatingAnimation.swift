//
//  FloatingAnimation.swift
//  CircleLoad
//
//  Created by Cyberk on 4/10/17.
//  Copyright © 2017 Cyberk. All rights reserved.
//

import UIKit

@IBDesignable
class FloatingAnimations:UIView {
    var masterSlider: CGFloat = 0
    var setOpacity:CGFloat = 0.5
    override func draw(_ rect: CGRect) {
        FloatingAnimationKit.drawFloatingAnimation(frameWidth: 400, frameHeight: 400, floatingCircleWidth: 125, floatingCircleHeight: 125, master: masterSlider, opacity: setOpacity, multiplierScale: 15)
    }
}

