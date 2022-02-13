//
//  StandardMovieView.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardMovieView: View {
	
	var movie: Movie
	
    var body: some View {
		KFImage(movie.thumbnailURL)
			.resizable()
			.scaledToFill()
    }
}

struct StandardMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardMovieView(movie: exampleMovie1)
    }
}
