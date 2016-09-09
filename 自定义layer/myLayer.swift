//
//  myLayer.swift
//  自定义layer
//
//  Created by 朱星 on 16/9/9.
//  Copyright © 2016年 zhuxing. All rights reserved.
//

import UIKit

class myLayer: CALayer {

    //必须实现drawInContext
    override func drawInContext(ctx: CGContext) {

        CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 50, 50))
        CGContextSetFillColorWithColor(ctx, UIColor.redColor().CGColor)
        CGContextDrawPath(ctx, CGPathDrawingMode.EOFill)
        
        
    }
}
