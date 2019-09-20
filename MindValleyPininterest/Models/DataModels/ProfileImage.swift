//
//	ProfileImage.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

class ProfileImage: NSObject, Mappable {
    var large: String?
    var medium: String?
    var small: String?

    class func newInstance(map: Map) -> Mappable? {
        return ProfileImage()
    }

    required init?(map: Map) {}
    private override init() {}

    func mapping(map: Map) {
        large <- map["large"]
        medium <- map["medium"]
        small <- map["small"]
    }
}
