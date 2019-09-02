//
//  MockMovieDetailRouter.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockMovieDetailRouter: MovieDetailRouterProtocol {
    var viewController: UIViewController?
    
    var showAlertCalled = false
    var error: String = String()
    
    func showAlert(for error: String) {
        self.error = error
        showAlertCalled = true
    }
}
