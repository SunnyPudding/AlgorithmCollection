//
//  MyCircularQueue.swift
//  AlgorithmCollectionStudy
//
//  Created by SunnySui on 2019/6/3.
//  Copyright © 2019 IOS_Sunny_Sui. All rights reserved.
//622. Design Circular Queue
//Design your implementation of the circular queue. The circular queue is a linear data structure in which the operations are performed based on FIFO (First In First Out) principle and the last position is connected back to the first position to make a circle. It is also called "Ring Buffer".
//
//One of the benefits of the circular queue is that we can make use of the spaces in front of the queue. In a normal queue, once the queue becomes full, we cannot insert the next element even if there is a space in front of the queue. But using the circular queue, we can use the space to store new values.
//
//Your implementation should support following operations:
//
//MyCircularQueue(k): Constructor, set the size of the queue to be k.
//Front: Get the front item from the queue. If the queue is empty, return -1.
//Rear: Get the last item from the queue. If the queue is empty, return -1.
//enQueue(value): Insert an element into the circular queue. Return true if the operation is successful.
//deQueue(): Delete an element from the circular queue. Return true if the operation is successful.
//isEmpty(): Checks whether the circular queue is empty or not.
//isFull(): Checks whether the circular queue is full or not.
import Foundation
class MyCircularQueue {
    var array :[Int] = []
    var head = 0
    var trail = -1
    var length = 0
    var curLength = 0
    /** Initialize your data structure here. Set the size of the queue to be k. */
    init(_ k: Int) {
       length = k
        for _ in 0...k {
            array.append(0)
        }
    }

    /** Insert an element into the circular queue. Return true if the operation is successful. */
    func enQueue(_ value: Int) -> Bool {
        if curLength == length {
            return false
        }else {
            trail = (trail + 1)
            array[trail] = value
            curLength += 1
            return true
        }
    }

    /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        if curLength == 0 {
            return false
        }else {
            head = (head + 1)%length
            curLength -= 1
            return true
        }
    }

    /** Get the front item from the queue. */
    func Front() -> Int {
        if curLength == 0 {
            return -1
        }else {
            return array[head]
        }
    }

    /** Get the last item from the queue. */
    func Rear() -> Int {
        if curLength == 0 {
            return -1
        }else{
           return  array[trail]
        }
    }

    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        if curLength == 0 {
            return true
        }else {
            return false
        }
    }

    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        if curLength == length {
            return true
        }else{
            return false
        }
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */
