//
//  SortAlgoritms.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/7/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

//insert

//func insertionSort( _ a: [Int]) -> [Int] {
//    guard a.count > 1 else { return a }
//
//    var b = a
//    for i in 1..<b.count {
//        var y = i
//        let temp = b[y]
//        while y > 0 && temp < b[y-1] {
//            b[y] = b[y-1]
//            y -= 1
//        }
//        b[y] = temp
//    }
//
//    return b
//}
//let insert = [ 10, -1, 3, 9, 2, 27]
//insertionSort(insert)
//
////b.Selection
//
//func selectionSort(_ array: [Int]) -> [Int] {
//    guard array.count > 1 else { return array }
//    var a = array
//    for x in 0 ..< a.count - 1 {
//        var lowest = x
//        for y in x + 1 ..< a.count {
//            if a[y] < a[lowest] {
//                lowest = y
//            }
//        }
//        if x != lowest {
//            a.swapAt(x, lowest)
//        }
//    }
//    return a
//}
//
//let selection = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
//selectionSort(selection)
//
////c.Buble
//
//func bubleSort(_ arr: [Int]) -> [Int] {
//    //    var temp = 0
//    for item in arr {
//        if item > arr[item] {
//            //            temp = item
//            arr.swapAt(item, item+1)
//        }
//    }
//    return arr
//}
//
//let buble = [10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
//
//bubleSort(buble)

