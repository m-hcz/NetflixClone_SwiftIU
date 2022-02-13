//
//  HomeView.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import SwiftUI

struct HomeView: View {
	
	var vm = HomeVM()
	
	let screen = UIScreen.main.bounds
	
	var body: some View {
		ZStack {
			Color.black.edgesIgnoringSafeArea(.all)
			
			ScrollView(showsIndicators: false) {
				LazyVStack {
					
					TopRowButtons()
					
					
					
					TopMoviePreview(movie: exampleMovie2)
						.frame(width: screen.width)
						.padding(.top, -150)
						.zIndex(-1)
					
					
					ForEach(vm.allCategories, id: \.self) { category in
						VStack {
							HStack {
								Text(category)
									.font(.title3)
									.bold()
								Spacer()
							} // h
							ScrollView(.horizontal, showsIndicators: false) {
								LazyHStack{
									ForEach(vm.getMovie(forCar: category)) { movie in
										StandardMovieView(movie: movie)
											.frame(width: 100, height: 200)
											.padding(.horizontal, 20)
									} // loop
								} // lazyh
							} // loop
						} // v
					} // loop
				} // lazyv
			} // scrv
		} // z
		.foregroundColor(.white)
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}

struct TopRowButtons: View {
	var body: some View {
		HStack {
			Button(action: {
				// action
			}, label: {
				Image("netflix_logo")
					.resizable()
					.scaledToFit()
					.frame(width: 50)
			}) // but
				.buttonStyle(PlainButtonStyle())
			
			Spacer()
			
			Button(action: {
				// action
			}, label: {
				Text("TV Shows")
			}) // but
				.buttonStyle(PlainButtonStyle())
			
			Spacer()
			Button(action: {
				// action
			}, label: {
				Text("Movies")
			}) // but
				.buttonStyle(PlainButtonStyle())
			
			Spacer()
			Button(action: {
				// action
			}, label: {
				Text("My List")
			}) // but
				.buttonStyle(PlainButtonStyle())
			
		} // h
		.padding(.leading, 10)
		.padding(.trailing, 30)
	}
}
