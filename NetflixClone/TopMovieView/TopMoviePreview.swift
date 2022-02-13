//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
	
	var movie: Movie
	
    var body: some View {
		ZStack {
			KFImage(movie.thumbnailURL)
				.resizable()
				.scaledToFill()
				.clipped()
			
			VStack {
				Spacer()
				
				HStack {
					ForEach(movie.categories, id: \.self) {category in
						HStack {
							Text(category)
								.font(.footnote)
							
							if(movie.categories.count - 1 != movie.categories.firstIndex(of: category)) {
								Image(systemName: "circle.fill")
									.foregroundColor(.blue)
									.font(.system(size: 4))
							} // if
							
						} // h
					} // loop
				} // h
				
				HStack {
					Spacer()
					SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
						// action
					}
					Spacer()
					
					PlayButton(text: "Play", imageName: "play.fill") {
						// action
					}
					.frame(width: 120)
					
					Spacer()
					SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
						// action
					}
					Spacer()
				} // h
				
			} // v
			.background(
				LinearGradient.blackOpacityGradient
							.padding(.top, 200)
			)
		} // z
		.foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
