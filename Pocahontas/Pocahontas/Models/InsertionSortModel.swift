//
//  InsertionSortModel.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/8/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation
import UIKit

class InsertionSortModel: SortMethodsProtocol {
    subscript(index: Int) -> Int {
         return arrayForSort[index]
    }
    
    var count: Int {
        get {
            return arrayForSort.count
        }
    }
    var arrayForSort: [Int] = [2,234,34,-4,6,12,9,11,16]
    var lastItem = 0
    func getSortAlgorithm() -> (at: Int, to: Int, isFinishAction: Bool) {
        var temporary = 0
        var j = 0
        for i in lastItem..<arrayForSort.count-1 {
            temporary = arrayForSort[i]
            j = i-1
            while j >= 0 && arrayForSort[j] > temporary {
                arrayForSort.swapAt(j+1, j)
                return(at: j+1, to: j, isFinishAction: false)
            }
        }
        return (at: 0, to: 0, isFinishAction: true)
    }
}
