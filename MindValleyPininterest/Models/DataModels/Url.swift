//
//	Url.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

class Url: NSObject, Mappable {
    var full: String?
    var raw: String?
    var regular: String?
    var small: String?
    var thumb: String?

    class func newInstance(map: Map) -> Mappable? {
        return Url()
    }

    required init?(map: Map) {}
    private override init() {}

    func mapping(map: Map) {
        full <- map["full"]
        raw <- map["raw"]
        regular <- map["regular"]
        small <- map["small"]
        thumb <- map["thumb"]
    }
}
