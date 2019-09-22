//
//  BaseclassLoader.swift
//  MindValleyPininterest
//
//  Created by Muhammad Usman Tarar on 9/22/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import ObjectMapper
import UIKit

class BaseclassLoader: NSObject {
    // MARK: - Methods

    private func loadJson(fileName: String) -> [BaseClass]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]]
                let jsonArray = Mapper<BaseClass>().mapArray(JSONArray: jsonDictionary ?? [[:]])
                return jsonArray
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }

    /// - Method to generate BaserowModels
    func generateRowModels(completion: (_ result: [BaseRowModel<BaseClass>]?) -> ()) {
        if let rootClassArray = self.loadJson(fileName: "data") {
            var rowModels: [BaseRowModel<BaseClass>] = []
            for rootClass in rootClassArray {
                let model = BaseRowModel<BaseClass>()
                model.rowCellIdentifier = "BoardCollectionViewCell"
                model.rowValue = rootClass
                rowModels.append(model)
            }
            return completion(rowModels)
        } else {
            return completion(nil)
        }
    }
}
