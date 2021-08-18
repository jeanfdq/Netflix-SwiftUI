//
//  Helper.swift
//  Netflix
//
//  Created by Jean Paul Borges Manzini on 17/08/21.
//

import Foundation

func movieMock() -> Movie {
    return moviesListMock().shuffled()[0]
}

func moviesListMock() -> [Movie] {
    return [ Movie(id: UUID().uuidString, name: "Lucifer", thumbnailURL: URL(string: "https://br.web.img2.acsta.net/c_310_420/pictures/19/05/16/15/02/4273230.jpg")!, categories: ["Dystopian", "Suspenseful", "Exciting"]),
             Movie(id: UUID().uuidString, name: "Friends", thumbnailURL: URL(string: "https://br.web.img2.acsta.net/c_310_420/pictures/19/12/20/21/27/3055482.jpg")!, categories: ["Dystopian", "Suspenseful", "Exciting"]),
             Movie(id: UUID().uuidString, name: "Capitão América", thumbnailURL: URL(string: "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/34/62/19874544.jpg")!, categories: ["Dystopian", "Suspenseful", "Exciting"]),
             Movie(id: UUID().uuidString, name: "Vingadores", thumbnailURL: URL(string: "https://br.web.img3.acsta.net/c_310_420/pictures/18/03/16/15/08/2019826.jpg")!, categories: ["Dystopian", "Suspenseful", "Exciting"]),
             Movie(id: UUID().uuidString, name: "Tubarão", thumbnailURL: URL(string: "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/37/75/20093768.jpg")!, categories: ["Dystopian", "Suspenseful", "Exciting"]),
             Movie(id: UUID().uuidString, name: "A Freira", thumbnailURL: URL(string: "https://br.web.img3.acsta.net/c_310_420/pictures/18/07/18/21/53/1348208.jpg")!, categories: ["Dystopian", "Suspenseful", "Exciting"])]
}
