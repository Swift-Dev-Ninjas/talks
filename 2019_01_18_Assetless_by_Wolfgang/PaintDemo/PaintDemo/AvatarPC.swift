//
//  AvatarPC.swift
//  AvatarPC
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 WMCom. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class AvatarPC : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 205, height: 200), resizing: ResizingBehavior = .aspectFit, head: UIColor = UIColor(red: 0.800, green: 0.320, blue: 0.320, alpha: 1.000), mouth: UIColor = UIColor(red: 0.652, green: 0.800, blue: 0.320, alpha: 1.000), nose: UIColor = UIColor(red: 0.320, green: 0.800, blue: 0.616, alpha: 1.000), eyes: UIColor = UIColor(red: 0.320, green: 0.356, blue: 0.800, alpha: 1.000), headWidthValue: CGFloat = 0, headCornerRadiusValue: CGFloat = 1, mouthWidthValue: CGFloat = 1, facialCornerRadiusValue: CGFloat = 1) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 205, height: 200), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 205, y: resizedFrame.height / 200)



        //// Variable Declarations
        let headWidth: CGFloat = 150 - headWidthValue * 30 + 15
        let headCenter: CGFloat = 20 + headWidthValue * 30 - headWidthValue * 15
        let expression: CGFloat = headCornerRadiusValue * 30
        let mouthWidth: CGFloat = mouthWidthValue * 60 + 40
        let mouthCenter: CGFloat = -mouthWidthValue * 30 + 100
        let facialCornerRadius: CGFloat = facialCornerRadiusValue * 10

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: (headCenter + 2), y: 25, width: headWidth, height: 150), cornerRadius: expression)
        head.setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: (mouthCenter - 15), y: 140, width: mouthWidth, height: 15), cornerRadius: facialCornerRadius)
        mouth.setFill()
        rectangle2Path.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(roundedRect: CGRect(x: 98, y: 88, width: 14, height: 24), cornerRadius: facialCornerRadius)
        nose.setFill()
        rectangle3Path.fill()


        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(roundedRect: CGRect(x: 55, y: 55, width: 22, height: 29), cornerRadius: facialCornerRadius)
        eyes.setFill()
        rectangle4Path.fill()


        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(roundedRect: CGRect(x: 133, y: 55, width: 22, height: 29), cornerRadius: facialCornerRadius)
        eyes.setFill()
        rectangle5Path.fill()
        
        context.restoreGState()

    }




    @objc(AvatarPCResizingBehavior)
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
