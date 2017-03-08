//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by 李慧娟 on 17/3/8.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //swift中结尾的";"可省略，但是当有多段代码在一行时，不能省略

        //var用来声明一个变量
        var myString1 = "1";
        myString1 = "hello";
        print(myString1)

        //let用来声明一个常量
        let myString2 = "world";print(myString2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

