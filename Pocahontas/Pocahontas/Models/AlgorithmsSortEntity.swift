//
//  AlgorithmsSortEntity.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/7/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class AlgorithmsSortEntity: AlgorithmsTitleProtocol {
    var title: String
    
    var titleSort: String {
        get {
            return title.self
        }
    }
    init(title: String) {
        self.title = title
    }
}
