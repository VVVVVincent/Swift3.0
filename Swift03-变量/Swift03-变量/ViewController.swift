//
//  ViewController.swift
//  Swift03-变量
//
//  Created by 李慧娟 on 17/3/8.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /***********Swift变量***********
         变量是一种使用方便的占位符，用于引用计算机内存地址；
         每个变量都指定了特定的类型，该类型决定了其占用内存的大小，不同的类型也决定了可存储值的范围
         */

        /*
         1.变量声明：告诉编译器在内存中的哪个位置上为变量创建多大的存储空间
           在使用变量前，需要用“var”关键字来声明它
         */
        var a = 42//报警告的意思是a是个变量，但是没有被再次赋值去改变它，该警告可忽略
        print(a)
        var b:Double = 3.14593
        print(b)


        /*
         2.变量命名：
         变量名可以有字母数字或_组成；
         变量名开头是字母或_；
         变量名也可以使用简单的Unicode字符
         */
        var _var = "hello"
        print(_var)

        var 🐶 = "world"
        print(🐶)

        var 你好 = "你好"
        print(你好)


        /*
         3.变量输出：在Swift2中，用print替换了println函数进行输出
           在字符串中可以使用括号与反斜线来插入变量
         */
        var myName:String = "Vincent"
        var age = 24
        print("\(myName)的年龄是\(age)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

