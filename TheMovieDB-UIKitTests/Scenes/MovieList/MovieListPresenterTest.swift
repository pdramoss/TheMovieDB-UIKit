//
//  MovieListPresenterTest.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MovieListPresenterTest: XCTestCase {

    var sut: MovieListPresenter?
    var mockView: MockMovieListView?
    var mockInteractor: MockMovieListInteractor?
    var mockRouter: MockMovieListRouter?
    
    override func setUp() {
        sut = MovieListPresenter()
        mockView = MockMovieListView()
        mockInteractor = MockMovieListInteractor()
        mockRouter = MockMovieListRouter()
        mockInteractor?.output = sut
        sut?.view = mockView
        sut?.interactor = mockInteractor
        sut?.router = mockRouter
        super.setUp()
    }

    override func tearDown() {
        sut = nil
        mockView = nil
        mockInteractor = nil
        mockRouter = nil
        super.tearDown()
    }

    func testExample() {
        sut?.viewDidLoad()
        XCTAssertTrue(mockInteractor!.getMovieListCalled)
    }
    
    func testExample1() {
        sut?.movieListDidFetch(movies: popularInformation.results)
        XCTAssertTrue(mockView!.showMoviesCalled)
    }
    
    func testExample2() {
        sut?.failedGetMovieList(error: NetworkResponse.noData.rawValue)
        XCTAssertTrue(mockView!.showMessageErrorCalled)
        XCTAssertTrue(mockRouter!.showAlertCalled)
    }

}
