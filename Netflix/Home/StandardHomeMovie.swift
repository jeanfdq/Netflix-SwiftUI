//
//  StandardHomeMovie.swift
//  Netflix
//
//  Created by Jean Paul Borges Manzini on 17/08/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
            .clipped()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: movieMock())
    }
}
