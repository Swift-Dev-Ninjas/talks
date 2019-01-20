//
//  RoboArmVC.swift
//  PaintDemo
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 Wolfgang Muhsal. All rights reserved.
//

import UIKit

class RoboArmVC: UIViewController {
    @IBOutlet var roboArmView: RoboArmView!
    @IBOutlet var s1: UISlider!
    @IBOutlet var s2: UISlider!
    @IBOutlet var s3: UISlider!
    @IBOutlet var s4: UISlider!

    var displayLink: CADisplayLink?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "RoboArm"
    }

    @objc func autoUpdate() {
        s1.value = Float.random(in: 0...1)
        s2.value = Float.random(in: 0...1)
        s3.value = Float.random(in: 0...1)
        s4.value = Float.random(in: 0...1)

        update(displayLink as Any)
    }

    @IBAction func update(_ sender: Any) {
        roboArmView.v1 = s1.value
        roboArmView.v2 = s2.value
        roboArmView.v3 = s3.value
        roboArmView.v4 = s4.value

        roboArmView.setNeedsDisplay()
    }
}
