//
//  WaveView.swift
//  PaintDemo
//
//  Created by Wolfgang Muhsal on 17.01.19.
//  Copyright © 2019 Wolfgang Muhsal. All rights reserved.
//

import UIKit

class WaveView: UIView {
    override func draw(_ rect: CGRect) {
        WavePC.drawWave(frame: rect, theColor: .blue, yOfP1: CGFloat.random(in: 10...110), yOfP2: CGFloat.random(in: 10...110))
    }
}
