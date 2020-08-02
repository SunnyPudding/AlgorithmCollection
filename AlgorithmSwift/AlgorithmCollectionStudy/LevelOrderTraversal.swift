//
//  LevelOrderTraversal.swift
//  AlgorithmCollectionStudy
//
//  Created by SunnySui on 2019/6/13.
//  Copyright © 2019 IOS_Sunny_Sui. All rights reserved.
//

import Foundation
//
class LevelOrderTraversal {
    //102.Binary Tree level Order Traveral
    //time:0.15630722045898438 ms
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
    //time:0.04520416259765625ms
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else{return [[Int]]()}
        var lists = [[Int]]()
        var q = [TreeNode]()
        q.append(root)
        while !q.isEmpty {
            let size = q.count
            var results = [Int]()
            for _ in 0..<size {
                let temp = q.removeFirst()
                results.append(temp.val)
                if let left = temp.left {
                    q.append(left)
                }
                if let right = temp.right{
                    q.append(right)
                }
            }
            lists.append(results)
        }
        return lists
    }

}
