//
//  ViewController.swift
//  AlgorithmCollectionStudy
//
//  Created by SunnySui on 2019/5/18.
//  Copyright © 2019 IOS_Sunny_Sui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var array = ["a","c","b","d"];
        print(array);
        swap(array: &array, p: 1, q: 2);
        print(array);
        
    }
    //数组中的两个值进行交换
    func swap<T> (array:inout[T],p:Int,q:Int){
//        let temp = array[p];
//        chars[p] = array[q];
//        chars[q] = temp;
        assert(p >= 0 && p < array.count)
        assert(q >= 0 && q < array.count)
       (array[p],array[q]) = (array[q],array[p])
    }
    
}

//用数组实现栈
class Stack {
    var stack:[AnyObject]
    var isEmpty:Bool {return stack.isEmpty}
    var peek:AnyObject?{return stack.last}
    init() {
      stack = [AnyObject]()
    }
    func  push (object:AnyObject) {
        stack.append(object)
    }
    func pop() -> AnyObject? {
        guard isEmpty  else {
            return stack.removeLast()
        }
        return nil;
    }

}

