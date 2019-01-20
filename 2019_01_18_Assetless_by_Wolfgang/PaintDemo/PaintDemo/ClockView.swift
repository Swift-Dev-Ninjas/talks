//
//  ClockView.swift
//  PaintDemo
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 Wolfgang Muhsal. All rights reserved.
//

import UIKit

class ClockView: UIView {
    @IBInspectable var hour: Float = 0
    @IBInspectable var minute: Float = 0
    @IBInspectable var color: Int = 0
    @IBInspectable var typeToggle: Bool = false


    override func draw(_ rect: CGRect) {
        if typeToggle {
            ClockPC.drawScale(frame: rect, clockBG: (color == 0 ? .red : .blue))
        } else {
            ClockPC.drawClock(frame: rect, hour: CGFloat(hour), minute: CGFloat(minute))
        }
    }
}
