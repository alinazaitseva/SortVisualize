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
extension UITableViewCell {
    class var reuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}
