//
//  MovieDetail.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import SwiftUI

struct MovieDetail: View {
	
	var movie: Movie
	
	let screen = UIScreen.main.bounds
	
	var body: some View {
		ZStack {
			Color.black.edgesIgnoringSafeArea(.all)
			
			VStack {
				HStack {
					Spacer()
					Button(action: {
						
					}, label: {
						Image(systemName: "xmark.circle")
							.font(.system(size: 28))
					}) // but
						.buttonStyle(PlainButtonStyle())
				} // h
				.padding(.horizontal, 22)
				
				
				ScrollView(.vertical, showsIndicators: false) {
					VStack {
						StandardMovieView(movie: movie)
							.frame(width: screen.width / 2.5)
						
						MovieInfoSubHeadline(movie: movie)
						
						if movie.promotionHeadline != nil {
							Text(movie.promotionHeadline!)
								.bold()
								.font(.headline)
						}
						
						PlayButton(text: "Play", imageName: "play.fill", bgColor: .red) {
							// action
						}
						
						// current episode info
						HStack {
							Text(movie.episodeInfoDisplay)
								.bold()
							Spacer()
						} // h
						.padding(.vertical, 4)
						HStack {
							Text(movie.episodeDescriptionDisplay)
								.font(.subheadline)
							Spacer()
						} // h
						
						
						VStack(spacing: 3){
							HStack {
								Text("Cast: \(movie.cast)")
								Spacer()
							}
							HStack {
								Text("Creators: \(movie.creators)")
								Spacer()
							}
						} // v
						.foregroundColor(.gray)
						.font(.caption)
						.padding(.vertical, 10)
						
						
					} // v
					.padding(.horizontal, 10)
				} // scrv
				
				Spacer()
			} // v
			.foregroundColor(.white)
		} // z
	}
}

struct MovieDetail_Previews: PreviewProvider {
	static var previews: some View {
		MovieDetail(movie: exampleMovie6)
	}
}

struct MovieInfoSubHeadline: View {
	
	var movie: Movie
	
	var body: some View {
		HStack(spacing: 20) {
			Image(systemName: "hand.thumbsup.fill")
			
			Text(String(movie.year))
			
			RatingView(rating: movie.rating)
			
			
			Text(movie.numberOfSeasonsDisplay)
		} // h
		.foregroundColor(.gray)
		.padding(.vertical, 6)
	}
}

struct RatingView: View {
	
	var rating: String
	
	var body: some View {
		ZStack {
			Rectangle()
				.foregroundColor(.gray)
			
			Text(rating)
				.foregroundColor(.white)
				.font(.system(size: 12))
				.bold()
		}
		.frame(width: 50, height: 20)
	}
}
