//
//  ViewController.swift
//  Swift06-字面量
//
//  Created by 李慧娟 on 17/3/9.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /**************Swift字面量*************
         所谓字面量，就是像特定的数字，字符串或布尔值这样，能够直接了当的指出自己的类型并为变量进行赋值的值
         */
        let a = 3//整型字面量
        let b = "hello"//字符串字面量
        let c = true//布尔字面量

        /*
         整型字面量：十进制、二进制、八进制、十六进制常量
         */
        let i1 = 18//十进制
        let i2 = 0b10001//二进制
        let i3 = 0o21//八进制
        let i4 = 0x11//十六进制

        /*
         浮点型字面量：
         有整数部分、小数点、指数部分；
         除非特别指定，浮点型字面量的默认推导类型为Double；
         浮点型字面量默认用十进制表示，也可以用十六进制表示
         */


        /*
         字符串字面量：
         由被包在双引号下的一串字符组成；
         字符串字面量中不能包含未转义的双引号"",未转义的反斜线\,回车符及换行符
         */
        let myString = "hello\tworld\n\nVincet"//(\t)表示水平制位符，（\n）表示换行
        print(myString)

        /*
         布尔型字面量：
         默认类型是bool
         布尔值字面量有三个值：true,false,nil
         */



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

