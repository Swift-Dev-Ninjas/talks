//
//  WavePC.swift
//  WavePC
//
//  Created by Wolfgang Muhsal on 20.01.19.
//  Copyright © 2019 WMCom. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class WavePC : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawWave(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 240, height: 120), resizing: ResizingBehavior = .aspectFit, theColor: UIColor = UIColor(red: 0.800, green: 0.320, blue: 0.320, alpha: 1.000), yOfP1: CGFloat = 60, yOfP2: CGFloat = 60) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 240, height: 120), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 240, y: resizedFrame.height / 120)


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath()
        rectanglePath.move(to: CGPoint(x: 160, y: yOfP2))
        rectanglePath.addCurve(to: CGPoint(x: 80, y: yOfP1), controlPoint1: CGPoint(x: 120, y: yOfP2), controlPoint2: CGPoint(x: 120, y: yOfP1))
        rectanglePath.addCurve(to: CGPoint(x: 0, y: 60), controlPoint1: CGPoint(x: 40, y: yOfP1), controlPoint2: CGPoint(x: 0, y: 60))
        rectanglePath.addLine(to: CGPoint(x: 0, y: 120))
        rectanglePath.addLine(to: CGPoint(x: 240, y: 120))
        rectanglePath.addLine(to: CGPoint(x: 240, y: 60))
        rectanglePath.addCurve(to: CGPoint(x: 160, y: yOfP2), controlPoint1: CGPoint(x: 240, y: 60), controlPoint2: CGPoint(x: 200, y: yOfP2))
        rectanglePath.close()
        theColor.setFill()
        rectanglePath.fill()
        
        context.restoreGState()

    }




    @objc(WavePCResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
