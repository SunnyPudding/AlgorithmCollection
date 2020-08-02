//
//  Solution.swift
//  AlgorithmCollectionStudy
//
//  Created by SunnySui on 2019/6/10.
//  Copyright © 2019 IOS_Sunny_Sui. All rights reserved.
//

/**Definition for a binary tree node.*/
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
  }

import Foundation
class Solution {
    //144. Binary Tree Preorder Traversal
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else{return [Int]()}
        var result = [Int]()
//        var stack = [TreeNode]()
//        var temp:TreeNode? = root

        return result
    }
    //94. Binary Tree Inorder Traversal
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else{return [Int]()}
        var result = [Int]()
        var stack = [TreeNode]()
        var temp:TreeNode? = root
        while temp != nil || !stack.isEmpty {
            if temp != nil {
                stack.append(temp!)
                temp = temp!.left
            }else{
               temp = stack.popLast()
                result.append(temp!.val)
                temp = temp!.right
            }
        }

        return result
    }
//  145.  Binary Tree Postorder Traversal
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else{return [Int]()}
        var result = [Int]()
//        var stack = [TreeNode]()
//        var temp:TreeNode? = root
        return result
    }

}
