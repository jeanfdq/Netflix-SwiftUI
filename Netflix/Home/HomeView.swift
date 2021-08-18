//
//  HomeView.swift
//  Netflix
//
//  Created by Jean Paul Borges Manzini on 17/08/21.
//

import SwiftUI

struct HomeView: View {
    
    var viewModel = HomeViewModel()
    
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                
                LazyVStack {
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        VStack {
                            
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHStack(spacing: 20) {
                                    
                                    ForEach(viewModel.getMovie(forCategory: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                }
            }
            
        }
        .foregroundColor(.white)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
