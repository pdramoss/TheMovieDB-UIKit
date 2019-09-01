//
//  MockMovieListInteractor.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieListInteractor: MovieListInteractorProtocol {
    
    var output: MovieListInteractorOutputProtocol?
    var networkManager: NetworkManagerProtocol!
    var getMovieListCalled = false
    
    func getMovieList(page: Int) {
        getMovieListCalled = true
    }
}
