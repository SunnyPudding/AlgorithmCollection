//
//  Fibonacci.swift
//  AlgorithmCollectionStudy
//
//  Created by SunnySui on 2019/6/11.
//  Copyright © 2019 IOS_Sunny_Sui. All rights reserved.
//

import Foundation

class Fibonacci {
//    func recursion(n:Int)->Int {
//        let section = n
//        if section == 1 || section == 2 {
//           return 1
//        }else {
//         let backSection = recursion(n:(section - 1)) + recursion(n: (section - 2))
//        return backSection
//        }
//    }
    //improve recursion
    func recursion(n:Int)->Int {
        let section = n
        guard section == 1 || section == 2 else {
            let backSection = recursion(n:(section - 1)) + recursion(n: (section - 2))
            return backSection
        }
        return 1
    }

}
