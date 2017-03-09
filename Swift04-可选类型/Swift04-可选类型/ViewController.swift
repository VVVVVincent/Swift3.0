//
//  ViewController.swift
//  Swift04-可选类型
//
//  Created by 李慧娟 on 17/3/9.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /***********可选类型Optionals***********
         在swift中，可选类型其根源是一个枚举型，里面有None和Some两种类型。其实所谓的nil就是Optional.None, 非nil就是Optional.Some, 然后会通过Some(T)包装（wrap）原始值；
         用于处理值缺失的情况，表示“那儿有一个值，并且等于X”，或者“那儿没有值”；
         当声明一个可选类型时，要确保用（）给？操作符一个合适的范围；
         当声明一个可选变量或者可选属性的时候没有提供初始值，它的值会被默认为nil;
         如果可选类型包含一个值，后边可以用！来访问这个值，但是使用！去取值为nil的可选类型变量会报错，可以用可选链接和可选绑定选择性执行可选表达式上的操作，如果值为nil，任何操作都不会执行，也不会运行报错；
         可选类型类似于OC中指针的nil值，但是nil只对类（class）有用，而可选类型对所有的类型都有用，并且更安全；
         swift语言定义后缀“？”做为命名类型Optionals的简写，下面的两种声明方法是相等的
         */
        var optionalsIntager1 : Int?//注意：在类型和？之间没有空格
        var optionalsIntager2 : Optional<Int>

        optionalsIntager2 = 24
        optionalsIntager2 = 25
        print(optionalsIntager2!)//输出最后被赋的值：25
        //print(optionalsIntager1!)//会报错，因为没有被赋过值，默认值为nil


        /*
         强制解析：
         当确定可选类型确实包含值之后，可以在可选类型后边用！来获取它的值，这个感叹号表示“我知道这个可选有值，请使用它”，这就是可选类型的强制解析;
         注意：使用！来获取一个不存在的可选值会报错，使用！来进行强制解析之前，一定要确保可选值包含一个非nil的值
         */
        var myStriong: String? = nil
        myStriong = "hello world"
        if myStriong != nil {
            print(myStriong!)
        }else{
            print("字符串为nil")
        }

        /*
         自动解析：
         可以在声明可选变量时使用！替换？，这样可选变量在获取值时就不需要加一个！来获取，它会自动解析
         */
        var myString2 : String!
        myString2 = "Vincent"
        if myString2 != nil {
            print(myString2)
        }else{
            print("myString2的值为nil")
        }

        /*
         可选绑定：
         使用可选绑定来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量；
         可选绑定可以用在if和while语句中来对可选类型的值进行判断，并把值赋给一个常量或者变量
         */
        var myString3 : String?
        myString3 = "hello Vincent"
        if let yourString = myString3 {
            print("yourString的值为：\(yourString)")
        }else{
            print("yourString没有值")
        }







    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

