//
//  ViewController.swift
//  Swift07-运算符
//
//  Created by 李慧娟 on 17/3/9.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*****************Swift运算符****************
         运算符是一个符号，用于高速编译器执行一个数字或逻辑运算；
         swift提供了一下几种运算符：算术、比较、逻辑、位、赋值、区间、其它运算符等
         */

        /*
         1.算术运算符：＋加、－减、＊乘、／除、％求余
         */
        var a = 50
        var b = 20
        print("a+b=\(a + b)")
        print("a-b=\(a - b)")
        print("a*b=\(a * b)")
        print("a/b=\(a / b)")
        print("a%b=\(a % b)")


        /*
         2.比较运算符：>大于、<小于、>=大于等于、<=小于等于、==等于、!=不等于、
         */
        print("a>b结果为\(a > b)")//true
        print("a<b结果为\(a < b)")//false
        print("a>=b结果为\(a >= b)")//true
        print("a<=b结果为\(a <= b)")//false
        print("a==b结果为\(a == b)")//false
        print("a!=b结果为\(a != b)")//true


        /*
         3.逻辑运算符：&&逻辑与、||逻辑或、！逻辑非
         */
        let m = true; let n = false
        print("m&&n结果为\(m && n)")//false
        print("m||n结果为\(m || n)")//true
        print("!m结果为\(!m)")//false


        /*
         4.位运算符：用来对二进制进行操作，～取反，&按位与与，｜按位与或，^按位与异或运算
         */
        let x = 60//00111100
        let y = 13//00001101
        print("x&y = \(x & y)");//按位与，相同取相同，不同取0，结果为12->00001100
        print("x｜y = \(x | y)");//按位或，任意一个为1，或为1，结果为61->00111101
        print("~x = \(~x)");//对每一位取反，结果为-61->11000011
        print("x^y = \(x ^ y)");//按位异或，如果相同为0，不同为1,结果为49->00110001


        /*
         5.赋值运算符：
         = += -= *= /= %=
         */
        //swift3.0去掉了++和--,用+=和-=替代
        a -= 1
        b += 1
        a *= 5
        b /= 1
        a %= 3
        print("a = \(a)\nb = \(b)")


        /*
         6.区间运算符：
         闭区间运算符(a...b)->定义一个包含从a到b,并包含a和b的所有值的区间,b必须大于a
         半开区间运算符(a..
         */
        for index1 in 1...5 {
            //依次输出从1到5
            print("\(index1) * 5 = \(index1 * 5)")
        }

        for index2 in 1..<5 {
            //依次输入从1到4
            print("\(index2) * 4 = \(index2 * 4)")
        }

        /*
         7.其它运算符：一元、二元、三元
         */
        var v1 = 5
        print("-v1的值是\(-v1)")//一元减
        print("+v1的值是\(+v1)")//一元加

        var v2 = 10
        var v3 = true
        var v4 = v3 ? v2 : v1//三元运算
        print(v4)

        /*
         8.运算符优先级：
         指针优先，单目运算优于多目运算，如正负号
         先乘除（模），后加减
         先算术运算，后移位运算，最后位运算
         逻辑运算最后
         */

















    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

