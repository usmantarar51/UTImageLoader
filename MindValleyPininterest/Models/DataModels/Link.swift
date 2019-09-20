//
//	Link.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

class Link: NSObject, Mappable {
    var photos: String?
    var _self: String?
    var download: String?
    var html: String?
    var likes: String?

    class func newInstance(map: Map) -> Mappable? {
        return Link()
    }

    required init?(map: Map) {}
    private override init() {}

    func mapping(map: Map) {
        photos <- map["photos"]
        _self <- map["self"]
        download <- map["download"]
        html <- map["html"]
        likes <- map["likes"]
    }
}
