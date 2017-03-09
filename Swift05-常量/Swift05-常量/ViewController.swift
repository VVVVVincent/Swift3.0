//
//  ViewController.swift
//  Swift05-常量
//
//  Created by 李慧娟 on 17/3/9.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /************Swift常量***********
         常量一旦设定，在程序运行时就无法改变其值；
         常量可以是任何的数据类型：整型、浮点型、字符串型、字符型、枚举型；
         常量常用关键字let来声明
         */
        let a = 2
        print(a)

        /*
         类型标注：
         当声明常量或者变量时可以加上类型标注，说明其要存储的数据类型，如果要添加类型标注，需要在常量或者变量后边加冒号和空格，然后加上类型名
         */
        let b: Int = 24
        print(b)

        /*
         常量命名：
         常量的命名跟变量命名规则一样，由字母、数字、或下划线组成，以数字或字母开始。可以使用简单的Unicode编码；
         */

        /*
         变量输出：
         同常量，2.0用print替代了println输出函数
         */
        let myString1:String = "Vincet"
        let mystring2 = 24

        print("我叫\(myString1),\n今年\(mystring2)岁")


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

