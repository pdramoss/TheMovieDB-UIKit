//
//  MockMovieListRouter.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieListRouter: MovieListRouterProtocol {
    
    var viewController: UIViewController?
    var showAlertCalled = false
    var pushToMovieDetailCalled = false
    var error: String = String()
    
    func showAlert(for error: String) {
        self.error = error
        showAlertCalled = true
    }
    
    func pushToMovieDetail(id: Int) {
        pushToMovieDetailCalled = true
    }
    
}
