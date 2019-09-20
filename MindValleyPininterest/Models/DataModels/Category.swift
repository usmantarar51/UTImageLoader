//
//	Category.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Category : NSObject, Mappable {

	var id : Int?
	var links : Link?
	var photoCount : Int?
	var title : String?


	class func newInstance(map: Map) -> Mappable?{
		return Category()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		id <- map["id"]
		links <- map["links"]
		photoCount <- map["photo_count"]
		title <- map["title"]
		
	}

}
