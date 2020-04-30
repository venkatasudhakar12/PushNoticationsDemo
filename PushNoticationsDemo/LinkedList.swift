//
//  LinkedList.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 13/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import Foundation

public class Node<T>{
    var value:T
    var next:Node?
    weak var prevous:Node?
    public init(value:T){
        self.value = value
    }
}

class LinkedList<T>{
  
    private var head:Node<T>?
    
    var isEmpty:Bool{
        head == nil
    }
    
    var first:Node<T>?{
        head
    }
    
    var last:Node<T>?{
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    var count:Int{
        guard var node = head else { return 0 }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    func append(value:T){
        let newNode = Node(value: value)
        if let lastNode = last{
            newNode.prevous = lastNode
            lastNode.next = newNode
        }else{
            head = newNode
        }
    }
}


