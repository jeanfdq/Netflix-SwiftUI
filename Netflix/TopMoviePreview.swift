//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by Jean Paul Borges Manzini on 17/08/21.
//

import SwiftUI
import Kingfisher

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
                    
                    ForEach(movie.categories, id:\.self) { category in
                        
                        HStack {
                            Text(category)
                            
                            if !isCategoryLast(cat: category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 4))
                            }
                            
                        }
                    }
                }
                
                Text("Row of Buttons")
            }
            
        }
        .foregroundColor(.white)
        
    }
    
    func isCategoryLast( cat: String) -> Bool {
        
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: movieMock())
    }
}
