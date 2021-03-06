//
//  ViewController.swift
//  Tap9ButtonApp
//
//  Created by 近藤宏輝 on 2020/01/15.
//  Copyright © 2020 宏輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Buttonをコードで実装
    var imageButton:UIButton!
    //現在の問題数
    var questionNumber = 0
    //選択された回答　回答1なら1、回答2なら2になる
    var pickedAnswer = 0
    //正解数をprintで表示
    var correctAnswerNumber = 0
    
    //遷移先の色を押したボタンによって変更
    var fromViewControllerColor = UIColor()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        for i in 0...8{
            imageButton = UIButton()
            
            switch i {
            case 0,1,2:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 1, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setTitle("\(i)", for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
            case 3,4,5:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i-3) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 2, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setTitle("\(i)", for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
                
            case 6,7,8:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i-6) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 3, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setTitle("\(i)", for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
            default:
                break
            }
            self.view.addSubview(imageButton)
        }
    }
    
    
    @objc func tapButton(_ sender:UIButton){
        print(sender.tag)
        
 
        for i in 0...8{
            
            switch i {
                
            case 0:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .blue
                break
            case 1:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .brown
                break
            case 2:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .cyan
                break
            case 3:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .darkGray
                break
            case 4:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .green
                break
            case 5:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .magenta
                break
            case 6:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .orange
                break
            case 7:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .purple
                break
            case 8:
                performSegue(withIdentifier: "next", sender: nil)
                fromViewControllerColor = .red
                break
            default:
                break
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let nextVC = segue.description as! NextViewController
            nextVC.fromViewControllerColler = fromViewControllerColor
        }
    }
    
    
    
    
    
}

