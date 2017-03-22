//
//  ViewController.swift
//  Swift09-循环
//
//  Created by 李慧娟 on 17/3/20.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /***********************Swift循环********************/

        //循环类型：for-in循环、for循环(该循环在swift3.0已被弃用)、while循环、repeat...while循环
        /*
         1.for-in循环:用于遍历一个集合中的所有元素，例如数字表示的区间、数组中的元素、字符串中的字符
         */
        for index in 1...5 {
            print("\(index) * 5 = \(index * 5)")
        }

        var intArrs:[Int] = [10,20,30]
        for index in intArrs {
            print("index的值为\(index)")
        }

        /*
         2.while循环:从计算单一条件开始，如果条件为true，会重复一系列语句，直到条件变为false
         */
        var index = 10
        while index < 20 {
            print("\(index) * 20 = \(index * 20)")
            index = index + 1;
        }

        /*
         3.repeat...while循环：
         不像for和while循环开始执行前先判断条件语句，而是在循环执行结束时判断条件是否符合
         注意：条件表达式出现在循环的尾部，所以循环中的语句会在条件被测试之前至少执行一次
         */
        repeat{
            print("index = \(index)")
            index = index + 1
        }while index < 30



        //循环控制语句：continue语句、break语句、fallthrough语句
        /*
         1.continue语句：告诉一个循环体立即停止本次循环迭代，重新开始下次循环迭代
         */
        repeat{
            index = index + 1
            if index == 32 {
                continue//index等于32时直接跳过，进行下一次迭代
            }
            print("index = \(index)")
        }while index < 35

        /*
         2.break语句：会立即结束整个控制流的执行，即结束当前整个循环
         */
        repeat{
            index = index + 1
            if index == 38 {
                break//index等于38时结束当前循环
            }
            print("index = \(index)")
        }while index < 40

        /*
         3.fallthrough语句：让匹配到满足条件的case之后的语句会按顺序执行，不论是否满足条件
         */
        switch index {
        case 10,50:
            print("index的值为10或50")
            fallthrough
        case 20:
            print("index的值为20")
            fallthrough
        case 38:
            print("index的值为38")
            fallthrough
        case 30:
            print("index的值为30")
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

