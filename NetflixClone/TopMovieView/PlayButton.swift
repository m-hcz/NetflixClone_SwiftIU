//
//  PlayButton.swift
//  NetflixClone
//
//  Created by M H on 09/01/2022.
//

import SwiftUI

struct PlayButton: View {
	
	var text: String
	var imageName: String
	var bgColor: Color = Color.white
	
	
	var action: () -> Void
	
    var body: some View {
		Button(action: {
			action()
		}, label: {
			HStack {
				Spacer()
				
				Image(systemName: imageName)
					.font(.headline)
				
				Text(text)
					.bold()
					.font(.system(size: 16))
				
				Spacer()
			} // h
			.padding(.vertical, 6)
			.foregroundColor(bgColor == .white ? .black : .white)
			.background(bgColor)
			.cornerRadius(3)
		}) // but
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			Color.black.ignoresSafeArea()
			PlayButton(text: "Play", imageName: "play.fill") {
				print("tapped")
			}
		}
    }
}
