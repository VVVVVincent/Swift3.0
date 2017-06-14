//
//  ViewController.swift
//  Swift15-闭包
//
//  Created by 李慧娟 on 17/4/10.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*******************Swift闭包******************
         闭包(Closures)是自包含的代码块，可以在代码中使用或者用来作为参数传值；
         Swift中的闭包与OC中的block代码块以及其它的一些编程语言中的匿名函数比较相似；
         全局函数和嵌套函数启其实就是特殊的闭包；
         */

        /*
         1.闭包的定义语法
         {(参数，用逗号隔开) -> 返回值类型 in
             代码句
         }
         */
        //定义没有参数和返回值的闭包
        let closure1 = {print("Swift闭包实例")}
        closure1()

        //定义有参数和返回值类型的
        let closure2 = {(a: Int, b: Int) -> Int in
            return a + b
        }
        let result = closure2(200,20)
        print(result)


        /*
         2.闭包表达式：是一种利用简洁语法构建内联闭包的方式
         sorted方法：会根据您提供的用于排序的闭包函数将已知类型数组中的值进行排序，排序完成后，
                    sorted方法会返回一个与数组大小相同，包含同类型元素且元素都已排列好的新数组，原数组不会被修改，
                    sorted(by:)方法需要传入两个参数：已知类型的数组、闭包函数
         */
        let intArr = [1, 3, 6, 8]
        let closure3 = intArr.sorted(by: fun1)
        print(closure3)

        let nameArr = ["a", "t", "f", "r"]
        let closure4 = nameArr.sorted { (s1: String, s2: String) -> Bool in
            return s1 > s2
        }
        print(closure4)


        /*
         3.参数名称缩写：
         Swift自动为内联函数提供了参数名称缩写功能，可以直接通过$0,$1,$2等来顺序调用闭包的参数
         如果你在闭包表达式中使用参数名称缩写, 您可以在闭包参数列表中省略对其定义, 并且对应参数名称缩写的类型会通过函数类型进行推断。
         in 关键字同样也可以被省略
         */
        let closure5 = nameArr.sorted(by: {$0 > $1})//$0和$1表示闭包中第一个和第二个String类型的参数
        print(closure5)


        /*
         4.运算符函数:
         Swift 的String类型定义了关于大于号 (>) 的字符串实现，其作为一个函数接受两个String类型的参数并返回Bool类型的值。 
         而这正好与sort(_:)方法的第二个参数需要的函数类型相符合。
         因此，可以简单地传递一个大于号，Swift可以自动推断出想使用大于号的字符串函数实现
         */
        let closure6 = nameArr.sorted(by: >)
        print(closure6)


        /*
         5.尾随闭包：
         是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用
         */
        let closure7 = nameArr.sorted() { $0 > $1}
        print(closure7)
        //如果函数只需要闭包表达式一个参数，当使用尾随闭包时，可以将()省略
        let closure8 = nameArr.sorted { $0 > $1 }
        print(closure8)


        //6.捕获值
        let closure9 = myFun(outsidePare: 10)
        print(closure9())//返回值10
        print(closure9())//返回值20
        print(closure9())//返回值30

        /*
         7.闭包是引用类型
         在上述6例子中，closure9是常量，但这些常量指向的闭包仍然可以增加其捕获的变量值，这是因为函数和闭包都是引用类型;
         无论将函数/闭包赋值给一个常量还是变量，实际上都是将常量/变量的值设置成对应的函数/闭包的引用；
         上述6的例子中，closure9指向闭包的引用是一个常量，而并非内容本身，这也意味着如果将闭包赋值给了两个不同的常量/变量，两个值都会指向同一个闭包
         */
        let closure10 = closure9
        print(closure10())//返回值40



    }

    

    //使用普通函数（内嵌函数）提供排序类型，闭包函数传参与数组类型一致(Int,Int) -> Bool
    func fun1(s1: Int, s2: Int) -> Bool {
        return s1 > s2
    }


    /*
     6.捕获值：
     闭包可以在其定义的上下文中捕获常量或变量
     */
    //定义函数myFun，含有外部参数outsidePare，返回值为一个(没有参数，返回值类型为Int的)函数
    func myFun(outsidePare para: Int) -> () -> Int {
        var var1 = 0

        func myFun2D () -> Int{
            var1 += para
            return var1
        }

        return myFun2D
    }






    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

