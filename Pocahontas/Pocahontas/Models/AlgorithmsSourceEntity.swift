//
//  AlgorithmsSourceEntity.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/7/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class AlgorithmsSourceEntity {
    
    var countOfAlgorithmsType: Int {
        return algorithmType.count
    }
    var algorithmType: [String] {
        return ["Insert", "Selection", "Bubble"]
    }
    func getValueInSourceEntity(item: Int) -> String {
        return algorithmType[item]
    }
    
    var algorithmsTypeSort = [
        SortTypeEntity(title: "Insert", sortType: .Insert ),
        SortTypeEntity( title: "Selection", sortType: .Selection),
        SortTypeEntity(title: "Bubble", sortType: .Bubble)
    ]
    
    subscript(index: Int) -> SortTypeEntity {
        get {
            return algorithmsTypeSort[index]
        }
    }
}
