//
//  ViewController.swift
//  sampleTextView
//
//  Created by RIho OKubo on 2016/04/28.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //表示文字
        myTextView.text = "Hello,World!"
        
        //文字色
        myTextView.textColor = UIColor.blueColor()
        
        //フォント
        myTextView.font = UIFont(name:
            "AmericanTypewriter", size: 20)
        
        //文字寄せ位置
        myTextView.textAlignment = NSTextAlignment.Center
        
        //TODO:Helloを１０回表示する
        for var i=1; i <= 10; i++ {
            
            myTextView.text = myTextView.text + "Hello"
        }
        
//        //TODO:こんにちはn(改行）で１０個メッセージを表示する
//        for var n=1; n <= 10; n++ {
//            myTextView.text = myTextView.text + "こんにちは\(n)\r"
//         }
    
            var n = 0
            while n < 10{
                myTextView.text = myTextView.text + "こんにちは\(n)\r"
                n++
            
        }
        
        
        
    }

    @IBAction func tapClose(sender: UIButton) {
        //キーボードを閉じる
        myTextView.resignFirstResponder()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

