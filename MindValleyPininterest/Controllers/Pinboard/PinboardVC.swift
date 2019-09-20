//
//  HomeVC.swift
//  MindValleyPininterest
//
//  Created by Muhammad Usman Tarar on 9/20/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import SwiftyJSON
import UIKit

class PinboardVC: UIViewController { // Generalization of task controller
    // MARK: IBOutlet
    
    @IBOutlet var collectionView: UICollectionView!
    
    // MARK: Properties
    
    internal var content = [BaseRowModel<BaseClass>]() // Signle array containg data for collectionView internal so can be protect while accessable to child class
    var refresher: UIRefreshControl!
    
    // MARK: LifeCycle of controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionViewCell()
        loadData()
        addRefreshControl()
    }
    
    // MARK: Utility functions
    
    @objc func loadData() {
        if let rowModels = BaseClass().generateRowModelsFrom() {
            content.removeAll()
            content.append(contentsOf: rowModels)
            stopRefresher()
            collectionView.reloadData()
        }
    }
    
    func addRefreshControl() {
        refresher = UIRefreshControl()
        collectionView!.alwaysBounceVertical = true
        refresher.tintColor = UIColor.red
        refresher.addTarget(self, action: #selector(loadData), for: .valueChanged)
        collectionView.addSubview(refresher)
    }
    
    func stopRefresher() {
        DispatchQueue.main.async {
            self.refresher.endRefreshing()
        }
    }
    
    func registerCollectionViewCell() {
        collectionView.register(UINib(nibName: "BoardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BoardCollectionViewCell")
    }
}

// MARK: - UICollectionViewDataSource

extension PinboardVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return content.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = content[indexPath.row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: data.rowCellIdentifier, for: indexPath) as? BaseCollectionViewCell<BaseClass> else { return UICollectionViewCell() }
        
        cell.updateCell(data: data.rowValue)
        
        return cell
    }
}

extension PinboardVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width / 2) - 10
        let hegiht = view.frame.width / 2
        return CGSize(width: width, height: hegiht)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
}
