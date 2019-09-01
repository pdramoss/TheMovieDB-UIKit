//
//  MockMovieListOutputInteractor.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieListInteractorOutput: MovieListInteractorOutputProtocol {
    var movies: [PreviewMovie] = []
    var error: String = String()
    var movieListDidFetchCalled = false
    var failedGetMovieListCalled = false
    
    func movieListDidFetch(movies: [PreviewMovie]) {
        self.movies = movies
        movieListDidFetchCalled = true
    }
    
    func failedGetMovieList(error: String) {
        self.error = error
        failedGetMovieListCalled = true
    }
}
