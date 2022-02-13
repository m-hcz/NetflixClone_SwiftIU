//
//  HomeVM.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import Foundation

class HomeVM: ObservableObject {
	
	// string = category
	@Published var movies: [String: [Movie]] = [:]
	
	public var allCategories: [String] {
		movies.keys.map({String($0)})
	}
	
	public func getMovie(forCar cat: String) -> [Movie] {
		return movies[cat] ?? []
	}
	
	
	init(){
		setupMovies()
	}
	
	
	func setupMovies() {
		movies["Trending Now"] = exampleMovies
		movies["Stand-UP Commedy"] = exampleMovies.shuffled()
		movies["New Reselases"] = exampleMovies.shuffled()
		movies["Watch It Again"] = exampleMovies.shuffled()
		movies["Sci-Fi Movies"] = exampleMovies.shuffled()
	} // f
}
