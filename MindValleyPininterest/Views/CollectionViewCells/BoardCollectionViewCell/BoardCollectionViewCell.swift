//
//  BoardCollectionViewCell.swift
//  MindValleyPininterest
//
//  Created by Muhammad Usman Tarar on 9/20/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import UIKit
import UTImageLoader

class BoardCollectionViewCell: BaseCollectionViewCell<BaseClass> {

    @IBOutlet weak var pinImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func updateCell(data: BaseClass?) {
        if let rootModel = data, let urls = rootModel.urls {
            pinImageView.setImage(with: URL(string: urls.regular ?? ""))
        }
    }
}
