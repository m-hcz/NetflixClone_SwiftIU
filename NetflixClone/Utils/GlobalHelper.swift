//
//  GlobalHelper.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian" , "Exciting", "Suspenseful" , "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 1, defaultEpisodeInfo: currnetEpisodeInfo1, creators: "Julie Kavner, Yeardley Smith", cast: "Dan Castellaneta, Nancy Cartwright, Hank Azaria")
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Dystopian" , "Exciting", "Suspenseful" , "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: currnetEpisodeInfo1, creators: "Julie Kavner, Yeardley Smith", cast: "Dan Castellaneta, Nancy Cartwright, Hank Azaria", promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian" , "Exciting", "Suspenseful" , "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 3, defaultEpisodeInfo: currnetEpisodeInfo1, creators: "Julie Kavner, Yeardley Smith", cast: "Dan Castellaneta, Nancy Cartwright, Hank Azaria")
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian" , "Exciting", "Suspenseful" , "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 4, defaultEpisodeInfo: currnetEpisodeInfo1, creators: "Julie Kavner, Yeardley Smith", cast: "Dan Castellaneta, Nancy Cartwright, Hank Azaria", promotionHeadline: "New episodes comming soon")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian" , "Exciting", "Suspenseful" , "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 5, defaultEpisodeInfo: currnetEpisodeInfo1, creators: "Julie Kavner, Yeardley Smith", cast: "Dan Castellaneta, Nancy Cartwright, Hank Azaria")
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian" , "Exciting", "Suspenseful" , "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, defaultEpisodeInfo: currnetEpisodeInfo1, creators: "Julie Kavner, Yeardley Smith", cast: "Dan Castellaneta, Nancy Cartwright, Hank Azaria", promotionHeadline: "Watch Season 6 Now")


let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

let currnetEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Burns, Baby Burns", description: "The Simpsons give a lift to a man called Larry who is hitching to Springfield after discovering that he is Burns's long-lost son. Burns is initially happy to see him but tires of Larry's uncouth slobbishness and Larry is befriended by Homer. He decides that Larry might win back his father's love by means of a fake kidnapping. The plan is exposed but Burns forgives Larry, who then goes home to his wife and children.", season: 2, episode: 1)


extension LinearGradient {
	static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0) , Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
