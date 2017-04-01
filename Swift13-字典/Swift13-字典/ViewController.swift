//
//  ViewController.swift
//  Swift13-字典
//
//  Created by 李慧娟 on 17/4/1.
//  Copyright © 2017年 李慧娟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /****************Swift字典***************
         用来存储无序的相同类型的数据的集合，Swift字典会强制检测元素的类型，如果类型不同，将会报错；
         Swift字典中的每个值（value）都关联唯一的键（key），键作为字典中这个值的唯一标识符；
         和数组中的数据项不同，字典中的数据项并没有具体顺序，通常通过标识符键来访问字典中的值；
         Swift字典中的Key没有类型限制，可以是整型或字符串，但是必须是唯一的；
         如果创建一个变量字典，则该字典可以通过添加、删除、更改来操作字典中的值；
         如果创建一个常量字典，则该字典在创建之后不能更改
         */

        /*
         1.创建字典
         */
        var someDic = [Int: String]()//创建一个key为Int型，value为String型的空字典
        someDic = [1: "One", 2: "Two", 3: "Three"];//实例化
        print(someDic)

        /*
         2.访问字典：可以根据字典的key来访问字典中的value值
         */
        let key1:String = someDic[1]!
        print(key1)

        /*
         3.修改字典：
         可以使用updateValue(forKey:)增加或者更新字典的内容，如果key不存在，则添加值，如果存在，则修改key对应的值
         updateValue(forKey:)方法返回optional值
         也可以通过指定的key来修改字典的值
         */
        //updateValue(forKey:)方法修改
        let oldValue = someDic.updateValue("lhj", forKey: 1)
        print(oldValue!)//返回One
        print(someDic)

        //指定的值修改
        someDic[2] = "Vincet"
        print(someDic)

        /*
         4.移除Key-value键值对:
         使用removeValueForKey()方法移除字典中的Key-value键值对，如果key存在，该方法返回移除的值，如果不存在返回nil
         */
        let removeValue1 = someDic.removeValue(forKey: 6)
        print(removeValue1 ?? "默认值")//返回nil的可选类型，不能取其值，会报错

        let removeValue2 = someDic.removeValue(forKey: 3)
        print(removeValue2!)//返回Three

        print(someDic)

        /*
         5.遍历字典：
         通过for in循环来遍历某个字典中的键值对；
         也可以通过enumerate()方法来进行字典遍历，返回的是字典的索引及键值对(key,value)
         */
        for (intKey,stringValue) in someDic {
            print("\(intKey)->\(stringValue)")//2->Vincet
        }

        for (index,stringValue) in someDic.enumerated() {
            print("\(index)******>\(stringValue)")//0******>(2, "Vincet")
        }

        /*
         6.字典转换数组：
         可以通过提取字典中的键值对，并转换为独立的数组
         */
        let dic: [Int: String] = [1001: "lhj", 1002: "lxj", 1003: "lsj"]
        let keyArr = [Int](dic.keys)
        let valueArr = [String](dic.values)
        print(keyArr)
        print(valueArr)

        /*
         7.count属性：使用只读的count属性来计算字典中有多少的键值对
         */
        print("\(dic)含有\(dic.count)个键值对")

        /*
         8.isEmpty属性：通过只读属性isEmpty判断字典是否为空
         */
        if !dic.isEmpty {
            print("dic不为空")
        }

















    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

