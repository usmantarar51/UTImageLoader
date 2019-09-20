//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

class BaseClass: NSObject, Mappable {
    var categories: [Category]?
    var color: String?
    var createdAt: String?
    var currentUserCollections: [AnyObject]?
    var height: Int?
    var id: String?
    var likedByUser: Bool?
    var likes: Int?
    var links: Link?
    var urls: Url?
    var user: User?
    var width: Int?

    class func newInstance(map: Map) -> Mappable? {
        return BaseClass()
    }

    required init?(map: Map) {}
    override init() {}

    func mapping(map: Map) {
        categories <- map["categories"]
        color <- map["color"]
        createdAt <- map["created_at"]
        currentUserCollections <- map["current_user_collections"]
        height <- map["height"]
        id <- map["id"]
        likedByUser <- map["liked_by_user"]
        likes <- map["likes"]
        links <- map["links"]
        urls <- map["urls"]
        user <- map["user"]
        width <- map["width"]
    }

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
    func generateRowModelsFrom() -> [BaseRowModel<BaseClass>]? {
        
        if let rootClassArray = self.loadJson(fileName: "data") {
            var rowModels: [BaseRowModel<BaseClass>] = []
            for rootClass in rootClassArray {
                let model = BaseRowModel<BaseClass>()
                model.rowCellIdentifier = "BoardCollectionViewCell"
                model.rowValue = rootClass
                rowModels.append(model)
            }
            return rowModels
        } else {
            return []
        }
    }
}
