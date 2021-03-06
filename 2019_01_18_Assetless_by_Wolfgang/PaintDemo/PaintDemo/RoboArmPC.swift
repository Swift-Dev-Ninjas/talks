//
//  RoboArmPC.swift
//  RoboArm
//
//  Created by Wolfgang Muhsal on 15.01.19.
//  Copyright © 2019 WMCom. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class RoboArmPC : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawHand(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 44, height: 44), resizing: ResizingBehavior = .aspectFit, handState: CGFloat = 0.288) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 44, height: 44), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 44, y: resizedFrame.height / 44)



        //// Variable Declarations
        let handRotationLeft: CGFloat = handState / 8.0 * -360
        let handRotationRight: CGFloat = handState / 8.0 * 360

        //// Left_Finger Drawing
        context.saveGState()
        context.translateBy(x: 7, y: 37)
        context.rotate(by: -handRotationLeft * CGFloat.pi/180)

        let left_FingerRect = CGRect(x: -5, y: -35, width: 20, height: 40)
        context.saveGState()
        context.clip(to: left_FingerRect)
        context.translateBy(x: left_FingerRect.minX, y: left_FingerRect.minY)

        RoboArmPC.drawLeftFinger(frame: CGRect(origin: .zero, size: left_FingerRect.size), resizing: .stretch)
        context.restoreGState()

        context.restoreGState()


        //// Right_Finger Drawing
        context.saveGState()
        context.translateBy(x: 7, y: 37)
        context.rotate(by: -handRotationRight * CGFloat.pi/180)

        let right_FingerRect = CGRect(x: -5, y: -15, width: 40, height: 20)
        context.saveGState()
        context.clip(to: right_FingerRect)
        context.translateBy(x: right_FingerRect.minX, y: right_FingerRect.minY)

        RoboArmPC.drawRightFinger(frame: CGRect(origin: .zero, size: right_FingerRect.size), resizing: .stretch)
        context.restoreGState()

        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawLeftFinger(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 20, height: 40), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 20, height: 40), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 20, y: resizedFrame.height / 40)


        //// Color Declarations
        let metal = UIColor(red: 0.217, green: 0.217, blue: 0.299, alpha: 1.000)

        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 20, height: 5))
        metal.setFill()
        rectangle3Path.fill()


        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: 5, y: 35)
        context.rotate(by: -90 * CGFloat.pi/180)

        let rectangle2Path = UIBezierPath(rect: CGRect(x: -5, y: -5, width: 40, height: 10))
        metal.setFill()
        rectangle2Path.fill()

        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawRightFinger(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 20), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 40, height: 20), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 40, y: resizedFrame.height / 20)


        //// Color Declarations
        let metal = UIColor(red: 0.217, green: 0.217, blue: 0.299, alpha: 1.000)

        //// Rectangle Drawing
        context.saveGState()
        context.translateBy(x: 5, y: 15)

        let rectanglePath = UIBezierPath(rect: CGRect(x: -5, y: -5, width: 40, height: 10))
        metal.setFill()
        rectanglePath.fill()

        context.restoreGState()


        //// Rectangle 4 Drawing
        context.saveGState()
        context.translateBy(x: 37.5, y: 10)
        context.rotate(by: -90 * CGFloat.pi/180)

        let rectangle4Path = UIBezierPath(rect: CGRect(x: -10, y: -2.5, width: 20, height: 5))
        metal.setFill()
        rectangle4Path.fill()

        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawArmPartA(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 93, height: 78), resizing: ResizingBehavior = .aspectFit, handState: CGFloat = 0.288, handRotation: CGFloat = 0.692) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 93, height: 78), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 93, y: resizedFrame.height / 78)


        //// Color Declarations
        let metal = UIColor(red: 0.217, green: 0.217, blue: 0.299, alpha: 1.000)

        //// Variable Declarations
        let handRotationCircle: CGFloat = handRotation * 360

        //// Rectangle Drawing
        context.saveGState()
        context.translateBy(x: 5, y: 39)

        let rectanglePath = UIBezierPath(rect: CGRect(x: -5, y: -5, width: 60, height: 10))
        metal.setFill()
        rectanglePath.fill()

        context.restoreGState()


        //// Symbol Drawing
        context.saveGState()
        context.translateBy(x: 55.15, y: 39.24)
        context.rotate(by: -handRotationCircle * CGFloat.pi/180)

        let symbolRect = CGRect(x: -7, y: -37, width: 44, height: 44)
        context.saveGState()
        context.clip(to: symbolRect)
        context.translateBy(x: symbolRect.minX, y: symbolRect.minY)

        RoboArmPC.drawHand(frame: CGRect(origin: .zero, size: symbolRect.size), resizing: .stretch, handState: handState)
        context.restoreGState()

        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawArmPartB(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 177, height: 176), resizing: ResizingBehavior = .aspectFit, handState: CGFloat = 0.288, handRotation: CGFloat = 0.692, armPartARotation: CGFloat = 0.92) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 177, height: 176), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 177, y: resizedFrame.height / 176)


        //// Color Declarations
        let metalArm = UIColor(red: 0.433, green: 0.255, blue: 0.255, alpha: 1.000)

        //// Variable Declarations
        let armPartARotationCircle: CGFloat = armPartARotation * 360

        //// Rectangle Drawing
        context.saveGState()
        context.translateBy(x: 39, y: 88)

        let rectanglePath = UIBezierPath(rect: CGRect(x: -5, y: -6, width: 60, height: 12))
        metalArm.setFill()
        rectanglePath.fill()

        context.restoreGState()


        //// Symbol Drawing
        context.saveGState()
        context.translateBy(x: 88.57, y: 87.75)
        context.rotate(by: -armPartARotationCircle * CGFloat.pi/180)

        let symbolRect = CGRect(x: -5, y: -39, width: 93, height: 78)
        context.saveGState()
        context.clip(to: symbolRect)
        context.translateBy(x: symbolRect.minX, y: symbolRect.minY)

        RoboArmPC.drawArmPartA(frame: CGRect(origin: .zero, size: symbolRect.size), resizing: .stretch, handState: handState, handRotation: handRotation)
        context.restoreGState()

        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawRoboArm(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 277, height: 277), resizing: ResizingBehavior = .aspectFit, handState: CGFloat = 0.288, handRotation: CGFloat = 0.692, armPartARotation: CGFloat = 0.92, armPartBRotation: CGFloat = 0.928) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 277, height: 277), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 277, y: resizedFrame.height / 277)



        //// Variable Declarations
        let armPartBRotationCircle: CGFloat = armPartBRotation * 360

        //// Symbol Drawing
        context.saveGState()
        context.translateBy(x: 138, y: 139)
        context.rotate(by: -armPartBRotationCircle * CGFloat.pi/180)

        let symbolRect = CGRect(x: -40, y: -88, width: 177, height: 176)
        context.saveGState()
        context.clip(to: symbolRect)
        context.translateBy(x: symbolRect.minX, y: symbolRect.minY)

        RoboArmPC.drawArmPartB(frame: CGRect(origin: .zero, size: symbolRect.size), resizing: .stretch, handState: handState, handRotation: handRotation, armPartARotation: armPartARotation)
        context.restoreGState()

        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(RoboArmPCResizingBehavior)
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
