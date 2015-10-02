//
//  TriangleView.swift
//  GeometricCalc
//
//  Created by Александр on 02.10.15.
//  Copyright © 2015 Satori. All rights reserved.
//

import UIKit

class TriangleView: UIView {
    @IBInspectable var lightColor: UIColor = UIColor.orangeColor()
    @IBInspectable var darkColor: UIColor = UIColor.yellowColor()
    @IBInspectable var patternSize:CGFloat = 200
    @IBInspectable var padding:CGFloat = 30.0
    
    func drawRightTriangle(){
        let points: [CGPoint] = [
            CGPoint(x: 0 + padding, y: 0 + padding),
            CGPoint(x: self.frame.width - padding , y: self.frame.height - padding),
            CGPoint(x: 0 + padding, y: self.frame.height - padding)
        ]
        drawTriangle(points)
    }
    
    

    func drawTriangle(points:[CGPoint]){
        let trianglePath = UIBezierPath()
        trianglePath.moveToPoint(points[0])
        trianglePath.addLineToPoint(points[1])
        trianglePath.addLineToPoint(points[2])
        trianglePath.addLineToPoint(points[0])
        lightColor.setStroke()
        trianglePath.stroke()
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code

        let context = UIGraphicsGetCurrentContext()
        
        //3
        CGContextSetFillColorWithColor(context, darkColor.CGColor)
        
        //4
        CGContextFillRect(context, rect)
        
        drawRightTriangle()
    }
}
