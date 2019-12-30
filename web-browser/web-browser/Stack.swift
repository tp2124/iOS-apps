//
//  Stack.swift
//  web-browser
//
//  Created by Travis Primm on 12/29/19.
//  Copyright © 2019 Travis Primm. All rights reserved.
//

import Foundation

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    func peek() -> Element? {
        guard let top = items.last else { return nil }
        return top
    }
    
    func isEmpty() -> Bool {
        return items.count == 0
    }
}
