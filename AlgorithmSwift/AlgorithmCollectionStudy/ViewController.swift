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
        let oneTree = TreeNode(20)
        oneTree.left = TreeNode(10)
        oneTree.right = TreeNode(8)
        oneTree.left?.left = TreeNode(5)
        oneTree.left?.right = TreeNode(3)
        oneTree.right?.left = TreeNode(2)
        oneTree.right?.right = TreeNode(1)
//        let startTime1 = CFAbsoluteTimeGetCurrent()
//        print(levelOrder(oneTree))
//        let endTime1 = CFAbsoluteTimeGetCurrent()
//        let diff1:Double = (endTime1 - startTime1) * 1000
        //        print(" time: " + String(diff1))

        
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

//    func testArray(testArray:Array<Any>) {
//       var popLast = testArray
//        for var item in popLast {
//            popLast.popLast()
//            print(popLast)
//        }
//
//    }
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        guard let root = root else{return [[Int]]()}
//        var lists = [[Int]]()
//        var q = [TreeNode]()
//        q.append(root)
//        while !q.isEmpty {
//            let size = q.count
//            var results = [Int]()
//            for _ in 0..<size {
//            let temp = q.removeFirst()
//              results.append(temp.val)
//                if let left = temp.left {
//                    q.append(left)
//                }
//                if let right = temp.right{
//                    q.append(right)
//                }
//            }
//            lists.append(results)
//        }
//        return lists
//    }
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        guard let root = root else{return [[Int]]()}
//        var results = [[Int]]()
//        var q = [TreeNode]()
//        q.append(root)
//        while !q.isEmpty {
//            results.append(q.map{ $0.val})
//
//            q = q.reduce([]) { l, t in
//                l + [t.left, t.right]
//                }.compactMap({$0})
//        }
//        return results
//    }

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

