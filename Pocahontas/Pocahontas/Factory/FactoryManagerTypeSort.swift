//
//  FactoryManagerAlgorithm.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/8/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class FactoryManagerTypeSort {
    func getTypeSort(type: TypeSortEnum) -> SortMethodsProtocol {
        switch type {
        case .Insert:
            return InsertionSortModel()
        case .Selection:
            return SelectionSortModel()
        case .Bubble:
            return BubbleSortModel()
        }
    }
}
