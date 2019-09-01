//
//  MovieListInteractorTest.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MovieListInteractorTest: XCTestCase {

    var sut: MovieListInteractor?
    var mockOutput: MockMovieListInteractorOutput?
    
    override func setUp() {
        sut = MovieListInteractor()
        mockOutput = MockMovieListInteractorOutput()
        sut?.networkManager = MockNetworkManager()
        sut?.output = mockOutput
        super.setUp()
    }

    override func tearDown() {
        sut = nil
        mockOutput = nil
        super.tearDown()
    }

    func testExample() {
        sut?.getMovieList(page: 1)
        XCTAssertTrue(mockOutput!.movieListDidFetchCalled)
        XCTAssertEqual(mockOutput!.error, String())
    }
    
    func testExampleError() {
        sut?.getMovieList(page: 0)
        XCTAssertTrue(mockOutput!.failedGetMovieListCalled)
        XCTAssertEqual(mockOutput!.error, NetworkResponse.noData.rawValue)
    }

}
