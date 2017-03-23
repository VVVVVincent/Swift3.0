//
//  ViewController.swift
//  Swift11-字符
//
//  Created by 李慧娟 on 17/3/23.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /***************Swift字符**************
         是一个单一的字符字符串字面量，数据类型为Character；
         如果在字符类型的常量或变量中存储更多的值，则会报错
         */
        let charA: Character = "a"
        let charB: Character = "b"
//        let charC: Character = "ab"//报错
        print("\(charA)\n\(charB)")


        /*
         空字符变量：Swift中不能创建空的Character字符类型变量或者常量
         */
//        let charD: Character = ""//报错
//        var charD: Character = "" //报错



        /*
         遍历字符串中的字符：Swift中的String类型表示特定的Character类型的值的集合，每一个字符代表一个Unicode字符
         */
        for code in "vincent".characters {
            print(code)
        }


        /*
         字符串连接字符：使用String的append()方法来实现字符串连接字符
         */
        var myString = "lhj"
        let myChar: Character = "A"
        myString.append(myChar)
        print(myString)




    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

