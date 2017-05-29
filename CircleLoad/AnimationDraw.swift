//
//  AnimationDraw.swift
//  CircleLoad
//
//  Created by Cyberk on 4/10/17.
//  Copyright © 2017 Cyberk. All rights reserved.
//

import UIKit

@IBDesignable
class AnimationDraw:UIView {
    var masterSlider: CGFloat = 0
    override func draw(_ rect: CGRect) {
        StyleKitName.drawRequestAnimation(strokeSize: 6, master: masterSlider, targetframeWidth: 300, targetframeHeight: 300, ovalWidth: 250, ovalHeight: 250)
    }
}
@IBDesignable
class ImageViewCircle:UIImageView{
    override func layoutSubviews() {
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
    }
}
