//
//  BubbleSortModel.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/8/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation
import UIKit

class BubbleSortModel: SortMethodsProtocol  {
    var count: Int {
        get {
            return arrayForSort.count
        }
    }
    var arrayForSort = [2,234,34,-4,6,12,9,11,6]
    private var lastItem = 0
    func getSortAlgorithm() -> (at: Int, to: Int, isFinishAction: Bool) {
        var temporary = 0
        for i in lastItem...arrayForSort.count-1 {
            lastItem = i
            for j in lastItem...arrayForSort.count-1 {
                if arrayForSort[j] < arrayForSort[i] {
                    temporary = arrayForSort[i]
                    arrayForSort[i] = arrayForSort[j]
                    arrayForSort[i] = temporary
                    return (at: i, to: j, isFinishAction: false)
                }
            }
        }
        return (at: 0, to: 0, isFinishAction: true)
    }
}
