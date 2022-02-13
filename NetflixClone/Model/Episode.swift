//
//  Episode.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import Foundation

struct Episode: Identifiable {
	var id = UUID().uuidString
	
	var name: String
	var season: Int
	var thumbnailImageUrlString: String
	var description: String
	var length: Int
	
	var tumbnailUrl: URL {
		return URL(string: thumbnailImageUrlString)!
	}
}
