//
//  RoboArmView.swift
//  PaintDemo
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 Wolfgang Muhsal. All rights reserved.
//

import UIKit

class RoboArmView: UIView {
    var v1: Float = 0
    var v2: Float = 0
    var v3: Float = 0
    var v4: Float = 0

    override func draw(_ rect: CGRect) {
        RoboArmPC.drawRoboArm(frame: rect, handState: CGFloat(v1), handRotation: CGFloat(v2), armPartARotation: CGFloat(v3), armPartBRotation: CGFloat(v4))
    }
}
