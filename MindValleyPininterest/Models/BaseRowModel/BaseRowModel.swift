//
//  AppDelegate.swift
//  MindValleyPininterest
//
//  Created by Muhammad Usman Tarar on 9/20/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import UIKit

class BaseRowModel<T>: NSObject {
    // Row Item
    var rowCellIdentifier = ""
    var rowValue: T?
}
