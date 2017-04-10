//
//  ViewController.swift
//  Swift14-函数
//
//  Created by 李慧娟 on 17/4/1.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*****************Swift函数**************
         Swift函数用来完成特定功能独立的代码块；
         Swift使用一个统一的语法来表示简单的C语言风格的函数导复杂的OC语言风格的方法；
         函数声明：告诉编译器函数的的名字，返回类型及参数
         函数定义：提供了函数的实体
         */

        /*
         2.函数调用
         */
        let str1 = firstFunc(name: "Vincent", age: 24)
        print(str1)// Vincet 24

        print("\(secondFun())")
        print(secondFun())

        //元祖作为函数返回值
        //元祖：可以存储任意数据类型的数据集合，用圆括号包
        let person = (name:"lhj", age: 24, score: 100.00)
        print("name:\(person.name)")
        print("age:\(person.age)")
        print("score:\(person.score)")


        let array:[Int] = [1,6,3,8,9,2,-1]
        let bounds = thirdFun(paramArr: array)
        print(bounds)

        //没有返回参数的函数
        myFun(parameterString: "Hello")

        //外部参数
        myFun3(a: 3, b: 5)

        //可变参数
        myFun4(paras: 1,2,3,4,5)

        //常量、变量及I/O参数
        var x = 10, y = 5
        myFun5(&x, &y)
        print("x = \(x), y = \(y)")

        //函数类型及使用
        print("\(myFun6(no1: 20, no2: 10))")
        print("\(myFun6(no1: 36, no2: 6))")


        /*
         11.使用函数类型：
         在Swift中，使用函数类型就像其它类型一样，例如你可以定义一个类型为函数的常量或者变量，并将适合的函数赋值给它
         */
        let addition: (Int, Int) -> Int = myFun6//定义一个类型为函数的叫addition的常量，参数与返回值类型都是int,并让这个新变量指向myFun6
        print("\(addition(60, 2))")


        //函数做为参数传递给另一个函数
        myfun7(fun: myFun6, a: 10, b: 5)


        //函数嵌套->函数做为返回值类型
        let fun8 = myFun8(forDecrement: 30)
        print(fun8())









    }

    /*
     1.函数定义：
     定义函数用关键字func;
     定义函数的时候，可以指定一个或多个输入参数、一个返回值类型；
     每个函数都有一个函数名来描述它的功能，通过函数名以及对应类型的参数值类型来调用这个函数，函数的参数传递顺序必须与参数列表一致；
     语法如下：
     func 函数名(形参) -> 返回值类型
     {
     语句
     return parameters
     }
     */

    /*
     3.函数参数：函数可以接受一个或者多个参数，这些参数包含在函数的括号之中
     */
    func firstFunc(name: String, age: Int) -> String {
        return name + "\t" + String(age);
    }

    /*
     4.不带参数的函数
     */
    func secondFun() -> String {
        return "hello world";
    }

    /*
     5.元组作为函数返回值：
     函数的返回值可以是字符串、整型、浮点型等
     元组和数组相似，不同的是，元组里可以是任意类型，使用的是圆括号；
     可以用元组（tuple）类型，让多个值作为一个复合值返回；
     */

    func thirdFun(paramArr: [Int]) -> (max:Int, min:Int) {
        var currentMax = paramArr[0]
        var currentMin = paramArr[0]
        for value in paramArr {
            if value < currentMin {
                currentMin = value
            }
            if value > currentMax {
                currentMax = value
            }
        }
        return(currentMax,currentMin)
    }

    /*
     6.没有返回值的函数
     */
    func myFun(parameterString: String) {
        print(parameterString)
    }

    /*
     7.函数参数名称：函数参数都有一个局部参数名和外部参数名
     */
    //局部参数名：在函数的内部实现，即形参
    func myFun2(num: Int) {//其中num就是局部参数
        print(num)
    }

    //外部参数名：可以在局部参数名前指定外部参数名，中间以逗号隔开，外部参数名用于在函数调用时传递给函数的参数
    func myFun3(a firstpara: Int, b secondPara: Int) {//其中a和b就是外部参数，不能在函数内部使用，智能在调用函数时传值使用
        let c = firstpara + secondPara
        print(c)
    }


    /*
     8.可变参数：
     可变参数可以接受0个或多个值，函数调用时，可以用可变参数来指定函数参数，其数量是不确定的；
     可变参数通过在变量类型名后边加入(...)的方式来定义
     */
    func myFun4<N>(paras: N...) {
        for i in paras {
            print(i)
        }
    }

    /*
     9.常量、变量及I/O参数：
     一般默认的在函数中定义的参数都是常量参数，也就是这个参数你只可以查询，不能改变它的值;
     如果要声明一个变量参数，可以在参数定义前加inout关键字，就可以改变这个参数的值了；
     一般默认的参数传递都是传值调用的，而不是引用，所以传入的参数在函数内改变，并不影响原来的那个参数，传入的只是这个参数的副本；
     当传入的参数作为输入输出参数时，需要在参数名前加&符号，表示这个值可以被更改；
     */
    func myFun5(_ a: inout Int, _ b: inout Int) {
        let c = a
        a = b
        b = c
    }

    /*
     10.函数的类型及使用：
     每个函数都有特定的函数类型，由函数的参数类型和返回类型组成
     */
    func myFun6(no1: Int, no2: Int) -> Int {
        return no1 / no2
    }

    /*
     12.函数做为参数传递给另一个函数
     */
    func myfun7(fun: (Int, Int) -> Int, a: Int, b:Int) {
        print("输出结果：\(fun(a, b))")
    }

    /*
     13.函数嵌套：
     函数嵌套指的是在函数内定义一个新的函数，外部的函数可以调用函数内定义的函数
     */
    func myFun8(forDecrement total: Int) -> () -> Int {
        var a = 10
        func myFun8_2D() -> Int{
            a = a - total
            return a
        }

        return myFun8_2D//函数做为返回类型
    }







    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

