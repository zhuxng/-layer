//
//  ViewController.swift
//  自定义layer
//
//  Created by 朱星 on 16/9/9.
//  Copyright © 2016年 zhuxing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let subLayer = myLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        subLayer.frame = CGRectMake(100, 100, 50, 50)
        
        
        //将子layer添加父layer前需要手动调用
        subLayer.setNeedsDisplay()
        self.view.layer.addSublayer(subLayer)
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //开启事务管理。
        
//        CATransaction.begin()
        
        subLayer.frame = CGRectMake(100, 100, 300, 150)
        
//        CATransaction.commit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

