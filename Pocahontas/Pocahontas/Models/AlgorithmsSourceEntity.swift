//
//  AlgorithmsSourceEntity.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/7/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class AlgorithmsSourceEntity: VisualizeSourceProtocol {
    func getAmountOfValuesInSorceEntity() -> Int {
        return listOfAlgorithmsType.count
    }
    var listOfAlgorithmsType: [String] {
        return ["Insert", "Selection", "Bubble"]
    }
    func getValueInSourceEntity(item: Int) -> String {
        return listOfAlgorithmsType[item]
    }
}
