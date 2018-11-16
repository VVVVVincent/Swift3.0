//
//  ViewController.swift
//  Swift16-枚举
//
//  Created by 李慧娟 on 2017/9/6.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         枚举：
         简单的说是一种数据类型，只不过这组数据类型只包含自定义的特定数据，它是一组有共同特性的数据的集合。

         枚举语法：
         使用enum关键字来创建枚举，并且它们的整个定义都在一对大括号里

         枚举的功能是：
         1.它生命在类中，可以通过实例化来访问它的值
         2.枚举可以定义构造函数来提供一个初始成员值，可以在原始的实现基础上扩展它们的值。
         3.可以遵守协议来提供标准的功能
         */



        /*
         枚举中定义的值是这个枚举的成员值，case关键词表示一行新的成员变量将被定义；
         与c/oc不同，swift的枚举成员在被创建时时不会赋予一个默认的整型值，相反，这些枚举成员本省就有完备的值，这些值是已经明确定义好的DaysOfWeek类型；
         变量day的类型可以在它被DaysOfWeek的一个可能值初始化的时候推断出来，一旦day被声明成一个DaysOfWeek，可以用缩写的.语法将它设置成另外的DaysOfWeek的成员值；
         当DaysOfWeek类型已知时，再次为其赋值可以省略枚举名，使用显示的枚举值可以增加代码的可读性。
         */
        enum DaysOfWeek {
            case Sunday
            case Monday
            case tuesday
            case wednesday
            case thursday
            case friday
            case saturday
        }

        var day = DaysOfWeek.Sunday
        day = .friday;
        print(day)// 输出friday

        switch day {
        case .Sunday:
            print("星期天")
        case .Monday:
            print("星期一")
        case .tuesday:
            print("星期二")
        case .wednesday:
            print("星期三")
        case .thursday:
            print("星期四")
        case .friday:
            print("星期五")
        case .saturday:
            print("星期六")
        default:
            print("==============")
        }



        /*
         相关值和原始值：
         枚举可分为相关值和原始值：
         相关值是不同的数据类型，原始值是相同的数据类型
         相关值的创建是基于常量或变量，原始值是预先填充的值；
         相关值是当你在在创建一个基于枚举成员的新常量或者变量时才会被设置，并且每次当你这么做的时候，它的值可以时不同的；
         原始值始终是相同的
         */
        //相关值
        enum Student {
            case Name(String)
            case mark(Int,Int,Int)
        }

        var studentName = Student.Name("Vincent")
        var  studentMark = Student.mark(100, 90, 90)
        switch studentMark {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

