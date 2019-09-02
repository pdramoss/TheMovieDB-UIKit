//
//  MockMovieMovieInteractor.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieDetailInteractor: MovieDetailInteractorProtocol {
    
    var output: MovieDetailInteractorOutputProtocol?
    var networkManager: NetworkManagerProtocol!
    
    var getMovieInformationCalled = false
    var getMovieImageCalled = false
    
    func getMovieInformation(id: Int) {
        getMovieInformationCalled = true
    }
    
    func getMovieImage(path: String) {
        getMovieImageCalled = false
    }
    

}
