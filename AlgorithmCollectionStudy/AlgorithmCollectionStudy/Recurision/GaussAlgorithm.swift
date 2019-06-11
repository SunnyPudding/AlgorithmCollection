//
//  GaussAlgorithm.swift
//  AlgorithmCollectionStudy
//
//  Created by SunnySui on 2019/6/11.
//  Copyright © 2019 IOS_Sunny_Sui. All rights reserved.
//

import Foundation
class GaussAlgorithm {
    func recursion(n:Int)->Int {
        let section = n
        guard section == 1 else {
            let backSection = recursion(n:(section - 1)) + section
            return backSection
        }
        return 1
    }
}
