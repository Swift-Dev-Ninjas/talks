//
//  AvatarView.swift
//  PaintDemo
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 Wolfgang Muhsal. All rights reserved.
//

import UIKit

class AvatarView: UIView {
    var head: UIColor = .red
    var mouth: UIColor = .blue
    var nose: UIColor = .green
    var eyes: UIColor = .yellow
    var headWidth: Float = 0
    var headCornerRadius: Float = 0
    var mouthWidth: Float = 0
    var facialRadius: Float = 0

    override func draw(_ rect: CGRect) {
        AvatarPC.drawCanvas1(frame: rect, head: head, mouth: mouth, nose: nose, eyes: eyes, headWidthValue: CGFloat(headWidth), headCornerRadiusValue: CGFloat(headCornerRadius), mouthWidthValue: CGFloat(mouthWidth), facialCornerRadiusValue: CGFloat(facialRadius))
    }
}
