//
//  MockMovieDetailInteractorOutput.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieDetailInteractorOutput: MovieDetailInteractorOutputProtocol {
    
    var movieDetailDidFetchCalled = false
    var failedGetMovieDetailCalled = false
    var movieDetailImageDidFetchCalled = false
    var failedGetMovieDetailImageCalled = false
    var movie: FullMovie?
    var error: String = String()
    var image: UIImage?
    
    func movieDetailDidFetch(movie: FullMovie) {
        self.movie = movie
        movieDetailDidFetchCalled = true
    }
    
    func failedGetMovieDetail(error: String) {
        self.error = error
        failedGetMovieDetailCalled = true
    }
    
    func movieDetailImageDidFetch(image: UIImage) {
        self.image = image
        movieDetailImageDidFetchCalled = true
    }
    
    func failedGetMovieDetailImage(error: String) {
        self.error = error
        failedGetMovieDetailImageCalled = true
    }
}
