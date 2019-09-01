//
//  MovieDetailInteractor.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation

protocol MovieDetailInteractorProtocol: class {
    var output: MovieDetailInteractorOutputProtocol? { get set }
    var networkManager: NetworkManagerProtocol! { get set }
    
    func getMovieInformation(id: Int)
}

class MovieDetailInteractor: MovieDetailInteractorProtocol {
    var output: MovieDetailInteractorOutputProtocol?
    var networkManager: NetworkManagerProtocol! = NetworkManager()
    
    func getMovieInformation(id: Int) {
        networkManager.getMovie(id: id) { (result) in
            switch result {
            case .success(let movie):
                self.output?.movieDetailDidFetch(movie: movie)
            case .failure(let error):
                self.output?.failedGetMovieDetail(error: error)
            }
        }
    }
}
