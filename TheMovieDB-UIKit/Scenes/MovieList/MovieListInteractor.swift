//
//  MovieListInteractor.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation

protocol MovieListInteractorProtocol: class {
    var output: MovieListOutputInteractorProtocol? { get set }
    var networkManager: NetworkManagerProtocol! { get set }
    
    func getMovieList()
}

class MovieListInteractor: MovieListInteractorProtocol {
    var output: MovieListOutputInteractorProtocol?
    var networkManager: NetworkManagerProtocol! = NetworkManager()
    
    func getMovieList() {
        networkManager.getPopular(page: 1) { (result) in
            switch result {
            case .success(let movieList):
                self.output?.movieListDidFetch(movies: movieList.results)
            case .failure(let error):
                self.output?.failedGetMovieList(error: error)
            }
        }
    }
}
