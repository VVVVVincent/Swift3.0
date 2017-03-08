//
//  ViewController.swift
//  Swift01-基本语法
//
//  Created by 李慧娟 on 17/3/8.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /************swift基本语法*************/

        /*
         1.标记:swift程序由多种标记组成，可以是单词，标识符，常量，字符串或者符号
         */


        /*
         2.注释：与C语言极其相似，单行注释用"//"，多行注释用"/* */"
         /*
         但与C语言不同的是，swift的多行注释可以嵌套在其他注释里面
         */
         */


        /*
         3.分号:与其它语言不同的是，swift不要求在每行代码的结尾使用分号";"，但是当在同一行书写多条代码时，必须用分号隔开
         */
        var myString = "hello"
        myString = "hello world";print(myString)


        /*
         4.标识符：就是给变量、常量、方法、函数、枚举、结构体、类、协议、等指定的名字，构成标识符一定要有规范。
         swift命名规范如下：
         区分大小写，myName和myname是两个不同的标识
         标识符首字母可以以下划线_或者字母开头，但不能是数字
         标识符中除了首字母的其它字符可以是数字、字母或下划线_
         标识符不能为特殊字符的关键字，如class、id等
         */


        /*
         5.空格：swift并不像C、C++、JAVA那样完全忽视空格，但是又不像python那样对缩进要求的很严格；
         在swift中，运算符不能直接跟在变量或者常量的后边，必须严格的按照格式来写
         */
        //错误的写法
        //let a= 1 + 2 ->运算符不能直接跟在常量或者变量的后边
        //let a = 1+ 2 －>这样swift认为到1+就结束了，2是下一个代码句了

        //正确的写法
        let a = 2+3
        let b = 1 + 2//规范的写法
        print(a * b)


        /*
         6.字面量：像特定的数字、字符串、或者布尔值，能够直接了当的指出自己的类型并为变量进行赋值的值
         42            整型字面量
         3.1415926     浮点型
         "hello world" 字符型
         true          布尔型
         */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

