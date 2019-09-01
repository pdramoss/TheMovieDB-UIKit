//
//  MockMovieListView.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieListView: MovieListViewProtocol {
    var presenter: MovieListPresenterProtocol!
    
    var movies: [Movie] = []
    var error: String = String()
    
    var showMoviesCalled = false
    var showMessageErrorCalled = false
    
    func showMovies(with movies: [Movie]) {
        self.movies = movies
        showMoviesCalled = true
    }
    
    func showMessageError(error: String) {
        self.error = error
        showMessageErrorCalled = true
    }
}
