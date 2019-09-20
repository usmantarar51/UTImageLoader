//
//  AppDelegate.swift
//  MindValleyPininterest
//
//  Created by Muhammad Usman Tarar on 9/20/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import UIKit

class BaseCollectionViewCell<T>: UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateCell(data: T?) {
        preconditionFailure("You have to override updateCell")
    }
}
