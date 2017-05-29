//
//  circleLaod.swift
//  CircleLoad
//
//  Created by Cyberk on 3/27/17.
//  Copyright © 2017 Cyberk. All rights reserved.
//


import UIKit

@IBDesignable
class circleLoadDraw:UIView {
    var masterSlider: CGFloat = 0
    override func draw(_ rect: CGRect) {
        CircleLoad.drawCanvas1(master: masterSlider)
    }
}
