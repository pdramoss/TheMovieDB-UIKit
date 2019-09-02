//
//  MockMovieDetailView.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieDetailView: MovieDetailViewProtocol {
    
    var presenter: MovieDetailPresenterProtocol!
    
    var displayMovieDetailCalled = false
    var displayImageCalled = false
    
    var movie: FullMovie?
    var image: UIImage?
    
    func displayMovieDetail(_ movie: FullMovie) {
        self.movie = movie
        displayMovieDetailCalled = true
    }
    
    func displayImage(_ image: UIImage) {
        self.image = image
        displayImageCalled = true
    }
}
