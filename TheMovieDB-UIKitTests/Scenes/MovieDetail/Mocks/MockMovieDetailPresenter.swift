//
//  MockMovieDetailPresenter.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieDetailPresenter: MovieDetailPresenterProtocol {
    
    var id: Int?
    var view: MovieDetailViewProtocol?
    var router: MovieDetailRouterProtocol!
    var interactor: MovieDetailInteractorProtocol!
    
    var viewDidLoadCalled = false
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
}
