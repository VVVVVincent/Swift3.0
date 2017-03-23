//
//  ViewController.swift
//  Swift10-字符串
//
//  Created by 李慧娟 on 17/3/22.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /****************swift字符串****************
         是一系列字符的集合，数值类型为String
         */

        /*
         1.创建字符串：通过使用字符串字面量或String类的实例来创建一个字符串
         */
        var myName = "Vincet"//使用字符串字面量创建
        print(myName)

        var name = String("lhj")
        var age: String = "24"//使用String类的实例创建
        print(name ?? "")
        print(age)

        /*
         2.空字符串：
         使用一个空的字符串字面量赋值给变量，或初始化一个String的实例来初始一个空的字符串；
         可以使用字符串属性的isEmpty判断字符串是否为空
         */
        var a = ""
        if a.isEmpty {
            print("a的值为空")
        }else{
            print("a的值不为空")
        }

        let b = String()
        if b.isEmpty {
            print("b的值为空")
        }else{
            print("b的值不为空")
        }

        /*
         3.字符串常量：可以将字符串赋给一个变量或者常量，变量是可修改的，常量是不可修改的
         */
        var c = "lhj"
        c += " Vincent"
        print(c)//变量是可以修改的

        let d = "lhj"
//        d += " 24"//常量不能被修改，修改被报错
        print(d)

        /*
         4.字符串中插入值：
         字符串中插入值是一种构建字符串的方式，其中可以包含常量、变量、字面量和表达式；
         插入的字符串字面量每一项都在以反斜线为前缀的圆括号中
         */
        let m1 = 20; let m2 = 10
        let m3: Float = 20.0
        let stringM = "\(m1)乘以\(m2)等于\(m3 * 10)"
        print(stringM)

        /*
         5.字符串连接：字符串可以通过＋连接
         */
        let n1 = "lhj"
        let n2 = "\t24"
        let n3 = n1 + n2
        print(n3)

        /*
         6.字符串长度：可以使用String.characters.counts属性来计算
         */
        let length = n3.characters.count
        print("\(n3)的长度为\(length)")

        /*
         7.字符串比较：可以使用==来比较两个字符串是否相等
         */
        let x = "hello world"
        let y = "hello swift"
        if x == y {
            print("x与y相等")
        }else{
            print("x与y不相等")
        }

        /*
         8.Unicode字符串：Unicode是一个国际标准，用于文本的编码，Swift的String类型是基于Unicode建立的，可以循环迭代出UTF-8和UTF-16的编码
         */
        print("*******UTF-8********")
        let unicodeString = "hello Vincent"
        for code in unicodeString.utf8 {
            print(code)
        }

        print("*******UTF-16********")
        for code in unicodeString.utf16 {
            print(code)
        }

        /*
         9.字符串函数及运算符
         */
        //判断字符串是否为空
        if !unicodeString.isEmpty {
            print("unicodeString不为空")
        }

        //检查字符串是否有特定前缀
        if unicodeString.hasPrefix("hel") {
            print("\(unicodeString)以hel开头")
        }

        //检查字符串是否有特定后缀
        if unicodeString.hasSuffix("cent") {
            print("\(unicodeString)以cent结尾")
        }

        //字符串数字转整型
        let intString: String = "24"
        let myInt: Int? = Int(intString)
        print(myInt!)

        //比较两个字符串，按英文字母顺序比较，对两个字符串进行逐一比较
        if x > y {
            print("\(x) >\(y)")
        }else{
            print("\(x)<\(y)")
        }

        //比较两个字符串是否不相等
        if x != y {
            print("\(x) != \(y)")
        }










    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

