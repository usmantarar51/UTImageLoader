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
}
