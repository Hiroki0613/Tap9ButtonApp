//
//  ViewController.swift
//  Tap9ButtonApp
//
//  Created by 近藤宏輝 on 2020/01/15.
//  Copyright © 2020 宏輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var imageButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...8{
             imageButton = UIButton()
             
             switch i {
             case 0,1,2:
                 imageButton.tag = i
                 imageButton.frame = CGRect(x: CGFloat(i) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 1, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                 imageButton.setTitle("\(i)", for: .normal)
                 imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                 break
            }
    }


}

