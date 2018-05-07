//
//  SortViewCell.swift
//  Pocahontas
//
//  Created by Alina Zaitseva on 5/7/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import UIKit

class SortViewCell: UITableViewCell {
    @IBOutlet weak var sortViewLabel: UILabel!
}

extension SortViewCell: ConfigurableCellProtocol {
    func configure(with model: AlgorithmsSortEntity) {
        sortViewLabel.text = model.titleOfAlgorithm
    }
}
