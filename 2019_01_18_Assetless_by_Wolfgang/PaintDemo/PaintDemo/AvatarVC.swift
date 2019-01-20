//
//  AvatarVC.swift
//  PaintDemo
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 Wolfgang Muhsal. All rights reserved.
//

import UIKit

class AvatarVC: UIViewController {
    @IBOutlet var avatarView: AvatarView!

    var displayLink: CADisplayLink?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Avatar"
    }

    @objc func autoUpdate() {
        update(displayLink as Any)
    }

    @IBAction func update(_ sender: Any) {

        let colors: [UIColor] = [.red, .blue, .green, .yellow, .gray, .cyan, .white, .purple]

        avatarView.head = colors.randomElement()!
        avatarView.mouth = colors.randomElement()!
        avatarView.nose = colors.randomElement()!
        avatarView.eyes = colors.randomElement()!

        avatarView.headWidth = Float.random(in: 0...1)
        avatarView.headCornerRadius = Float.random(in: 0...1)
        avatarView.mouthWidth = Float.random(in: 0...1)
        avatarView.facialRadius = Float.random(in: 0...1)

        avatarView.setNeedsDisplay()
    }
}
