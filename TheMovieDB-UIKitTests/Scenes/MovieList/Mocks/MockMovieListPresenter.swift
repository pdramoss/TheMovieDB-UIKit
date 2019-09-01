//
//  MockMovieListPresenter.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieListPresenter: MovieListPresenterProtocol {
    
    var view: MovieListViewProtocol?
    var router: MovieListRouterProtocol!
    var interactor: MovieListInteractorProtocol!
    
    var viewDidLoadCalled = false
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
}
