//
//  ViewController.swift
//  Swift12-数组
//
//  Created by 李慧娟 on 17/3/24.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /********************Swift数组*******************
         swift数组使用有序列表存储同一类型的多个值，相同的值可以多次出现在数组的不同位置中；
         swift数组会强制检测元素的类型，如果类型不同则会报错；
         swift数组应该遵循像Array<Element>，其中Element是这个数组中唯一允许存在的数据类型；
         如果创建一个数组变量，则创建的集合可以修改，这意味着在创建数组后，可以通过添加、删除、修改的方式改变数组中的项目；
         如果创建一个数组常量，数据就不可更改，并且数组的大小和内容都不可更改
         */

        /*
         1.创建数组：可以使用构造语法来创建一个由特定数据类型构成的数组
         */
        let intArr1 = [Int](repeating: 10, count: 3)//创建一个类型为Int,数量为3，初始值为10的空数组
        print(intArr1)//输出[10, 10, 10]
        var intArr2: [Int] = [10, 20, 30]//也可以通过这种方法创建
        print(intArr2)

        /*
         2.访问数组：根据数组的索引来访问数组中的元素
         */
        let intNum = intArr1[0]
        print(intNum)

        /*
         3.修改数组：
         可以通过append()方法或者赋值运算符+=在数组末尾处添加元素；
         也可以通过索引修改数组元素的值；
         */
        intArr2.append(40)
        intArr2 += [50]
        print(intArr2)//在末位追加元素

        intArr2[3] = 100
        print(intArr2)//通过索引修改数组变量

        /*
         4.遍历数组：可以通过使用for—in循环来遍历数组中的所有元素
         */
        for intNumber in intArr2 {
            print(intNumber)
        }

        //如果我们同时需要每个数据项的值和索引项，可以使用String的enumerate()方法来进行数组遍历
        for (index, item) in intArr2.enumerated() {
            print("在\(index)的值为\(item)")
        }

        /*
         5.合并数组：可以使用操作符(+)来合并已存在的相同类型数组，新数组的数据类型将会从两个数组的数据类型中推断
         */
        let intArr3 = intArr1 + intArr2
        print(intArr3)

        /*
         6.count属性：使用count属性来计算数组元素个数
         */
        let countNum = intArr3.count
        print(countNum)

        /*
         7.isEmpty属性：通过只读属性isEmpty来判断数组中是否为空，返回bool值
         */
        if !intArr3.isEmpty {
            print("intArr3不为空")
        }






    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

