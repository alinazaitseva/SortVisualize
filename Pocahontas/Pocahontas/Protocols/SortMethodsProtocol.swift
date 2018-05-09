//
//  SortMethodsProtocol.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/8/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

protocol SortMethodsProtocol {
    var arrayForSort: [Int] { get set }
    var count: Int { get }
    func getSortAlgorithm() -> (at: Int, to: Int, isFinishAction: Bool)
    subscript(index: Int) -> Int { get }
}
