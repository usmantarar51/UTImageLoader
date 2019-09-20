//
//	User.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

class User: NSObject, Mappable {
    var id: String?
    var links: Link?
    var name: String?
    var profileImage: ProfileImage?
    var username: String?

    class func newInstance(map: Map) -> Mappable? {
        return User()
    }

    required init?(map: Map) {}
    private override init() {}

    func mapping(map: Map) {
        id <- map["id"]
        links <- map["links"]
        name <- map["name"]
        profileImage <- map["profile_image"]
        username <- map["username"]
    }
}
