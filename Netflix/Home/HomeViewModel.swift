//
//  HomeViewModel.swift
//  Netflix
//
//  Created by Jean Paul Borges Manzini on 17/08/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var movies = [String: [Movie]]()
    
    var allCategories: [String] {
        movies.keys.map{String($0)}
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending now"] = moviesListMock()
        movies["Stand-Up Comedy"] = moviesListMock().shuffled()
        movies["My List"] = moviesListMock().shuffled()
        movies["Championships"] = moviesListMock().shuffled()
    }
    
    func getMovie(forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
}
