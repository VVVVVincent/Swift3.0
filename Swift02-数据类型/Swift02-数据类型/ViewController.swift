//
//  ViewController.swift
//  Swift02-数据类型
//
//  Created by 李慧娟 on 17/3/8.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /***************Swift数据类型***************/

        /*
         1.内置数据类型
         int->整数型类型；
         uint->无符号类型；
         尽量不要使用UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使用Int，即使你要存储的值已知是非负的。统一使用Int可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推断；

         浮点型：比整数类型表示的范围更大，可以存储比int类型更大或者更小的数字，swift提供了两种由符号的浮点型
           Double->表示64位浮点型，需要存储很大或者很高精度的浮点型时用此类型
           Float->表示32位浮点型，存储精读不高的数值时可用此类型
         
         布尔值->逻辑上的值，真（true）或假（false）;
         字符串->字符的序列集合，如“hello world”;
         字符->单个字母，如“a”;
         可选类型(options)->处理值可能缺失的情况，表示有值或者没有值
         */


        /*
         2.数值范围：不同变量类型内存的存储空间
         Int8   1字节
         UInt8  1字节
         Int32  4字节
         UInt32 4字节
         Int64  8字节
         UInt64 8字节
         Float  4字节
         Double 8字节
         */

        /*
         3.类型别名：对当前的类型定义了另一个名字，通常用typealias关键字来定义
         */
        //定义Int的类型别名未NewInt
        typealias NewInt = Int
        let numValue:NewInt = 20
        print(numValue)

        /*
         4.类型安全：由于swift是类型安全的，所以编译时会进行类型检查，并把不匹配的类型标记为错误，可以在开发时尽早的发现错误
         */
        var a = 123
//        a = "hello"//string类型不能赋给int类型

        /*
         5.类型推断：
         并不是每次声明常量或者变量都需要显式指定类型；
         如果声明时没有显式指定类型，swift会根据所赋值进行类型推断(type inference)来选择合适的类型
         */
        let m = 2017//会被推断成int型
        let n = 3.1823//如果没有给浮点型标记类型，一般会被推断成Double
        let x = 2 + 1.9008//如果表达式中同时出现了整型和浮点型，则会被推断成Double型
        print(m,n,x)



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

