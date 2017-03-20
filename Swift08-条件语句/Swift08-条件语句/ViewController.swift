//
//  ViewController.swift
//  Swift08-条件语句
//
//  Created by 李慧娟 on 17/3/20.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*****************条件语句******************
         通过设定的一个或多个条件来执行语句；
         swift提供以下几种类型的条件语句：if语句、if...else语句、if...else if...else语句、内嵌if语句、switch语句
         其中?:运算符可以替代if...else语句，即三目表达式
         */
        let bool1 = false
        let a = bool1 ? 10 : 5
        print(a)


        let b:Int = 10

        /*
         1.if语句：由一个布尔表达式后跟一个或多个语句组成
         */
        if b > 5 {
            print("b > 5")
        }

        /*
         2.if...else语句:一个if语句后边跟一个可选的else语句
         */
        if b < 5 {
            print("b < 5")
        }else{
            print("b > 5")
        }

        /*
         3.if...else if...else
         */
        if b == 5 {
            print("b = 5")
        }else if b == 6 {
            print("b = 6")
        }else if b == 7 {
            print("b = 7")
        }else{
            print("b = \(b)")
        }

        /*
         4.内嵌if语句：可以在一个if或者else if语句内使用另一种if或者else if语句
         */
        if b > 5 {
            if b < 6 {
                print("b < 6")
            }else{
                print("b = \(b)")
            }
        }

        /*
         5.switch语句：
         swift语句允许测试一个变量等于多个值时的情况，只要匹配到case语句，整个switch就会执行结束；
         一般switch语句中不使用fallthrough语句；
         这里我们需要注意case语句中没有使用fallthrough语句，则在执行当前的case语句后，switch后终止，控制流将会跳转到switch的下一行；
         如果使用了fallthrough语句，则会继续执行之后的case或default语句，不论条件是否满足都会执行；
         在大多数语言中，switch语句块中，case要紧跟break，否则case之后的语句将会顺序执行，而在swift语言中，默认时不会执行下去的，switch也会终止，如果你想要case之后的语句顺序执行，则需要执行fallthrough语句
         */
        //不使用fallthrough，陪陪到满足条件的case后，不会执行后边的case语句，直接结束整个switch语句
        switch b {
        case 5:
            print("b = 5")
        case 6:
            print("b = 6")
        case 7:
            print("b = 7")
        case 10,15:
            print("b的值位10或者15")
        default:
            print("默认case")
        }

        //使用fallthrough，匹配到符合条件的case语句后，会顺序执行后边的case语句，不管是否满足条件
        switch b {
        case 100:
            print("b的值为100")
            fallthrough
        case 10,15:
            print("b的值为10或者15")
            fallthrough
        case 20:
            print("b的值为20")
            fallthrough
        case 30:
            print("b的值为30")
            fallthrough
        default:
            print("默认case")
        }




    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

